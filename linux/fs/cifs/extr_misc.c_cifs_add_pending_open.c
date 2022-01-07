
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcon_link {int dummy; } ;
struct cifs_pending_open {struct tcon_link* tlink; } ;
struct cifs_fid {int dummy; } ;
struct TYPE_2__ {int open_file_lock; } ;


 int cifs_add_pending_open_locked (struct cifs_fid*,struct tcon_link*,struct cifs_pending_open*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_1__* tlink_tcon (struct tcon_link*) ;

void
cifs_add_pending_open(struct cifs_fid *fid, struct tcon_link *tlink,
        struct cifs_pending_open *open)
{
 spin_lock(&tlink_tcon(tlink)->open_file_lock);
 cifs_add_pending_open_locked(fid, tlink, open);
 spin_unlock(&tlink_tcon(open->tlink)->open_file_lock);
}
