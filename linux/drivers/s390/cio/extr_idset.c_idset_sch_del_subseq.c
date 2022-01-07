
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int ssid; int sch_no; } ;
struct idset {int num_id; int bitmap; } ;


 int bitmap_clear (int ,int,int) ;

void idset_sch_del_subseq(struct idset *set, struct subchannel_id schid)
{
 int pos = schid.ssid * set->num_id + schid.sch_no;

 bitmap_clear(set->bitmap, pos, set->num_id - schid.sch_no);
}
