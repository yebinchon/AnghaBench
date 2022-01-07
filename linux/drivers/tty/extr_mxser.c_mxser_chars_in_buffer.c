
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct mxser_port* driver_data; } ;
struct mxser_port {int xmit_cnt; } ;



__attribute__((used)) static int mxser_chars_in_buffer(struct tty_struct *tty)
{
 struct mxser_port *info = tty->driver_data;
 return info->xmit_cnt;
}
