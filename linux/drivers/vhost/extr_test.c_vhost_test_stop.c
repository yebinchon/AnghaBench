
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_test {scalar_t__ vqs; } ;


 scalar_t__ VHOST_TEST_VQ ;
 void* vhost_test_stop_vq (struct vhost_test*,scalar_t__) ;

__attribute__((used)) static void vhost_test_stop(struct vhost_test *n, void **privatep)
{
 *privatep = vhost_test_stop_vq(n, n->vqs + VHOST_TEST_VQ);
}
