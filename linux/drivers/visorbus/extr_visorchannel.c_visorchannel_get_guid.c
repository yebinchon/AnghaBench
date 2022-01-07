
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visorchannel {int const guid; } ;
typedef int guid_t ;



const guid_t *visorchannel_get_guid(struct visorchannel *channel)
{
 return &channel->guid;
}
