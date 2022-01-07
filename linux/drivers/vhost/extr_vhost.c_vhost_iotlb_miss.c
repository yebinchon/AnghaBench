
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct vhost_virtqueue {struct vhost_dev* dev; } ;
struct vhost_iotlb_msg {int perm; int iova; int type; } ;
struct TYPE_4__ {struct vhost_iotlb_msg iotlb; } ;
struct TYPE_3__ {struct vhost_iotlb_msg iotlb; int type; } ;
struct vhost_msg_node {TYPE_2__ msg; TYPE_1__ msg_v2; } ;
struct vhost_dev {int read_list; } ;


 int ENOMEM ;
 int VHOST_BACKEND_F_IOTLB_MSG_V2 ;
 int VHOST_IOTLB_MISS ;
 int VHOST_IOTLB_MSG ;
 int VHOST_IOTLB_MSG_V2 ;
 int vhost_backend_has_feature (struct vhost_virtqueue*,int ) ;
 int vhost_enqueue_msg (struct vhost_dev*,int *,struct vhost_msg_node*) ;
 struct vhost_msg_node* vhost_new_msg (struct vhost_virtqueue*,int ) ;

__attribute__((used)) static int vhost_iotlb_miss(struct vhost_virtqueue *vq, u64 iova, int access)
{
 struct vhost_dev *dev = vq->dev;
 struct vhost_msg_node *node;
 struct vhost_iotlb_msg *msg;
 bool v2 = vhost_backend_has_feature(vq, VHOST_BACKEND_F_IOTLB_MSG_V2);

 node = vhost_new_msg(vq, v2 ? VHOST_IOTLB_MSG_V2 : VHOST_IOTLB_MSG);
 if (!node)
  return -ENOMEM;

 if (v2) {
  node->msg_v2.type = VHOST_IOTLB_MSG_V2;
  msg = &node->msg_v2.iotlb;
 } else {
  msg = &node->msg.iotlb;
 }

 msg->type = VHOST_IOTLB_MISS;
 msg->iova = iova;
 msg->perm = access;

 vhost_enqueue_msg(dev, &dev->read_list, node);

 return 0;
}
