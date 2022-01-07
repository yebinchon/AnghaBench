
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int ) ;
 int scsi_pkt_cachep ;

void fc_destroy_fcp(void)
{
 kmem_cache_destroy(scsi_pkt_cachep);
}
