
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sess_data {struct cifs_ses* ses; } ;
struct TYPE_5__ {int len; int response; } ;
struct cifs_ses {int need_reconnect; int status; TYPE_3__* server; TYPE_2__ auth_key; } ;
struct TYPE_4__ {int len; int response; } ;
struct TYPE_6__ {int session_estab; int sequence_number; int srv_mutex; TYPE_1__ session_key; scalar_t__ sign; } ;


 int CifsGood ;
 int ENOMEM ;
 int FYI ;
 int GFP_KERNEL ;
 int GlobalMid_Lock ;
 int cifs_dbg (int ,char*) ;
 int kmemdup (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
sess_establish_session(struct sess_data *sess_data)
{
 struct cifs_ses *ses = sess_data->ses;

 mutex_lock(&ses->server->srv_mutex);
 if (!ses->server->session_estab) {
  if (ses->server->sign) {
   ses->server->session_key.response =
    kmemdup(ses->auth_key.response,
    ses->auth_key.len, GFP_KERNEL);
   if (!ses->server->session_key.response) {
    mutex_unlock(&ses->server->srv_mutex);
    return -ENOMEM;
   }
   ses->server->session_key.len =
      ses->auth_key.len;
  }
  ses->server->sequence_number = 0x2;
  ses->server->session_estab = 1;
 }
 mutex_unlock(&ses->server->srv_mutex);

 cifs_dbg(FYI, "CIFS session established successfully\n");
 spin_lock(&GlobalMid_Lock);
 ses->status = CifsGood;
 ses->need_reconnect = 0;
 spin_unlock(&GlobalMid_Lock);

 return 0;
}
