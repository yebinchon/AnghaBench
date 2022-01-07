
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct iss_device {int * regs; int dev; } ;
typedef enum iss_mem_resources { ____Placeholder_iss_mem_resources } iss_mem_resources ;


 int IORESOURCE_MEM ;
 int PTR_ERR_OR_ZERO (int ) ;
 int devm_ioremap_resource (int ,struct resource*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;

__attribute__((used)) static int iss_map_mem_resource(struct platform_device *pdev,
    struct iss_device *iss,
    enum iss_mem_resources res)
{
 struct resource *mem;

 mem = platform_get_resource(pdev, IORESOURCE_MEM, res);

 iss->regs[res] = devm_ioremap_resource(iss->dev, mem);

 return PTR_ERR_OR_ZERO(iss->regs[res]);
}
