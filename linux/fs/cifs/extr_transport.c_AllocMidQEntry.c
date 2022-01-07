
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_hdr {int Command; } ;
struct mid_q_entry {int mid_state; TYPE_1__* callback_data; int callback; struct TCP_Server_Info* server; int when_alloc; int command; int pid; int mid; int refcount; } ;
struct TCP_Server_Info {int dummy; } ;
struct TYPE_2__ {int pid; } ;


 int FYI ;
 int GFP_NOFS ;
 int MID_REQUEST_ALLOCATED ;
 int VFS ;
 int atomic_inc (int *) ;
 int cifs_dbg (int ,char*,...) ;
 int cifs_mid_poolp ;
 int cifs_wake_up_task ;
 int cpu_to_le16 (int ) ;
 TYPE_1__* current ;
 int get_mid (struct smb_hdr const*) ;
 int jiffies ;
 int kref_init (int *) ;
 struct mid_q_entry* mempool_alloc (int ,int ) ;
 int memset (struct mid_q_entry*,int ,int) ;
 int midCount ;

struct mid_q_entry *
AllocMidQEntry(const struct smb_hdr *smb_buffer, struct TCP_Server_Info *server)
{
 struct mid_q_entry *temp;

 if (server == ((void*)0)) {
  cifs_dbg(VFS, "Null TCP session in AllocMidQEntry\n");
  return ((void*)0);
 }

 temp = mempool_alloc(cifs_mid_poolp, GFP_NOFS);
 memset(temp, 0, sizeof(struct mid_q_entry));
 kref_init(&temp->refcount);
 temp->mid = get_mid(smb_buffer);
 temp->pid = current->pid;
 temp->command = cpu_to_le16(smb_buffer->Command);
 cifs_dbg(FYI, "For smb_command %d\n", smb_buffer->Command);


 temp->when_alloc = jiffies;
 temp->server = server;





 temp->callback = cifs_wake_up_task;
 temp->callback_data = current;

 atomic_inc(&midCount);
 temp->mid_state = MID_REQUEST_ALLOCATED;
 return temp;
}
