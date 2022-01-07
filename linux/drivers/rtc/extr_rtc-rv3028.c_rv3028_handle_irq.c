
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct rv3028_data {TYPE_2__* rtc; int regmap; } ;
typedef int irqreturn_t ;
struct TYPE_5__ {int name; } ;
struct TYPE_8__ {TYPE_1__ attr; } ;
struct TYPE_7__ {int kobj; } ;
struct TYPE_6__ {TYPE_3__ dev; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned long RTC_AF ;
 unsigned long RTC_PF ;
 unsigned long RTC_UF ;
 int RV3028_CTRL2 ;
 int RV3028_CTRL2_AIE ;
 int RV3028_CTRL2_TIE ;
 int RV3028_CTRL2_UIE ;
 int RV3028_STATUS ;
 int RV3028_STATUS_AF ;
 int RV3028_STATUS_EVF ;
 int RV3028_STATUS_PORF ;
 int RV3028_STATUS_TF ;
 int RV3028_STATUS_UF ;
 TYPE_4__ dev_attr_timestamp0 ;
 int dev_warn (TYPE_3__*,char*) ;
 scalar_t__ regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int ) ;
 int rtc_update_irq (TYPE_2__*,int,unsigned long) ;
 int sysfs_notify (int *,int *,int ) ;

__attribute__((used)) static irqreturn_t rv3028_handle_irq(int irq, void *dev_id)
{
 struct rv3028_data *rv3028 = dev_id;
 unsigned long events = 0;
 u32 status = 0, ctrl = 0;

 if (regmap_read(rv3028->regmap, RV3028_STATUS, &status) < 0 ||
    status == 0) {
  return IRQ_NONE;
 }

 if (status & RV3028_STATUS_PORF)
  dev_warn(&rv3028->rtc->dev, "Voltage low, data loss detected.\n");

 if (status & RV3028_STATUS_TF) {
  status |= RV3028_STATUS_TF;
  ctrl |= RV3028_CTRL2_TIE;
  events |= RTC_PF;
 }

 if (status & RV3028_STATUS_AF) {
  status |= RV3028_STATUS_AF;
  ctrl |= RV3028_CTRL2_AIE;
  events |= RTC_AF;
 }

 if (status & RV3028_STATUS_UF) {
  status |= RV3028_STATUS_UF;
  ctrl |= RV3028_CTRL2_UIE;
  events |= RTC_UF;
 }

 if (events) {
  rtc_update_irq(rv3028->rtc, 1, events);
  regmap_update_bits(rv3028->regmap, RV3028_STATUS, status, 0);
  regmap_update_bits(rv3028->regmap, RV3028_CTRL2, ctrl, 0);
 }

 if (status & RV3028_STATUS_EVF) {
  sysfs_notify(&rv3028->rtc->dev.kobj, ((void*)0),
        dev_attr_timestamp0.attr.name);
  dev_warn(&rv3028->rtc->dev, "event detected");
 }

 return IRQ_HANDLED;
}
