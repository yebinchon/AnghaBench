
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvmet_tcp_queue {scalar_t__ data_digest; } ;


 int NVME_TCP_DIGEST_LENGTH ;

__attribute__((used)) static inline u8 nvmet_tcp_ddgst_len(struct nvmet_tcp_queue *queue)
{
 return queue->data_digest ? NVME_TCP_DIGEST_LENGTH : 0;
}
