
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int zx296718_pm_domains ;
 int zx2967_pd_probe (struct platform_device*,int ,int ) ;

__attribute__((used)) static int zx296718_pd_probe(struct platform_device *pdev)
{
 return zx2967_pd_probe(pdev,
     zx296718_pm_domains,
     ARRAY_SIZE(zx296718_pm_domains));
}
