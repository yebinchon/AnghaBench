
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gio_device {int dummy; } ;


 int give_up_console (int *) ;
 int iounmap (void*) ;
 int newport_con ;
 scalar_t__ npregs ;

__attribute__((used)) static void newport_remove(struct gio_device *dev)
{
 give_up_console(&newport_con);
 iounmap((void *)npregs);
}
