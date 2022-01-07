
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;


 struct kmem_cache* scsi_sense_cache ;
 struct kmem_cache* scsi_sense_isadma_cache ;

__attribute__((used)) static inline struct kmem_cache *
scsi_select_sense_cache(bool unchecked_isa_dma)
{
 return unchecked_isa_dma ? scsi_sense_isadma_cache : scsi_sense_cache;
}
