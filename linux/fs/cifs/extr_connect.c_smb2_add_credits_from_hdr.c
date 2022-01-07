
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb2_sync_hdr {scalar_t__ CreditRequest; } ;
struct TCP_Server_Info {int request_q; int req_lock; int credits; TYPE_1__* vals; } ;
struct TYPE_2__ {scalar_t__ header_preamble_size; } ;


 scalar_t__ le16_to_cpu (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void
smb2_add_credits_from_hdr(char *buffer, struct TCP_Server_Info *server)
{
 struct smb2_sync_hdr *shdr = (struct smb2_sync_hdr *)buffer;




 if (server->vals->header_preamble_size)
  return;

 if (shdr->CreditRequest) {
  spin_lock(&server->req_lock);
  server->credits += le16_to_cpu(shdr->CreditRequest);
  spin_unlock(&server->req_lock);
  wake_up(&server->request_q);
 }
}
