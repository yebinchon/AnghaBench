
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_test {int dummy; } ;


 int VHOST_TEST_VQ ;
 int vhost_test_flush_vq (struct vhost_test*,int ) ;

__attribute__((used)) static void vhost_test_flush(struct vhost_test *n)
{
 vhost_test_flush_vq(n, VHOST_TEST_VQ);
}
