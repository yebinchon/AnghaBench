
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct wq_enet_desc {int dummy; } ;
struct vnic_wq {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 int VNIC_PADDR_TARGET ;
 struct wq_enet_desc* svnic_wq_next_desc (struct vnic_wq*) ;
 int svnic_wq_post (struct vnic_wq*,void*,scalar_t__,unsigned int,int,int) ;
 int wq_enet_desc_enc (struct wq_enet_desc*,int,int ,int ,int ,int ,int,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline void
snic_queue_wq_eth_desc(struct vnic_wq *wq,
         void *os_buf,
         dma_addr_t dma_addr,
         unsigned int len,
         int vlan_tag_insert,
         unsigned int vlan_tag,
         int cq_entry)
{
 struct wq_enet_desc *desc = svnic_wq_next_desc(wq);

 wq_enet_desc_enc(desc,
   (u64)dma_addr | VNIC_PADDR_TARGET,
   (u16)len,
   0,
   0,
   0,
   1,
   (u8)cq_entry,
   0,
   (u8)vlan_tag_insert,
   (u16)vlan_tag,
   0 );

 svnic_wq_post(wq, os_buf, dma_addr, len, 1, 1);
}
