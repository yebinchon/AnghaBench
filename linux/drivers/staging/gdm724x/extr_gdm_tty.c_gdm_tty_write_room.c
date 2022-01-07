
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gdm* driver_data; } ;
struct gdm {int dummy; } ;


 int ENODEV ;
 int GDM_TTY_READY (struct gdm*) ;
 int WRITE_SIZE ;

__attribute__((used)) static int gdm_tty_write_room(struct tty_struct *tty)
{
 struct gdm *gdm = tty->driver_data;

 if (!GDM_TTY_READY(gdm))
  return -ENODEV;

 return WRITE_SIZE;
}
