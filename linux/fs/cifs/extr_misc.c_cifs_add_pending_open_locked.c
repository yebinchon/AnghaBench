
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcon_link {int dummy; } ;
struct cifs_pending_open {int olist; struct tcon_link* tlink; int oplock; int lease_key; } ;
struct cifs_fid {struct cifs_pending_open* pending_open; int lease_key; } ;
struct TYPE_2__ {int pending_opens; } ;


 int CIFS_OPLOCK_NO_CHANGE ;
 int SMB2_LEASE_KEY_SIZE ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,int ,int ) ;
 TYPE_1__* tlink_tcon (struct tcon_link*) ;

void
cifs_add_pending_open_locked(struct cifs_fid *fid, struct tcon_link *tlink,
        struct cifs_pending_open *open)
{
 memcpy(open->lease_key, fid->lease_key, SMB2_LEASE_KEY_SIZE);
 open->oplock = CIFS_OPLOCK_NO_CHANGE;
 open->tlink = tlink;
 fid->pending_open = open;
 list_add_tail(&open->olist, &tlink_tcon(tlink)->pending_opens);
}
