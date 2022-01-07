
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;
struct virtio_balloon {int cmd_id_stop; struct virtqueue* free_page_vq; } ;
struct scatterlist {int dummy; } ;


 int GFP_KERNEL ;
 int sg_init_one (struct scatterlist*,int *,int) ;
 int virtqueue_add_outbuf (struct virtqueue*,struct scatterlist*,int,int *,int ) ;
 scalar_t__ virtqueue_get_buf (struct virtqueue*,int*) ;
 int virtqueue_kick (struct virtqueue*) ;

__attribute__((used)) static int send_cmd_id_stop(struct virtio_balloon *vb)
{
 struct scatterlist sg;
 struct virtqueue *vq = vb->free_page_vq;
 int err, unused;


 while (virtqueue_get_buf(vq, &unused))
  ;

 sg_init_one(&sg, &vb->cmd_id_stop, sizeof(vb->cmd_id_stop));
 err = virtqueue_add_outbuf(vq, &sg, 1, &vb->cmd_id_stop, GFP_KERNEL);
 if (!err)
  virtqueue_kick(vq);
 return err;
}
