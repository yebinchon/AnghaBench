
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int zone_guid; } ;
struct visorchannel {TYPE_1__ chan_hdr; } ;


 char* visorchannel_guid_id (int *,char*) ;

char *visorchannel_zoneid(struct visorchannel *channel, char *s)
{
 return visorchannel_guid_id(&channel->chan_hdr.zone_guid, s);
}
