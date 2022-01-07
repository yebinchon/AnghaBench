
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vq_callback_t ;
struct virtqueue {int dummy; } ;
struct virtio_input {struct virtqueue* sts; struct virtqueue* evt; int vdev; } ;


 int * virtinput_recv_events ;
 int * virtinput_recv_status ;
 int virtio_find_vqs (int ,int,struct virtqueue**,int **,char const* const*,int *) ;

__attribute__((used)) static int virtinput_init_vqs(struct virtio_input *vi)
{
 struct virtqueue *vqs[2];
 vq_callback_t *cbs[] = { virtinput_recv_events,
     virtinput_recv_status };
 static const char * const names[] = { "events", "status" };
 int err;

 err = virtio_find_vqs(vi->vdev, 2, vqs, cbs, names, ((void*)0));
 if (err)
  return err;
 vi->evt = vqs[0];
 vi->sts = vqs[1];

 return 0;
}
