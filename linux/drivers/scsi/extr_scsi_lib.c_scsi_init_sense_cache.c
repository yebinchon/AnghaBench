
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;
struct Scsi_Host {scalar_t__ unchecked_isa_dma; } ;


 int ENOMEM ;
 int SCSI_SENSE_BUFFERSIZE ;
 int SLAB_CACHE_DMA ;
 int SLAB_HWCACHE_ALIGN ;
 int kmem_cache_create (char*,int ,int ,int,int *) ;
 int kmem_cache_create_usercopy (char*,int ,int ,int,int ,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct kmem_cache* scsi_select_sense_cache (scalar_t__) ;
 int scsi_sense_cache ;
 int scsi_sense_cache_mutex ;
 int scsi_sense_isadma_cache ;

int scsi_init_sense_cache(struct Scsi_Host *shost)
{
 struct kmem_cache *cache;
 int ret = 0;

 mutex_lock(&scsi_sense_cache_mutex);
 cache = scsi_select_sense_cache(shost->unchecked_isa_dma);
 if (cache)
  goto exit;

 if (shost->unchecked_isa_dma) {
  scsi_sense_isadma_cache =
   kmem_cache_create("scsi_sense_cache(DMA)",
    SCSI_SENSE_BUFFERSIZE, 0,
    SLAB_HWCACHE_ALIGN | SLAB_CACHE_DMA, ((void*)0));
  if (!scsi_sense_isadma_cache)
   ret = -ENOMEM;
 } else {
  scsi_sense_cache =
   kmem_cache_create_usercopy("scsi_sense_cache",
    SCSI_SENSE_BUFFERSIZE, 0, SLAB_HWCACHE_ALIGN,
    0, SCSI_SENSE_BUFFERSIZE, ((void*)0));
  if (!scsi_sense_cache)
   ret = -ENOMEM;
 }
 exit:
 mutex_unlock(&scsi_sense_cache_mutex);
 return ret;
}
