
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb2_sync_hdr {int MessageId; int CreditCharge; } ;
struct TCP_Server_Info {int dummy; } ;


 int get_next_mid (struct TCP_Server_Info*) ;
 int get_next_mid64 (struct TCP_Server_Info*) ;
 unsigned int le16_to_cpu (int ) ;

__attribute__((used)) static inline void
smb2_seq_num_into_buf(struct TCP_Server_Info *server,
        struct smb2_sync_hdr *shdr)
{
 unsigned int i, num = le16_to_cpu(shdr->CreditCharge);

 shdr->MessageId = get_next_mid64(server);

 for (i = 1; i < num; i++)
  get_next_mid(server);
}
