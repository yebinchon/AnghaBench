
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_acl_set; int num_acl_get; int num_locks; int num_symlinks; int num_hardlinks; int num_fclose; int num_fnext; int num_ffirst; int num_t2renames; int num_renames; int num_rmdirs; int num_mkdirs; int num_deletes; int num_closes; int num_posixmkdirs; int num_posixopens; int num_opens; int num_oplock_brks; int num_flushes; int num_reads; int num_writes; } ;
struct TYPE_4__ {TYPE_1__ cifs_stats; } ;
struct cifs_tcon {TYPE_2__ stats; } ;


 int atomic_set (int *,int ) ;

__attribute__((used)) static void
cifs_clear_stats(struct cifs_tcon *tcon)
{
 atomic_set(&tcon->stats.cifs_stats.num_writes, 0);
 atomic_set(&tcon->stats.cifs_stats.num_reads, 0);
 atomic_set(&tcon->stats.cifs_stats.num_flushes, 0);
 atomic_set(&tcon->stats.cifs_stats.num_oplock_brks, 0);
 atomic_set(&tcon->stats.cifs_stats.num_opens, 0);
 atomic_set(&tcon->stats.cifs_stats.num_posixopens, 0);
 atomic_set(&tcon->stats.cifs_stats.num_posixmkdirs, 0);
 atomic_set(&tcon->stats.cifs_stats.num_closes, 0);
 atomic_set(&tcon->stats.cifs_stats.num_deletes, 0);
 atomic_set(&tcon->stats.cifs_stats.num_mkdirs, 0);
 atomic_set(&tcon->stats.cifs_stats.num_rmdirs, 0);
 atomic_set(&tcon->stats.cifs_stats.num_renames, 0);
 atomic_set(&tcon->stats.cifs_stats.num_t2renames, 0);
 atomic_set(&tcon->stats.cifs_stats.num_ffirst, 0);
 atomic_set(&tcon->stats.cifs_stats.num_fnext, 0);
 atomic_set(&tcon->stats.cifs_stats.num_fclose, 0);
 atomic_set(&tcon->stats.cifs_stats.num_hardlinks, 0);
 atomic_set(&tcon->stats.cifs_stats.num_symlinks, 0);
 atomic_set(&tcon->stats.cifs_stats.num_locks, 0);
 atomic_set(&tcon->stats.cifs_stats.num_acl_get, 0);
 atomic_set(&tcon->stats.cifs_stats.num_acl_set, 0);
}
