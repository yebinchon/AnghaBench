
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mid_q_entry {int * resp_buf; } ;
struct TCP_Server_Info {int * smallbuf; } ;


 int cifs_discard_remaining_data (struct TCP_Server_Info*) ;
 int dequeue_mid (struct mid_q_entry*,int) ;

__attribute__((used)) static int
__cifs_readv_discard(struct TCP_Server_Info *server, struct mid_q_entry *mid,
       bool malformed)
{
 int length;

 length = cifs_discard_remaining_data(server);
 dequeue_mid(mid, malformed);
 mid->resp_buf = server->smallbuf;
 server->smallbuf = ((void*)0);
 return length;
}
