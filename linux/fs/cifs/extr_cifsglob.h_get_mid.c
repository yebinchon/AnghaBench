
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_hdr {int Mid; } ;
typedef int __u16 ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static inline __u16
get_mid(const struct smb_hdr *smb)
{
 return le16_to_cpu(smb->Mid);
}
