
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct cifs_fid {int lease_key; } ;
struct TYPE_2__ {int lease_key; } ;


 TYPE_1__* CIFS_I (struct inode*) ;
 int SMB2_LEASE_KEY_SIZE ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void
smb2_set_lease_key(struct inode *inode, struct cifs_fid *fid)
{
 memcpy(CIFS_I(inode)->lease_key, fid->lease_key, SMB2_LEASE_KEY_SIZE);
}
