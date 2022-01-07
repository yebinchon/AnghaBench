
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;


 int CIFS_MOUNT_DIRECT_IO ;
 int CIFS_MOUNT_RO_CACHE ;
 int CIFS_MOUNT_RW_CACHE ;
 int CIFS_MOUNT_STRICT_IO ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void
cifs_show_cache_flavor(struct seq_file *s, struct cifs_sb_info *cifs_sb)
{
 seq_puts(s, ",cache=");

 if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_STRICT_IO)
  seq_puts(s, "strict");
 else if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_DIRECT_IO)
  seq_puts(s, "none");
 else if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_RW_CACHE)
  seq_puts(s, "singleclient");
 else if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_RO_CACHE)
  seq_puts(s, "ro");
 else
  seq_puts(s, "loose");
}
