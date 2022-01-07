
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_hdr_layer3 {int ext_flags; scalar_t__ vlan_id; } ;


 int QETH_HDR_EXT_VLAN_FRAME ;

__attribute__((used)) static inline bool qeth_l3_iqd_same_vlan(struct qeth_hdr_layer3 *h1,
      struct qeth_hdr_layer3 *h2)
{
 return !((h1->ext_flags ^ h2->ext_flags) & QETH_HDR_EXT_VLAN_FRAME) &&
        h1->vlan_id == h2->vlan_id;
}
