
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct file {int dummy; } ;


 int EBADF ;
 struct socket* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct socket*) ;
 struct file* fget (int) ;
 int fput (struct file*) ;
 struct socket* tap_get_socket (struct file*) ;
 struct socket* tun_get_socket (struct file*) ;

__attribute__((used)) static struct socket *get_tap_socket(int fd)
{
 struct file *file = fget(fd);
 struct socket *sock;

 if (!file)
  return ERR_PTR(-EBADF);
 sock = tun_get_socket(file);
 if (!IS_ERR(sock))
  return sock;
 sock = tap_get_socket(file);
 if (IS_ERR(sock))
  fput(file);
 return sock;
}
