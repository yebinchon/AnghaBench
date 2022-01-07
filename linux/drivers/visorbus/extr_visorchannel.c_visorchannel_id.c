
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visorchannel {int guid; } ;


 char* visorchannel_guid_id (int *,char*) ;

char *visorchannel_id(struct visorchannel *channel, char *s)
{
 return visorchannel_guid_id(&channel->guid, s);
}
