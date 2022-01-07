
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int element_id; } ;
struct uwb_ie_drp {TYPE_1__ hdr; } ;


 int GFP_KERNEL ;
 int UWB_IE_DRP ;
 int UWB_NUM_ZONES ;
 int allocs ;
 struct uwb_ie_drp* kzalloc (int ,int ) ;
 int struct_size (struct uwb_ie_drp*,int ,int ) ;

__attribute__((used)) static struct uwb_ie_drp *uwb_drp_ie_alloc(void)
{
 struct uwb_ie_drp *drp_ie;

 drp_ie = kzalloc(struct_size(drp_ie, allocs, UWB_NUM_ZONES),
    GFP_KERNEL);
 if (drp_ie)
  drp_ie->hdr.element_id = UWB_IE_DRP;
 return drp_ie;
}
