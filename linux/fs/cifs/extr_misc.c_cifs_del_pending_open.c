
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cifs_pending_open {int tlink; int olist; } ;
struct TYPE_2__ {int open_file_lock; } ;


 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_1__* tlink_tcon (int ) ;

void
cifs_del_pending_open(struct cifs_pending_open *open)
{
 spin_lock(&tlink_tcon(open->tlink)->open_file_lock);
 list_del(&open->olist);
 spin_unlock(&tlink_tcon(open->tlink)->open_file_lock);
}
