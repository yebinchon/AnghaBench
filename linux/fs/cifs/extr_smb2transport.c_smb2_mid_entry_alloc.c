
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb2_sync_hdr {int Command; int SessionId; int TreeId; int MessageId; int CreditCharge; } ;
struct mid_q_entry {unsigned int credits; int mid; int mid_state; TYPE_1__* callback_data; int callback; struct TCP_Server_Info* server; int when_alloc; int command; int pid; int refcount; } ;
struct TCP_Server_Info {int dummy; } ;
struct TYPE_2__ {int pid; } ;


 int GFP_NOFS ;
 int MID_REQUEST_ALLOCATED ;
 int VFS ;
 int atomic_inc (int *) ;
 int cifs_dbg (int ,char*) ;
 int cifs_mid_poolp ;
 int cifs_wake_up_task ;
 TYPE_1__* current ;
 int jiffies ;
 int kref_init (int *) ;
 unsigned int le16_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 struct mid_q_entry* mempool_alloc (int ,int ) ;
 int memset (struct mid_q_entry*,int ,int) ;
 int midCount ;
 int trace_smb3_cmd_enter (int ,int ,unsigned int,int ) ;

__attribute__((used)) static struct mid_q_entry *
smb2_mid_entry_alloc(const struct smb2_sync_hdr *shdr,
       struct TCP_Server_Info *server)
{
 struct mid_q_entry *temp;
 unsigned int credits = le16_to_cpu(shdr->CreditCharge);

 if (server == ((void*)0)) {
  cifs_dbg(VFS, "Null TCP session in smb2_mid_entry_alloc\n");
  return ((void*)0);
 }

 temp = mempool_alloc(cifs_mid_poolp, GFP_NOFS);
 memset(temp, 0, sizeof(struct mid_q_entry));
 kref_init(&temp->refcount);
 temp->mid = le64_to_cpu(shdr->MessageId);
 temp->credits = credits > 0 ? credits : 1;
 temp->pid = current->pid;
 temp->command = shdr->Command;
 temp->when_alloc = jiffies;
 temp->server = server;





 temp->callback = cifs_wake_up_task;
 temp->callback_data = current;

 atomic_inc(&midCount);
 temp->mid_state = MID_REQUEST_ALLOCATED;
 trace_smb3_cmd_enter(shdr->TreeId, shdr->SessionId,
  le16_to_cpu(shdr->Command), temp->mid);
 return temp;
}
