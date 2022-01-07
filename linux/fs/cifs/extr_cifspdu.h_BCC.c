
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_hdr {int WordCount; } ;



__attribute__((used)) static inline void *
BCC(struct smb_hdr *smb)
{
 return (void *)smb + sizeof(*smb) + 2 * smb->WordCount;
}
