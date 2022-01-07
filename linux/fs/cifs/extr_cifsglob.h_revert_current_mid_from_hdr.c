
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb2_sync_hdr {int CreditCharge; } ;
struct TCP_Server_Info {int dummy; } ;


 unsigned int le16_to_cpu (int ) ;
 void revert_current_mid (struct TCP_Server_Info*,unsigned int) ;

__attribute__((used)) static inline void
revert_current_mid_from_hdr(struct TCP_Server_Info *server,
       const struct smb2_sync_hdr *shdr)
{
 unsigned int num = le16_to_cpu(shdr->CreditCharge);

 return revert_current_mid(server, num > 0 ? num : 1);
}
