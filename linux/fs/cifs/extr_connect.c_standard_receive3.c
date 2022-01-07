
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mid_q_entry {int dummy; } ;
struct TCP_Server_Info {char* smallbuf; unsigned int pdu_size; int large_buf; char* bigbuf; int total_read; TYPE_1__* vals; int response_q; } ;
struct TYPE_2__ {unsigned int header_preamble_size; } ;


 unsigned int CIFSMaxBufSize ;
 int ECONNABORTED ;
 unsigned int HEADER_SIZE (struct TCP_Server_Info*) ;
 int MAX_CIFS_SMALL_BUFFER_SIZE ;
 unsigned int MAX_HEADER_SIZE (struct TCP_Server_Info*) ;
 int VFS ;
 int cifs_handle_standard (struct TCP_Server_Info*,struct mid_q_entry*) ;
 int cifs_read_from_socket (struct TCP_Server_Info*,char*,unsigned int) ;
 int cifs_reconnect (struct TCP_Server_Info*) ;
 int cifs_server_dbg (int ,char*,unsigned int) ;
 int dump_smb (char*,int) ;
 int memcpy (char*,char*,int) ;
 int wake_up (int *) ;

__attribute__((used)) static int
standard_receive3(struct TCP_Server_Info *server, struct mid_q_entry *mid)
{
 int length;
 char *buf = server->smallbuf;
 unsigned int pdu_length = server->pdu_size;


 if (pdu_length > CIFSMaxBufSize + MAX_HEADER_SIZE(server) -
  server->vals->header_preamble_size) {
  cifs_server_dbg(VFS, "SMB response too long (%u bytes)\n", pdu_length);
  cifs_reconnect(server);
  wake_up(&server->response_q);
  return -ECONNABORTED;
 }


 if (pdu_length > MAX_CIFS_SMALL_BUFFER_SIZE - 4) {
  server->large_buf = 1;
  memcpy(server->bigbuf, buf, server->total_read);
  buf = server->bigbuf;
 }


 length = cifs_read_from_socket(server, buf + HEADER_SIZE(server) - 1,
           pdu_length - HEADER_SIZE(server) + 1
           + server->vals->header_preamble_size);

 if (length < 0)
  return length;
 server->total_read += length;

 dump_smb(buf, server->total_read);

 return cifs_handle_standard(server, mid);
}
