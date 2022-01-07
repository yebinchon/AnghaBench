
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct pcs_device {int dummy; } ;


 int pcs_free_resources (struct pcs_device*) ;
 struct pcs_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int pcs_remove(struct platform_device *pdev)
{
 struct pcs_device *pcs = platform_get_drvdata(pdev);

 if (!pcs)
  return 0;

 pcs_free_resources(pcs);

 return 0;
}
