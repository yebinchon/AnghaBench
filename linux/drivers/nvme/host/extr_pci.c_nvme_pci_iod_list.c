
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct nvme_iod {scalar_t__ sg; } ;


 struct nvme_iod* blk_mq_rq_to_pdu (struct request*) ;
 scalar_t__ blk_rq_nr_phys_segments (struct request*) ;

__attribute__((used)) static void **nvme_pci_iod_list(struct request *req)
{
 struct nvme_iod *iod = blk_mq_rq_to_pdu(req);
 return (void **)(iod->sg + blk_rq_nr_phys_segments(req));
}
