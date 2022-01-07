
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ft_sess {int dummy; } ;
struct fc_lport {int dummy; } ;
struct fc_frame {int dummy; } ;


 int TFC_SESS_DBG (struct fc_lport*,char*,int ) ;
 int fc_frame_free (struct fc_frame*) ;
 int fc_frame_sid (struct fc_frame*) ;
 int ft_recv_req (struct ft_sess*,struct fc_frame*) ;
 struct ft_sess* ft_sess_get (struct fc_lport*,int ) ;

__attribute__((used)) static void ft_recv(struct fc_lport *lport, struct fc_frame *fp)
{
 struct ft_sess *sess;
 u32 sid = fc_frame_sid(fp);

 TFC_SESS_DBG(lport, "recv sid %x\n", sid);

 sess = ft_sess_get(lport, sid);
 if (!sess) {
  TFC_SESS_DBG(lport, "sid %x sess lookup failed\n", sid);

  fc_frame_free(fp);
  return;
 }
 ft_recv_req(sess, fp);
}
