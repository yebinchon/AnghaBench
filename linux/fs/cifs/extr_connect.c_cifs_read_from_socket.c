
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {int msg_iter; } ;
struct kvec {char* iov_base; unsigned int iov_len; } ;
struct TCP_Server_Info {int dummy; } ;


 int READ ;
 int cifs_readv_from_socket (struct TCP_Server_Info*,struct msghdr*) ;
 int iov_iter_kvec (int *,int ,struct kvec*,int,unsigned int) ;

int
cifs_read_from_socket(struct TCP_Server_Info *server, char *buf,
        unsigned int to_read)
{
 struct msghdr smb_msg;
 struct kvec iov = {.iov_base = buf, .iov_len = to_read};
 iov_iter_kvec(&smb_msg.msg_iter, READ, &iov, 1, to_read);

 return cifs_readv_from_socket(server, &smb_msg);
}
