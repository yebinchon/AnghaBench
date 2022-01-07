
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int LeaseFlags; int LeaseState; int LeaseKey; int Epoch; } ;
struct create_lease_v2 {TYPE_1__ lcontext; } ;
typedef int __u8 ;


 int SMB2_LEASE_FLAG_BREAK_IN_PROGRESS ;
 int SMB2_LEASE_KEY_SIZE ;
 int SMB2_OPLOCK_LEVEL_NOCHANGE ;
 unsigned int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (char*,int *,int ) ;

__attribute__((used)) static __u8
smb3_parse_lease_buf(void *buf, unsigned int *epoch, char *lease_key)
{
 struct create_lease_v2 *lc = (struct create_lease_v2 *)buf;

 *epoch = le16_to_cpu(lc->lcontext.Epoch);
 if (lc->lcontext.LeaseFlags & SMB2_LEASE_FLAG_BREAK_IN_PROGRESS)
  return SMB2_OPLOCK_LEVEL_NOCHANGE;
 if (lease_key)
  memcpy(lease_key, &lc->lcontext.LeaseKey, SMB2_LEASE_KEY_SIZE);
 return le32_to_cpu(lc->lcontext.LeaseState);
}
