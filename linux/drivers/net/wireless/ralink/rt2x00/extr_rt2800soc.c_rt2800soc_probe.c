
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int rt2800soc_ops ;
 int rt2x00soc_probe (struct platform_device*,int *) ;

__attribute__((used)) static int rt2800soc_probe(struct platform_device *pdev)
{
 return rt2x00soc_probe(pdev, &rt2800soc_ops);
}
