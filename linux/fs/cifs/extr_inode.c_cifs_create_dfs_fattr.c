
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_time_gran; } ;
struct cifs_sb_info {int mnt_gid; int mnt_uid; } ;
struct cifs_fattr {int cf_mode; int cf_nlink; int cf_flags; int cf_mtime; int cf_ctime; int cf_atime; int cf_gid; int cf_uid; } ;


 int CIFS_FATTR_DFS_REFERRAL ;
 struct cifs_sb_info* CIFS_SB (struct super_block*) ;
 int FYI ;
 int S_IFDIR ;
 int S_IRWXU ;
 int S_IXUGO ;
 int cifs_dbg (int ,char*) ;
 int ktime_get_real_ts64 (int *) ;
 int memset (struct cifs_fattr*,int ,int) ;
 int timespec64_trunc (int ,int ) ;

__attribute__((used)) static void
cifs_create_dfs_fattr(struct cifs_fattr *fattr, struct super_block *sb)
{
 struct cifs_sb_info *cifs_sb = CIFS_SB(sb);

 cifs_dbg(FYI, "creating fake fattr for DFS referral\n");

 memset(fattr, 0, sizeof(*fattr));
 fattr->cf_mode = S_IFDIR | S_IXUGO | S_IRWXU;
 fattr->cf_uid = cifs_sb->mnt_uid;
 fattr->cf_gid = cifs_sb->mnt_gid;
 ktime_get_real_ts64(&fattr->cf_mtime);
 fattr->cf_mtime = timespec64_trunc(fattr->cf_mtime, sb->s_time_gran);
 fattr->cf_atime = fattr->cf_ctime = fattr->cf_mtime;
 fattr->cf_nlink = 2;
 fattr->cf_flags = CIFS_FATTR_DFS_REFERRAL;
}
