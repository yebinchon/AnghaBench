
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_transaction {int dummy; } ;
struct kvec {void* iov_len; void* iov_base; } ;


 int ARRAY_SIZE (struct kvec*) ;
 scalar_t__ IS_ERR (char const*) ;
 int PTR_ERR (char const*) ;
 int XS_WRITE ;
 char* join (char const*,char const*) ;
 int kfree (char const*) ;
 void* strlen (char const*) ;
 int xs_error (int ) ;
 int xs_talkv (struct xenbus_transaction,int ,struct kvec*,int ,int *) ;

int xenbus_write(struct xenbus_transaction t,
   const char *dir, const char *node, const char *string)
{
 const char *path;
 struct kvec iovec[2];
 int ret;

 path = join(dir, node);
 if (IS_ERR(path))
  return PTR_ERR(path);

 iovec[0].iov_base = (void *)path;
 iovec[0].iov_len = strlen(path) + 1;
 iovec[1].iov_base = (void *)string;
 iovec[1].iov_len = strlen(string);

 ret = xs_error(xs_talkv(t, XS_WRITE, iovec, ARRAY_SIZE(iovec), ((void*)0)));
 kfree(path);
 return ret;
}
