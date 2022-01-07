
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int name; struct cyclades_port* driver_data; } ;
struct serial_struct {int custom_divisor; int baud_base; int closing_wait; int close_delay; int flags; int irq; scalar_t__ port; scalar_t__ line; int type; } ;
struct TYPE_2__ {int closing_wait; int close_delay; int flags; } ;
struct cyclades_port {int custom_divisor; int baud; TYPE_1__ port; scalar_t__ line; struct cyclades_card* card; int type; } ;
struct cyclades_card {int irq; scalar_t__ first_line; } ;


 int ENODEV ;
 struct cyclades_card* cy_card ;
 scalar_t__ serial_paranoia_check (struct cyclades_port*,int ,char*) ;

__attribute__((used)) static int cy_get_serial_info(struct tty_struct *tty,
    struct serial_struct *ss)
{
 struct cyclades_port *info = tty->driver_data;
 struct cyclades_card *cinfo = info->card;

 if (serial_paranoia_check(info, tty->name, "cy_ioctl"))
  return -ENODEV;
 ss->type = info->type;
 ss->line = info->line;
 ss->port = (info->card - cy_card) * 0x100 + info->line -
   cinfo->first_line;
 ss->irq = cinfo->irq;
 ss->flags = info->port.flags;
 ss->close_delay = info->port.close_delay;
 ss->closing_wait = info->port.closing_wait;
 ss->baud_base = info->baud;
 ss->custom_divisor = info->custom_divisor;
 return 0;
}
