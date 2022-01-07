
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct uwb_ie_drp {int drp_control; } ;


 int cpu_to_le16 (int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline void uwb_ie_drp_set_owner(struct uwb_ie_drp *ie, int owner)
{
 u16 drp_control = le16_to_cpu(ie->drp_control);
 drp_control = (drp_control & ~(0x1 << 10)) | (owner << 10);
 ie->drp_control = cpu_to_le16(drp_control);
}
