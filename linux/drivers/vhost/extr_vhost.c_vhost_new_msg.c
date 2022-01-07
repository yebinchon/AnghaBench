
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhost_virtqueue {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct vhost_msg_node {TYPE_1__ msg; struct vhost_virtqueue* vq; } ;


 int GFP_KERNEL ;
 struct vhost_msg_node* kmalloc (int,int ) ;
 int memset (TYPE_1__*,int ,int) ;

struct vhost_msg_node *vhost_new_msg(struct vhost_virtqueue *vq, int type)
{
 struct vhost_msg_node *node = kmalloc(sizeof *node, GFP_KERNEL);
 if (!node)
  return ((void*)0);


 memset(&node->msg, 0, sizeof node->msg);
 node->vq = vq;
 node->msg.type = type;
 return node;
}
