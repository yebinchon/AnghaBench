
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct hvcs_struct* driver_data; } ;
struct TYPE_2__ {scalar_t__ count; } ;
struct hvcs_struct {int chars_in_buffer; TYPE_1__ port; } ;


 int HVCS_BUFF_LEN ;

__attribute__((used)) static int hvcs_write_room(struct tty_struct *tty)
{
 struct hvcs_struct *hvcsd = tty->driver_data;

 if (!hvcsd || hvcsd->port.count <= 0)
  return 0;

 return HVCS_BUFF_LEN - hvcsd->chars_in_buffer;
}
