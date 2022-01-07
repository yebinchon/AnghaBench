
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct bfi_fru_write_req_s {int last; int alen; int mh; int trfr_cmpl; void* length; void* offset; } ;
struct TYPE_2__ {scalar_t__ msg; } ;
struct bfa_fru_s {scalar_t__ addr_off; scalar_t__ offset; scalar_t__ residue; scalar_t__ ubuf; TYPE_1__ mb; int ioc; int dbuf_kva; int dbuf_pa; int trfr_cmpl; } ;
typedef enum bfi_fru_h2i_msgs { ____Placeholder_bfi_fru_h2i_msgs } bfi_fru_h2i_msgs ;


 scalar_t__ BFA_FRU_DMA_BUF_SZ ;
 int BFI_MC_FRU ;
 int bfa_alen_set (int *,scalar_t__,int ) ;
 int bfa_ioc_mbox_queue (int ,TYPE_1__*) ;
 int bfa_ioc_portid (int ) ;
 int bfi_h2i_set (int ,int ,int,int ) ;
 void* cpu_to_be32 (scalar_t__) ;
 int memcpy (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
bfa_fru_write_send(void *cbarg, enum bfi_fru_h2i_msgs msg_type)
{
 struct bfa_fru_s *fru = cbarg;
 struct bfi_fru_write_req_s *msg =
   (struct bfi_fru_write_req_s *) fru->mb.msg;
 u32 len;

 msg->offset = cpu_to_be32(fru->addr_off + fru->offset);
 len = (fru->residue < BFA_FRU_DMA_BUF_SZ) ?
    fru->residue : BFA_FRU_DMA_BUF_SZ;
 msg->length = cpu_to_be32(len);




 msg->last = (len == fru->residue) ? 1 : 0;

 msg->trfr_cmpl = (len == fru->residue) ? fru->trfr_cmpl : 0;
 bfi_h2i_set(msg->mh, BFI_MC_FRU, msg_type, bfa_ioc_portid(fru->ioc));
 bfa_alen_set(&msg->alen, len, fru->dbuf_pa);

 memcpy(fru->dbuf_kva, fru->ubuf + fru->offset, len);
 bfa_ioc_mbox_queue(fru->ioc, &fru->mb);

 fru->residue -= len;
 fru->offset += len;
}
