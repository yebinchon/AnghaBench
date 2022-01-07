
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omapfb_mem_desc {int region_cnt; int * region; } ;
struct TYPE_4__ {TYPE_1__* fbdev; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int alloc_fbmem (int *) ;
 int dev_err (int ,char*) ;
 TYPE_2__ lcdc ;

__attribute__((used)) static int setup_fbmem(struct omapfb_mem_desc *req_md)
{
 if (!req_md->region_cnt) {
  dev_err(lcdc.fbdev->dev, "no memory regions defined\n");
  return -EINVAL;
 }

 if (req_md->region_cnt > 1) {
  dev_err(lcdc.fbdev->dev, "only one plane is supported\n");
  req_md->region_cnt = 1;
 }

 return alloc_fbmem(&req_md->region[0]);
}
