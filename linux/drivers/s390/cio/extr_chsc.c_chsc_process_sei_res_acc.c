
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chsc_sei_nt0_area {int rs; int vf; int fla; int rsid; } ;
struct chp_id {int id; } ;
struct chp_link {int fla_mask; int fla; struct chp_id chpid; } ;
struct channel_path {int lock; } ;


 int CIO_CRW_EVENT (int,char*,int,int ) ;
 int chp_get_status (struct chp_id) ;
 int chp_id_init (struct chp_id*) ;
 int chp_new (struct chp_id) ;
 int chp_update_desc (struct channel_path*) ;
 struct channel_path* chpid_to_chp (struct chp_id) ;
 int memset (struct chp_link*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s390_process_res_acc (struct chp_link*) ;

__attribute__((used)) static void chsc_process_sei_res_acc(struct chsc_sei_nt0_area *sei_area)
{
 struct channel_path *chp;
 struct chp_link link;
 struct chp_id chpid;
 int status;

 CIO_CRW_EVENT(4, "chsc: resource accessibility event (rs=%02x, "
        "rs_id=%04x)\n", sei_area->rs, sei_area->rsid);
 if (sei_area->rs != 4)
  return;
 chp_id_init(&chpid);
 chpid.id = sei_area->rsid;

 status = chp_get_status(chpid);
 if (!status)
  return;

 if (status < 0) {
  chp_new(chpid);
 } else {
  chp = chpid_to_chp(chpid);
  mutex_lock(&chp->lock);
  chp_update_desc(chp);
  mutex_unlock(&chp->lock);
 }
 memset(&link, 0, sizeof(struct chp_link));
 link.chpid = chpid;
 if ((sei_area->vf & 0xc0) != 0) {
  link.fla = sei_area->fla;
  if ((sei_area->vf & 0xc0) == 0xc0)

   link.fla_mask = 0xffff;
  else

   link.fla_mask = 0xff00;
 }
 s390_process_res_acc(&link);
}
