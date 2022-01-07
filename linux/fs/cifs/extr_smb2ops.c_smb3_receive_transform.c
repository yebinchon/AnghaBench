
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb2_transform_hdr {int OriginalMessageSize; } ;
struct smb2_sync_hdr {int dummy; } ;
struct mid_q_entry {int dummy; } ;
struct TCP_Server_Info {char* smallbuf; unsigned int pdu_size; int response_q; } ;


 unsigned int CIFSMaxBufSize ;
 int ECONNABORTED ;
 unsigned int MAX_HEADER_SIZE (struct TCP_Server_Info*) ;
 int VFS ;
 int cifs_reconnect (struct TCP_Server_Info*) ;
 int cifs_server_dbg (int ,char*,...) ;
 unsigned int le32_to_cpu (int ) ;
 int receive_encrypted_read (struct TCP_Server_Info*,struct mid_q_entry**,int*) ;
 int receive_encrypted_standard (struct TCP_Server_Info*,struct mid_q_entry**,char**,int*) ;
 int wake_up (int *) ;

__attribute__((used)) static int
smb3_receive_transform(struct TCP_Server_Info *server,
         struct mid_q_entry **mids, char **bufs, int *num_mids)
{
 char *buf = server->smallbuf;
 unsigned int pdu_length = server->pdu_size;
 struct smb2_transform_hdr *tr_hdr = (struct smb2_transform_hdr *)buf;
 unsigned int orig_len = le32_to_cpu(tr_hdr->OriginalMessageSize);

 if (pdu_length < sizeof(struct smb2_transform_hdr) +
      sizeof(struct smb2_sync_hdr)) {
  cifs_server_dbg(VFS, "Transform message is too small (%u)\n",
    pdu_length);
  cifs_reconnect(server);
  wake_up(&server->response_q);
  return -ECONNABORTED;
 }

 if (pdu_length < orig_len + sizeof(struct smb2_transform_hdr)) {
  cifs_server_dbg(VFS, "Transform message is broken\n");
  cifs_reconnect(server);
  wake_up(&server->response_q);
  return -ECONNABORTED;
 }


 if (pdu_length > CIFSMaxBufSize + MAX_HEADER_SIZE(server)) {
  return receive_encrypted_read(server, &mids[0], num_mids);
 }

 return receive_encrypted_standard(server, mids, bufs, num_mids);
}
