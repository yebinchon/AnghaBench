
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_hdr {int Flags; scalar_t__ Command; scalar_t__ Protocol; } ;
typedef scalar_t__ __le32 ;


 int SMBFLG_RESPONSE ;
 scalar_t__ SMB_COM_LOCKING_ANDX ;
 int VFS ;
 int cifs_dbg (int ,char*,unsigned int) ;
 scalar_t__ cpu_to_le32 (int) ;
 unsigned int get_mid (struct smb_hdr*) ;

__attribute__((used)) static int
check_smb_hdr(struct smb_hdr *smb)
{

 if (*(__le32 *) smb->Protocol != cpu_to_le32(0x424d53ff)) {
  cifs_dbg(VFS, "Bad protocol string signature header 0x%x\n",
    *(unsigned int *)smb->Protocol);
  return 1;
 }


 if (smb->Flags & SMBFLG_RESPONSE)
  return 0;


 if (smb->Command == SMB_COM_LOCKING_ANDX)
  return 0;

 cifs_dbg(VFS, "Server sent request, not response. mid=%u\n",
   get_mid(smb));
 return 1;
}
