
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct vme_dma_pattern {void* type; void* pattern; } ;
struct vme_dma_attr {void* private; int type; } ;


 int GFP_KERNEL ;
 int VME_DMA_PATTERN ;
 int kfree (struct vme_dma_attr*) ;
 void* kmalloc (int,int ) ;

struct vme_dma_attr *vme_dma_pattern_attribute(u32 pattern, u32 type)
{
 struct vme_dma_attr *attributes;
 struct vme_dma_pattern *pattern_attr;

 attributes = kmalloc(sizeof(*attributes), GFP_KERNEL);
 if (!attributes)
  goto err_attr;

 pattern_attr = kmalloc(sizeof(*pattern_attr), GFP_KERNEL);
 if (!pattern_attr)
  goto err_pat;

 attributes->type = VME_DMA_PATTERN;
 attributes->private = (void *)pattern_attr;

 pattern_attr->pattern = pattern;
 pattern_attr->type = type;

 return attributes;

err_pat:
 kfree(attributes);
err_attr:
 return ((void*)0);
}
