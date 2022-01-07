
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct cifs_fattr {int cf_createtime; int cf_uniqueid; } ;
struct TYPE_2__ {int createtime; int uniqueid; } ;


 TYPE_1__* CIFS_I (struct inode*) ;

__attribute__((used)) static int
cifs_init_inode(struct inode *inode, void *opaque)
{
 struct cifs_fattr *fattr = (struct cifs_fattr *) opaque;

 CIFS_I(inode)->uniqueid = fattr->cf_uniqueid;
 CIFS_I(inode)->createtime = fattr->cf_createtime;
 return 0;
}
