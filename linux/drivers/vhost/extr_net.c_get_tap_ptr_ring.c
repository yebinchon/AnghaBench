
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_ring {int dummy; } ;
struct file {int dummy; } ;


 int IS_ERR (struct ptr_ring*) ;
 struct file* fget (int) ;
 int fput (struct file*) ;
 struct ptr_ring* tap_get_ptr_ring (struct file*) ;
 struct ptr_ring* tun_get_tx_ring (struct file*) ;

__attribute__((used)) static struct ptr_ring *get_tap_ptr_ring(int fd)
{
 struct ptr_ring *ring;
 struct file *file = fget(fd);

 if (!file)
  return ((void*)0);
 ring = tun_get_tx_ring(file);
 if (!IS_ERR(ring))
  goto out;
 ring = tap_get_ptr_ring(file);
 if (!IS_ERR(ring))
  goto out;
 ring = ((void*)0);
out:
 fput(file);
 return ring;
}
