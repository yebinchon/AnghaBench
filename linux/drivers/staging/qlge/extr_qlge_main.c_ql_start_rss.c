
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ricb {int flags; int * ipv4_hash_key; int * ipv6_hash_key; int mask; int base_cq; scalar_t__ hash_cq_id; } ;
struct ql_adapter {int rss_ring_count; int ndev; struct ricb ricb; } ;


 int CFG_LR ;
 int RSS_L4K ;
 int RSS_L6K ;
 int RSS_LB ;
 int RSS_LI ;
 int RSS_LM ;
 int RSS_RT4 ;
 int RSS_RT6 ;
 int cpu_to_le16 (int ) ;
 int ifup ;
 int memcpy (void*,int const*,int) ;
 int memset (void*,int ,int) ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int ql_write_cfg (struct ql_adapter*,struct ricb*,int,int ,int ) ;

__attribute__((used)) static int ql_start_rss(struct ql_adapter *qdev)
{
 static const u8 init_hash_seed[] = {
  0x6d, 0x5a, 0x56, 0xda, 0x25, 0x5b, 0x0e, 0xc2,
  0x41, 0x67, 0x25, 0x3d, 0x43, 0xa3, 0x8f, 0xb0,
  0xd0, 0xca, 0x2b, 0xcb, 0xae, 0x7b, 0x30, 0xb4,
  0x77, 0xcb, 0x2d, 0xa3, 0x80, 0x30, 0xf2, 0x0c,
  0x6a, 0x42, 0xb7, 0x3b, 0xbe, 0xac, 0x01, 0xfa
 };
 struct ricb *ricb = &qdev->ricb;
 int status = 0;
 int i;
 u8 *hash_id = (u8 *) ricb->hash_cq_id;

 memset((void *)ricb, 0, sizeof(*ricb));

 ricb->base_cq = RSS_L4K;
 ricb->flags =
  (RSS_L6K | RSS_LI | RSS_LB | RSS_LM | RSS_RT4 | RSS_RT6);
 ricb->mask = cpu_to_le16((u16)(0x3ff));




 for (i = 0; i < 1024; i++)
  hash_id[i] = (i & (qdev->rss_ring_count - 1));

 memcpy((void *)&ricb->ipv6_hash_key[0], init_hash_seed, 40);
 memcpy((void *)&ricb->ipv4_hash_key[0], init_hash_seed, 16);

 status = ql_write_cfg(qdev, ricb, sizeof(*ricb), CFG_LR, 0);
 if (status) {
  netif_err(qdev, ifup, qdev->ndev, "Failed to load RICB.\n");
  return status;
 }
 return status;
}
