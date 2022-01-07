
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_readdata {int dummy; } ;
struct TCP_Server_Info {int dummy; } ;


 int uncached_fill_pages (struct TCP_Server_Info*,struct cifs_readdata*,int *,unsigned int) ;

__attribute__((used)) static int
cifs_uncached_read_into_pages(struct TCP_Server_Info *server,
         struct cifs_readdata *rdata, unsigned int len)
{
 return uncached_fill_pages(server, rdata, ((void*)0), len);
}
