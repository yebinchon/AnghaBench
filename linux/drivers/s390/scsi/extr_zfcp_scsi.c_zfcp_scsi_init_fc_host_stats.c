
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {struct fc_host_statistics* fc_stats; } ;
struct fc_host_statistics {int dummy; } ;


 int GFP_KERNEL ;
 struct fc_host_statistics* kmalloc (int,int ) ;
 int memset (struct fc_host_statistics*,int ,int) ;

__attribute__((used)) static struct fc_host_statistics*
zfcp_scsi_init_fc_host_stats(struct zfcp_adapter *adapter)
{
 struct fc_host_statistics *fc_stats;

 if (!adapter->fc_stats) {
  fc_stats = kmalloc(sizeof(*fc_stats), GFP_KERNEL);
  if (!fc_stats)
   return ((void*)0);
  adapter->fc_stats = fc_stats;
 }
 memset(adapter->fc_stats, 0, sizeof(*adapter->fc_stats));
 return adapter->fc_stats;
}
