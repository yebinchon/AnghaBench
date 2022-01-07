
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct megasas_instance {int adapter_type; int * reply_map; } ;



 int ENOMEM ;
 int GFP_KERNEL ;




 int * kcalloc (int ,int,int ) ;
 int kfree (int *) ;
 int megasas_alloc_fusion_context (struct megasas_instance*) ;
 int megasas_alloc_mfi_ctrl_mem (struct megasas_instance*) ;
 int nr_cpu_ids ;

__attribute__((used)) static int megasas_alloc_ctrl_mem(struct megasas_instance *instance)
{
 instance->reply_map = kcalloc(nr_cpu_ids, sizeof(unsigned int),
          GFP_KERNEL);
 if (!instance->reply_map)
  return -ENOMEM;

 switch (instance->adapter_type) {
 case 130:
  if (megasas_alloc_mfi_ctrl_mem(instance))
   goto fail;
  break;
 case 132:
 case 128:
 case 129:
 case 131:
  if (megasas_alloc_fusion_context(instance))
   goto fail;
  break;
 }

 return 0;
 fail:
 kfree(instance->reply_map);
 instance->reply_map = ((void*)0);
 return -ENOMEM;
}
