
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct virtio_balloon {int cmd_id_active; int vdev; } ;


 int EINTR ;
 int get_free_page_and_send (struct virtio_balloon*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ virtio32_to_cpu (int ,int ) ;
 scalar_t__ virtio_balloon_cmd_id_received (struct virtio_balloon*) ;

__attribute__((used)) static int send_free_pages(struct virtio_balloon *vb)
{
 int err;
 u32 cmd_id_active;

 while (1) {




  cmd_id_active = virtio32_to_cpu(vb->vdev, vb->cmd_id_active);
  if (unlikely(cmd_id_active !=
        virtio_balloon_cmd_id_received(vb)))
   break;





  err = get_free_page_and_send(vb);
  if (err == -EINTR)
   break;
  else if (unlikely(err))
   return err;
 }

 return 0;
}
