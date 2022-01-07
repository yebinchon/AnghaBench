
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int d_sb; } ;
struct TYPE_2__ {int s_flags; } ;


 TYPE_1__* AFFS_SB (int ) ;
 int SF_NO_TRUNCATE ;
 int affs_test_opt (int ,int ) ;

bool
affs_nofilenametruncate(const struct dentry *dentry)
{
 return affs_test_opt(AFFS_SB(dentry->d_sb)->s_flags, SF_NO_TRUNCATE);
}
