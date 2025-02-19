
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_qla_host {struct req_que* req; } ;
struct req_que {scalar_t__ ring_index; scalar_t__ length; scalar_t__ ring_ptr; scalar_t__ ring; } ;
struct TYPE_3__ {int entry_type; } ;
typedef TYPE_1__ cont_entry_t ;


 int CONTINUE_TYPE ;
 int put_unaligned_le32 (int ,int *) ;

__attribute__((used)) static inline cont_entry_t *
qla2x00_prep_cont_type0_iocb(struct scsi_qla_host *vha)
{
 cont_entry_t *cont_pkt;
 struct req_que *req = vha->req;

 req->ring_index++;
 if (req->ring_index == req->length) {
  req->ring_index = 0;
  req->ring_ptr = req->ring;
 } else {
  req->ring_ptr++;
 }

 cont_pkt = (cont_entry_t *)req->ring_ptr;


 put_unaligned_le32(CONTINUE_TYPE, &cont_pkt->entry_type);

 return (cont_pkt);
}
