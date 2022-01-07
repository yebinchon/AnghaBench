
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mid_q_entry {char* resp_buf; int multiRsp; scalar_t__ large_buf; } ;
struct TCP_Server_Info {int * smallbuf; int * bigbuf; scalar_t__ large_buf; TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ (* check_trans2 ) (struct mid_q_entry*,struct TCP_Server_Info*,char*,int) ;} ;


 int dequeue_mid (struct mid_q_entry*,int) ;
 scalar_t__ stub1 (struct mid_q_entry*,struct TCP_Server_Info*,char*,int) ;

__attribute__((used)) static void
handle_mid(struct mid_q_entry *mid, struct TCP_Server_Info *server,
    char *buf, int malformed)
{
 if (server->ops->check_trans2 &&
     server->ops->check_trans2(mid, server, buf, malformed))
  return;
 mid->resp_buf = buf;
 mid->large_buf = server->large_buf;

 if (!mid->multiRsp) {

  if (server->large_buf)
   server->bigbuf = ((void*)0);
  else
   server->smallbuf = ((void*)0);
 }
 dequeue_mid(mid, malformed);
}
