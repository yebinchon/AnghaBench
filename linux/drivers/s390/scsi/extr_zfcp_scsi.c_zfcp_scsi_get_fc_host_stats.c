
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {scalar_t__ stats_reset; int stats_reset_data; int qdio; } ;
struct fsf_qtcb_bottom_port {scalar_t__ seconds_since_last_reset; } ;
struct fc_host_statistics {int dummy; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;


 int GFP_KERNEL ;
 scalar_t__ HZ ;
 scalar_t__ jiffies ;
 int kfree (struct fsf_qtcb_bottom_port*) ;
 struct fsf_qtcb_bottom_port* kzalloc (int,int ) ;
 int zfcp_fsf_exchange_port_data_sync (int ,struct fsf_qtcb_bottom_port*) ;
 int zfcp_scsi_adjust_fc_host_stats (struct fc_host_statistics*,struct fsf_qtcb_bottom_port*,int ) ;
 struct fc_host_statistics* zfcp_scsi_init_fc_host_stats (struct zfcp_adapter*) ;
 int zfcp_scsi_set_fc_host_stats (struct fc_host_statistics*,struct fsf_qtcb_bottom_port*) ;

__attribute__((used)) static struct fc_host_statistics *
zfcp_scsi_get_fc_host_stats(struct Scsi_Host *host)
{
 struct zfcp_adapter *adapter;
 struct fc_host_statistics *fc_stats;
 struct fsf_qtcb_bottom_port *data;
 int ret;

 adapter = (struct zfcp_adapter *)host->hostdata[0];
 fc_stats = zfcp_scsi_init_fc_host_stats(adapter);
 if (!fc_stats)
  return ((void*)0);

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  return ((void*)0);

 ret = zfcp_fsf_exchange_port_data_sync(adapter->qdio, data);
 if (ret) {
  kfree(data);
  return ((void*)0);
 }

 if (adapter->stats_reset &&
     ((jiffies/HZ - adapter->stats_reset) <
      data->seconds_since_last_reset))
  zfcp_scsi_adjust_fc_host_stats(fc_stats, data,
            adapter->stats_reset_data);
 else
  zfcp_scsi_set_fc_host_stats(fc_stats, data);

 kfree(data);
 return fc_stats;
}
