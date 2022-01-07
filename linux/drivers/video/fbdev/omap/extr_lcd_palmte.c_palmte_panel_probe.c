
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int omapfb_register_panel (int *) ;
 int palmte_panel ;

__attribute__((used)) static int palmte_panel_probe(struct platform_device *pdev)
{
 omapfb_register_panel(&palmte_panel);
 return 0;
}
