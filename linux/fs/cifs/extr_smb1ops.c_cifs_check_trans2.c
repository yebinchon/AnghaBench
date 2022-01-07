
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mid_q_entry {int multiRsp; char* resp_buf; int multiEnd; int large_buf; } ;
struct TCP_Server_Info {int * bigbuf; int large_buf; } ;


 int VFS ;
 scalar_t__ check2ndT2 (char*) ;
 int cifs_dbg (int ,char*) ;
 int coalesce_t2 (char*,char*) ;
 int dequeue_mid (struct mid_q_entry*,int) ;

__attribute__((used)) static bool
cifs_check_trans2(struct mid_q_entry *mid, struct TCP_Server_Info *server,
    char *buf, int malformed)
{
 if (malformed)
  return 0;
 if (check2ndT2(buf) <= 0)
  return 0;
 mid->multiRsp = 1;
 if (mid->resp_buf) {

  malformed = coalesce_t2(buf, mid->resp_buf);
  if (malformed > 0)
   return 1;

  mid->multiEnd = 1;
  dequeue_mid(mid, malformed);
  return 1;
 }
 if (!server->large_buf) {

  cifs_dbg(VFS, "1st trans2 resp needs bigbuf\n");
 } else {

  mid->resp_buf = buf;
  mid->large_buf = 1;
  server->bigbuf = ((void*)0);
 }
 return 1;
}
