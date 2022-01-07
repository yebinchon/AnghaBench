
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_hdr {int Mid; } ;
typedef scalar_t__ __u16 ;


 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static inline bool
compare_mid(__u16 mid, const struct smb_hdr *smb)
{
 return mid == le16_to_cpu(smb->Mid);
}
