
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int LeaseFlags; int LeaseState; } ;
struct create_lease {TYPE_1__ lcontext; } ;
typedef int __u8 ;


 int SMB2_LEASE_FLAG_BREAK_IN_PROGRESS ;
 int SMB2_OPLOCK_LEVEL_NOCHANGE ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static __u8
smb2_parse_lease_buf(void *buf, unsigned int *epoch, char *lease_key)
{
 struct create_lease *lc = (struct create_lease *)buf;

 *epoch = 0;
 if (lc->lcontext.LeaseFlags & SMB2_LEASE_FLAG_BREAK_IN_PROGRESS)
  return SMB2_OPLOCK_LEVEL_NOCHANGE;
 return le32_to_cpu(lc->lcontext.LeaseState);
}
