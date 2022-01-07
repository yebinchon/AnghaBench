
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtqueue {int dummy; } ;
struct virtio_scsi_cmd {int resp; int req; struct scsi_cmnd* sc; } ;
struct sg_table {struct scatterlist* sgl; } ;
struct TYPE_2__ {struct sg_table table; } ;
struct scsi_cmnd {scalar_t__ sc_data_direction; TYPE_1__ sdb; } ;
struct scatterlist {int dummy; } ;


 scalar_t__ DMA_FROM_DEVICE ;
 scalar_t__ DMA_NONE ;
 scalar_t__ DMA_TO_DEVICE ;
 int GFP_ATOMIC ;
 scalar_t__ scsi_prot_sg_count (struct scsi_cmnd*) ;
 struct scatterlist* scsi_prot_sglist (struct scsi_cmnd*) ;
 int sg_init_one (struct scatterlist*,int *,size_t) ;
 int virtqueue_add_sgs (struct virtqueue*,struct scatterlist**,unsigned int,unsigned int,struct virtio_scsi_cmd*,int ) ;

__attribute__((used)) static int __virtscsi_add_cmd(struct virtqueue *vq,
       struct virtio_scsi_cmd *cmd,
       size_t req_size, size_t resp_size)
{
 struct scsi_cmnd *sc = cmd->sc;
 struct scatterlist *sgs[6], req, resp;
 struct sg_table *out, *in;
 unsigned out_num = 0, in_num = 0;

 out = in = ((void*)0);

 if (sc && sc->sc_data_direction != DMA_NONE) {
  if (sc->sc_data_direction != DMA_FROM_DEVICE)
   out = &sc->sdb.table;
  if (sc->sc_data_direction != DMA_TO_DEVICE)
   in = &sc->sdb.table;
 }


 sg_init_one(&req, &cmd->req, req_size);
 sgs[out_num++] = &req;


 if (out) {

  if (scsi_prot_sg_count(sc))
   sgs[out_num++] = scsi_prot_sglist(sc);
  sgs[out_num++] = out->sgl;
 }


 sg_init_one(&resp, &cmd->resp, resp_size);
 sgs[out_num + in_num++] = &resp;


 if (in) {

  if (scsi_prot_sg_count(sc))
   sgs[out_num + in_num++] = scsi_prot_sglist(sc);
  sgs[out_num + in_num++] = in->sgl;
 }

 return virtqueue_add_sgs(vq, sgs, out_num, in_num, cmd, GFP_ATOMIC);
}
