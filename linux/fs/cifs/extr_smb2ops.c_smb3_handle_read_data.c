
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mid_q_entry {int dummy; } ;
struct TCP_Server_Info {char* bigbuf; char* smallbuf; int pdu_size; scalar_t__ large_buf; } ;


 int handle_read_data (struct TCP_Server_Info*,struct mid_q_entry*,char*,int ,int *,int ,int ) ;

int
smb3_handle_read_data(struct TCP_Server_Info *server, struct mid_q_entry *mid)
{
 char *buf = server->large_buf ? server->bigbuf : server->smallbuf;

 return handle_read_data(server, mid, buf, server->pdu_size,
    ((void*)0), 0, 0);
}
