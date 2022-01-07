
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb2_sync_hdr {scalar_t__ Status; scalar_t__ CreditRequest; } ;
struct TCP_Server_Info {int request_q; int req_lock; int credits; } ;


 scalar_t__ STATUS_PENDING ;
 scalar_t__ le16_to_cpu (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static bool
smb2_is_status_pending(char *buf, struct TCP_Server_Info *server)
{
 struct smb2_sync_hdr *shdr = (struct smb2_sync_hdr *)buf;

 if (shdr->Status != STATUS_PENDING)
  return 0;

 if (shdr->CreditRequest) {
  spin_lock(&server->req_lock);
  server->credits += le16_to_cpu(shdr->CreditRequest);
  spin_unlock(&server->req_lock);
  wake_up(&server->request_q);
 }

 return 1;
}
