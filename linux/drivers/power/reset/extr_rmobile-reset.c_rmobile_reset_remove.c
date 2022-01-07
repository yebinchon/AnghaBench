
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int iounmap (int ) ;
 int rmobile_reset_nb ;
 int sysc_base2 ;
 int unregister_restart_handler (int *) ;

__attribute__((used)) static int rmobile_reset_remove(struct platform_device *pdev)
{
 unregister_restart_handler(&rmobile_reset_nb);
 iounmap(sysc_base2);
 return 0;
}
