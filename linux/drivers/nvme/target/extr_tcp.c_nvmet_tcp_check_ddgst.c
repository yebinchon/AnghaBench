
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct nvmet_tcp_queue {int idx; } ;
struct nvme_tcp_hdr {int flags; scalar_t__ hlen; int plen; } ;


 int EPROTO ;
 int NVME_TCP_F_DDGST ;
 int NVME_TCP_F_HDGST ;
 scalar_t__ le32_to_cpu (int ) ;
 int nvmet_tcp_hdgst_len (struct nvmet_tcp_queue*) ;
 int pr_err (char*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nvmet_tcp_check_ddgst(struct nvmet_tcp_queue *queue, void *pdu)
{
 struct nvme_tcp_hdr *hdr = pdu;
 u8 digest_len = nvmet_tcp_hdgst_len(queue);
 u32 len;

 len = le32_to_cpu(hdr->plen) - hdr->hlen -
  (hdr->flags & NVME_TCP_F_HDGST ? digest_len : 0);

 if (unlikely(len && !(hdr->flags & NVME_TCP_F_DDGST))) {
  pr_err("queue %d: data digest flag is cleared\n", queue->idx);
  return -EPROTO;
 }

 return 0;
}
