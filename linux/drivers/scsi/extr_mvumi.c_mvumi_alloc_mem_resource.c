
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvumi_res {int type; unsigned int size; int entry; void* virt_addr; int bus_addr; } ;
struct mvumi_hba {int res_list; TYPE_1__* pdev; } ;
typedef enum resource_type { ____Placeholder_resource_type } resource_type ;
struct TYPE_2__ {int dev; } ;


 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;


 int dev_err (int *,char*,...) ;
 void* dma_alloc_coherent (int *,unsigned int,int *,int ) ;
 int kfree (struct mvumi_res*) ;
 void* kzalloc (unsigned int,int ) ;
 int list_add_tail (int *,int *) ;
 unsigned int round_up (unsigned int,int) ;

__attribute__((used)) static struct mvumi_res *mvumi_alloc_mem_resource(struct mvumi_hba *mhba,
    enum resource_type type, unsigned int size)
{
 struct mvumi_res *res = kzalloc(sizeof(*res), GFP_ATOMIC);

 if (!res) {
  dev_err(&mhba->pdev->dev,
   "Failed to allocate memory for resource manager.\n");
  return ((void*)0);
 }

 switch (type) {
 case 129:
  res->virt_addr = kzalloc(size, GFP_ATOMIC);
  if (!res->virt_addr) {
   dev_err(&mhba->pdev->dev,
    "unable to allocate memory,size = %d.\n", size);
   kfree(res);
   return ((void*)0);
  }
  break;

 case 128:
  size = round_up(size, 8);
  res->virt_addr = dma_alloc_coherent(&mhba->pdev->dev, size,
          &res->bus_addr,
          GFP_KERNEL);
  if (!res->virt_addr) {
   dev_err(&mhba->pdev->dev,
     "unable to allocate consistent mem,"
       "size = %d.\n", size);
   kfree(res);
   return ((void*)0);
  }
  break;

 default:
  dev_err(&mhba->pdev->dev, "unknown resource type %d.\n", type);
  kfree(res);
  return ((void*)0);
 }

 res->type = type;
 res->size = size;
 INIT_LIST_HEAD(&res->entry);
 list_add_tail(&res->entry, &mhba->res_list);

 return res;
}
