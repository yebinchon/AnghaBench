
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iov_iter {int count; } ;
struct cifs_readdata {int dummy; } ;
struct TCP_Server_Info {int dummy; } ;


 int readpages_fill_pages (struct TCP_Server_Info*,struct cifs_readdata*,struct iov_iter*,int ) ;

__attribute__((used)) static int
cifs_readpages_copy_into_pages(struct TCP_Server_Info *server,
          struct cifs_readdata *rdata,
          struct iov_iter *iter)
{
 return readpages_fill_pages(server, rdata, iter, iter->count);
}
