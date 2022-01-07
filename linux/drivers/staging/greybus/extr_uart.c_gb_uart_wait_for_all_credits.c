
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_tty {scalar_t__ credits; TYPE_1__* gbphy_dev; int credits_complete; } ;
struct TYPE_2__ {int dev; } ;


 int ETIMEDOUT ;
 int GB_UART_CREDIT_WAIT_TIMEOUT_MSEC ;
 scalar_t__ GB_UART_FIRMWARE_CREDITS ;
 int dev_err (int *,char*) ;
 int msecs_to_jiffies (int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int gb_uart_wait_for_all_credits(struct gb_tty *gb_tty)
{
 int ret;

 if (gb_tty->credits == GB_UART_FIRMWARE_CREDITS)
  return 0;

 ret = wait_for_completion_timeout(&gb_tty->credits_complete,
   msecs_to_jiffies(GB_UART_CREDIT_WAIT_TIMEOUT_MSEC));
 if (!ret) {
  dev_err(&gb_tty->gbphy_dev->dev,
   "time out waiting for credits\n");
  return -ETIMEDOUT;
 }

 return 0;
}
