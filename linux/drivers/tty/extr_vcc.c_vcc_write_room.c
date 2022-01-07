
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vcc_port {int chars_in_buffer; } ;
struct tty_struct {int index; } ;


 int ENODEV ;
 int ENXIO ;
 int VCC_BUFF_LEN ;
 int pr_err (char*) ;
 scalar_t__ unlikely (int) ;
 struct vcc_port* vcc_get_ne (int ) ;
 int vcc_put (struct vcc_port*,int) ;

__attribute__((used)) static int vcc_write_room(struct tty_struct *tty)
{
 struct vcc_port *port;
 u64 num;

 if (unlikely(!tty)) {
  pr_err("VCC: write_room: Invalid TTY handle\n");
  return -ENXIO;
 }

 port = vcc_get_ne(tty->index);
 if (unlikely(!port)) {
  pr_err("VCC: write_room: Failed to find VCC port\n");
  return -ENODEV;
 }

 num = VCC_BUFF_LEN - port->chars_in_buffer;

 vcc_put(port, 0);

 return num;
}
