
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int partition_handle; } ;
struct visorchannel {TYPE_1__ chan_hdr; } ;



u64 visorchannel_get_clientpartition(struct visorchannel *channel)
{
 return channel->chan_hdr.partition_handle;
}
