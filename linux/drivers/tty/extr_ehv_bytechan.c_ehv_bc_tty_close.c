
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {size_t index; } ;
struct file {int dummy; } ;
struct ehv_bc_data {int port; scalar_t__ dev; } ;


 struct ehv_bc_data* bcs ;
 int tty_port_close (int *,struct tty_struct*,struct file*) ;

__attribute__((used)) static void ehv_bc_tty_close(struct tty_struct *ttys, struct file *filp)
{
 struct ehv_bc_data *bc = &bcs[ttys->index];

 if (bc->dev)
  tty_port_close(&bc->port, ttys, filp);
}
