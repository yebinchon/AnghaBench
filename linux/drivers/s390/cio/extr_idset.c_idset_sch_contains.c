
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int sch_no; int ssid; } ;
struct idset {int dummy; } ;


 int idset_contains (struct idset*,int ,int ) ;

int idset_sch_contains(struct idset *set, struct subchannel_id schid)
{
 return idset_contains(set, schid.ssid, schid.sch_no);
}
