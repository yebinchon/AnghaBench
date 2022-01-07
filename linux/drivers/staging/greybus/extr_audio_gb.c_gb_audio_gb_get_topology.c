
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gb_connection {int dummy; } ;
struct gb_audio_topology {int size; } ;
struct gb_audio_get_topology_size_response {int size; } ;
typedef int size_resp ;


 int ENODATA ;
 int ENOMEM ;
 int GB_AUDIO_TYPE_GET_TOPOLOGY ;
 int GB_AUDIO_TYPE_GET_TOPOLOGY_SIZE ;
 int GFP_KERNEL ;
 int gb_operation_sync (struct gb_connection*,int ,int *,int ,struct gb_audio_topology*,int) ;
 int kfree (struct gb_audio_topology*) ;
 struct gb_audio_topology* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;

int gb_audio_gb_get_topology(struct gb_connection *connection,
        struct gb_audio_topology **topology)
{
 struct gb_audio_get_topology_size_response size_resp;
 struct gb_audio_topology *topo;
 u16 size;
 int ret;

 ret = gb_operation_sync(connection, GB_AUDIO_TYPE_GET_TOPOLOGY_SIZE,
    ((void*)0), 0, &size_resp, sizeof(size_resp));
 if (ret)
  return ret;

 size = le16_to_cpu(size_resp.size);
 if (size < sizeof(*topo))
  return -ENODATA;

 topo = kzalloc(size, GFP_KERNEL);
 if (!topo)
  return -ENOMEM;

 ret = gb_operation_sync(connection, GB_AUDIO_TYPE_GET_TOPOLOGY, ((void*)0), 0,
    topo, size);
 if (ret) {
  kfree(topo);
  return ret;
 }

 *topology = topo;

 return 0;
}
