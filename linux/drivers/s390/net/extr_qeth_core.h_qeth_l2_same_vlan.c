
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_hdr_layer2 {int* flags; scalar_t__ vlan_id; } ;


 int QETH_LAYER2_FLAG_VLAN ;

__attribute__((used)) static inline bool qeth_l2_same_vlan(struct qeth_hdr_layer2 *h1,
         struct qeth_hdr_layer2 *h2)
{
 return !((h1->flags[2] ^ h2->flags[2]) & QETH_LAYER2_FLAG_VLAN) &&
        h1->vlan_id == h2->vlan_id;
}
