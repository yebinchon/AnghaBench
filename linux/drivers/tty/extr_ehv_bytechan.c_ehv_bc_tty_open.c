
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {size_t index; } ;
struct file {int dummy; } ;
struct ehv_bc_data {int port; int dev; } ;


 int ENODEV ;
 struct ehv_bc_data* bcs ;
 int tty_port_open (int *,struct tty_struct*,struct file*) ;

__attribute__((used)) static int ehv_bc_tty_open(struct tty_struct *ttys, struct file *filp)
{
 struct ehv_bc_data *bc = &bcs[ttys->index];

 if (!bc->dev)
  return -ENODEV;

 return tty_port_open(&bc->port, ttys, filp);
}
