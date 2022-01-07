
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhost_vsock {int send_pkt_work; int dev; TYPE_1__* vqs; } ;
struct TYPE_2__ {int poll; scalar_t__ handle_kick; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int vhost_poll_flush (int *) ;
 int vhost_work_flush (int *,int *) ;

__attribute__((used)) static void vhost_vsock_flush(struct vhost_vsock *vsock)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(vsock->vqs); i++)
  if (vsock->vqs[i].handle_kick)
   vhost_poll_flush(&vsock->vqs[i].poll);
 vhost_work_flush(&vsock->dev, &vsock->send_pkt_work);
}
