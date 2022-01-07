
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct aspeed_lpc_snoop {int dummy; } ;


 int aspeed_lpc_disable_snoop (struct aspeed_lpc_snoop*,int) ;
 struct aspeed_lpc_snoop* dev_get_drvdata (int *) ;

__attribute__((used)) static int aspeed_lpc_snoop_remove(struct platform_device *pdev)
{
 struct aspeed_lpc_snoop *lpc_snoop = dev_get_drvdata(&pdev->dev);


 aspeed_lpc_disable_snoop(lpc_snoop, 0);
 aspeed_lpc_disable_snoop(lpc_snoop, 1);

 return 0;
}
