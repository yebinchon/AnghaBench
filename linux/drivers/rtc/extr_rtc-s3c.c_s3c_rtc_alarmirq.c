
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c_rtc {TYPE_1__* data; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* irq_handler ) (struct s3c_rtc*,int ) ;} ;


 int IRQ_HANDLED ;
 int S3C2410_INTP_ALM ;
 int stub1 (struct s3c_rtc*,int ) ;

__attribute__((used)) static irqreturn_t s3c_rtc_alarmirq(int irq, void *id)
{
 struct s3c_rtc *info = (struct s3c_rtc *)id;

 if (info->data->irq_handler)
  info->data->irq_handler(info, S3C2410_INTP_ALM);

 return IRQ_HANDLED;
}
