
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reserved_mem {int size; int base; } ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int MEMREMAP_WB ;
 int * cmd_db_header ;
 int cmd_db_magic_matches (int *) ;
 int dev_err (TYPE_1__*,char*) ;
 int * memremap (int ,int ,int ) ;
 struct reserved_mem* of_reserved_mem_lookup (int ) ;

__attribute__((used)) static int cmd_db_dev_probe(struct platform_device *pdev)
{
 struct reserved_mem *rmem;
 int ret = 0;

 rmem = of_reserved_mem_lookup(pdev->dev.of_node);
 if (!rmem) {
  dev_err(&pdev->dev, "failed to acquire memory region\n");
  return -EINVAL;
 }

 cmd_db_header = memremap(rmem->base, rmem->size, MEMREMAP_WB);
 if (!cmd_db_header) {
  ret = -ENOMEM;
  cmd_db_header = ((void*)0);
  return ret;
 }

 if (!cmd_db_magic_matches(cmd_db_header)) {
  dev_err(&pdev->dev, "Invalid Command DB Magic\n");
  return -EINVAL;
 }

 return 0;
}
