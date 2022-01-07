
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mid_q_entry {struct cifs_readdata* callback_data; } ;
struct cifs_readdata {int result; } ;
struct TCP_Server_Info {int dummy; } ;


 int __cifs_readv_discard (struct TCP_Server_Info*,struct mid_q_entry*,int ) ;

__attribute__((used)) static int
cifs_readv_discard(struct TCP_Server_Info *server, struct mid_q_entry *mid)
{
 struct cifs_readdata *rdata = mid->callback_data;

 return __cifs_readv_discard(server, mid, rdata->result);
}
