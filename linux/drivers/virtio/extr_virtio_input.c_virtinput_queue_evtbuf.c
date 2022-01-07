
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_input_event {int dummy; } ;
struct virtio_input {int evt; } ;
struct scatterlist {int dummy; } ;


 int GFP_ATOMIC ;
 int sg_init_one (struct scatterlist*,struct virtio_input_event*,int) ;
 int virtqueue_add_inbuf (int ,struct scatterlist*,int,struct virtio_input_event*,int ) ;

__attribute__((used)) static void virtinput_queue_evtbuf(struct virtio_input *vi,
       struct virtio_input_event *evtbuf)
{
 struct scatterlist sg[1];

 sg_init_one(sg, evtbuf, sizeof(*evtbuf));
 virtqueue_add_inbuf(vi->evt, sg, 1, evtbuf, GFP_ATOMIC);
}
