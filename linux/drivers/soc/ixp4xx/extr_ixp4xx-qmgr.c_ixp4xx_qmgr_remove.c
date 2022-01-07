
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int qmgr_irq_1 ;
 int qmgr_irq_2 ;
 int synchronize_irq (int ) ;

__attribute__((used)) static int ixp4xx_qmgr_remove(struct platform_device *pdev)
{
 synchronize_irq(qmgr_irq_1);
 synchronize_irq(qmgr_irq_2);
 return 0;
}
