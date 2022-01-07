
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {struct acm* driver_data; } ;
struct serial_struct {int close_delay; int closing_wait; int baud_base; int xmit_fifo_size; } ;
struct TYPE_3__ {int close_delay; int closing_wait; } ;
struct TYPE_4__ {int dwDTERate; } ;
struct acm {TYPE_1__ port; TYPE_2__ line; int writesize; } ;


 int ASYNC_CLOSING_WAIT_NONE ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int get_serial_info(struct tty_struct *tty, struct serial_struct *ss)
{
 struct acm *acm = tty->driver_data;

 ss->xmit_fifo_size = acm->writesize;
 ss->baud_base = le32_to_cpu(acm->line.dwDTERate);
 ss->close_delay = acm->port.close_delay / 10;
 ss->closing_wait = acm->port.closing_wait == ASYNC_CLOSING_WAIT_NONE ?
    ASYNC_CLOSING_WAIT_NONE :
    acm->port.closing_wait / 10;
 return 0;
}
