
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_free (int ,unsigned char*) ;
 int scsi_select_sense_cache (int) ;

__attribute__((used)) static void scsi_free_sense_buffer(bool unchecked_isa_dma,
       unsigned char *sense_buffer)
{
 kmem_cache_free(scsi_select_sense_cache(unchecked_isa_dma),
   sense_buffer);
}
