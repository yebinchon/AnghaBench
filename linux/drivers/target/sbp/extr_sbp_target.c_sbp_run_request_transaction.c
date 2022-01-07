
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbp_target_request {struct sbp_login_descriptor* login; } ;
struct sbp_session {int node_id; int generation; int speed; int lock; int card; } ;
struct sbp_login_descriptor {struct sbp_session* sess; } ;
struct fw_card {int dummy; } ;


 struct fw_card* fw_card_get (int ) ;
 int fw_card_put (struct fw_card*) ;
 int sbp_run_transaction (struct fw_card*,int,int,int,int,unsigned long long,void*,size_t) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int sbp_run_request_transaction(struct sbp_target_request *req,
  int tcode, unsigned long long offset, void *payload,
  size_t length)
{
 struct sbp_login_descriptor *login = req->login;
 struct sbp_session *sess = login->sess;
 struct fw_card *card;
 int node_id, generation, speed, ret;

 spin_lock_bh(&sess->lock);
 card = fw_card_get(sess->card);
 node_id = sess->node_id;
 generation = sess->generation;
 speed = sess->speed;
 spin_unlock_bh(&sess->lock);

 ret = sbp_run_transaction(card, tcode, node_id, generation, speed,
   offset, payload, length);

 fw_card_put(card);

 return ret;
}
