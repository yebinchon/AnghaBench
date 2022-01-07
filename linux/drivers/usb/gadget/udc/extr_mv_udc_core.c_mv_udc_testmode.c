
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct mv_udc {TYPE_1__* dev; scalar_t__ test_mode; } ;
struct TYPE_2__ {int dev; } ;


 int EP_DIR_IN ;
 scalar_t__ TEST_FORCE_EN ;
 int dev_err (int *,char*,scalar_t__) ;
 int ep0_stall (struct mv_udc*) ;
 scalar_t__ udc_prime_status (struct mv_udc*,int ,int ,int) ;

__attribute__((used)) static void mv_udc_testmode(struct mv_udc *udc, u16 index)
{
 if (index <= TEST_FORCE_EN) {
  udc->test_mode = index;
  if (udc_prime_status(udc, EP_DIR_IN, 0, 1))
   ep0_stall(udc);
 } else
  dev_err(&udc->dev->dev,
   "This test mode(%d) is not supported\n", index);
}
