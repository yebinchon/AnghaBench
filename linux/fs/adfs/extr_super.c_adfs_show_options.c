
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct dentry {int d_sb; } ;
struct adfs_sb_info {scalar_t__ s_owner_mask; scalar_t__ s_other_mask; scalar_t__ s_ftsuffix; int s_gid; int s_uid; } ;


 scalar_t__ ADFS_DEFAULT_OTHER_MASK ;
 scalar_t__ ADFS_DEFAULT_OWNER_MASK ;
 struct adfs_sb_info* ADFS_SB (int ) ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 scalar_t__ from_kgid_munged (int *,int ) ;
 scalar_t__ from_kuid_munged (int *,int ) ;
 int gid_eq (int ,int ) ;
 int init_user_ns ;
 int seq_printf (struct seq_file*,char*,scalar_t__) ;
 int uid_eq (int ,int ) ;

__attribute__((used)) static int adfs_show_options(struct seq_file *seq, struct dentry *root)
{
 struct adfs_sb_info *asb = ADFS_SB(root->d_sb);

 if (!uid_eq(asb->s_uid, GLOBAL_ROOT_UID))
  seq_printf(seq, ",uid=%u", from_kuid_munged(&init_user_ns, asb->s_uid));
 if (!gid_eq(asb->s_gid, GLOBAL_ROOT_GID))
  seq_printf(seq, ",gid=%u", from_kgid_munged(&init_user_ns, asb->s_gid));
 if (asb->s_owner_mask != ADFS_DEFAULT_OWNER_MASK)
  seq_printf(seq, ",ownmask=%o", asb->s_owner_mask);
 if (asb->s_other_mask != ADFS_DEFAULT_OTHER_MASK)
  seq_printf(seq, ",othmask=%o", asb->s_other_mask);
 if (asb->s_ftsuffix != 0)
  seq_printf(seq, ",ftsuffix=%u", asb->s_ftsuffix);

 return 0;
}
