
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct mips_ejtag_fdc_tty_port* driver_data; } ;
struct mips_ejtag_fdc_tty_port {int xmit_cnt; int xmit_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int mips_ejtag_fdc_tty_chars_in_buffer(struct tty_struct *tty)
{
 struct mips_ejtag_fdc_tty_port *dport = tty->driver_data;
 int chars;


 spin_lock(&dport->xmit_lock);
 chars = dport->xmit_cnt;
 spin_unlock(&dport->xmit_lock);

 return chars;
}
