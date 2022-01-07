
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct cifs_tcon {int tc_count; scalar_t__ tidStatus; TYPE_2__* ses; } ;
struct cifs_sb_info {int dummy; } ;
struct TYPE_4__ {TYPE_1__* server; } ;
struct TYPE_3__ {int response_q; int request_q; } ;


 struct cifs_sb_info* CIFS_SB (struct super_block*) ;
 scalar_t__ CifsExiting ;
 int FYI ;
 int cifs_dbg (int ,char*) ;
 struct cifs_tcon* cifs_sb_master_tcon (struct cifs_sb_info*) ;
 int cifs_tcp_ses_lock ;
 int msleep (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void cifs_umount_begin(struct super_block *sb)
{
 struct cifs_sb_info *cifs_sb = CIFS_SB(sb);
 struct cifs_tcon *tcon;

 if (cifs_sb == ((void*)0))
  return;

 tcon = cifs_sb_master_tcon(cifs_sb);

 spin_lock(&cifs_tcp_ses_lock);
 if ((tcon->tc_count > 1) || (tcon->tidStatus == CifsExiting)) {



  spin_unlock(&cifs_tcp_ses_lock);
  return;
 } else if (tcon->tc_count == 1)
  tcon->tidStatus = CifsExiting;
 spin_unlock(&cifs_tcp_ses_lock);



 if (tcon->ses && tcon->ses->server) {
  cifs_dbg(FYI, "wake up tasks now - umount begin not complete\n");
  wake_up_all(&tcon->ses->server->request_q);
  wake_up_all(&tcon->ses->server->response_q);
  msleep(1);

  wake_up_all(&tcon->ses->server->response_q);
  msleep(1);
 }

 return;
}
