
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhost_test {TYPE_1__* vqs; } ;
struct TYPE_2__ {int poll; } ;


 int vhost_poll_flush (int *) ;

__attribute__((used)) static void vhost_test_flush_vq(struct vhost_test *n, int index)
{
 vhost_poll_flush(&n->vqs[index].poll);
}
