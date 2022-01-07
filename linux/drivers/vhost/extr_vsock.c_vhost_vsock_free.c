
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_vsock {int dummy; } ;


 int kvfree (struct vhost_vsock*) ;

__attribute__((used)) static void vhost_vsock_free(struct vhost_vsock *vsock)
{
 kvfree(vsock);
}
