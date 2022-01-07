
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fc_disc {int disc_mutex; } ;
struct fc_lport {struct fc_disc disc; } ;
struct fc_frame {int dummy; } ;



 int FC_DISC_DBG (struct fc_disc*,char*,int) ;
 int fc_disc_recv_rscn_req (struct fc_disc*,struct fc_frame*) ;
 int fc_frame_free (struct fc_frame*) ;
 int fc_frame_payload_op (struct fc_frame*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void fc_disc_recv_req(struct fc_lport *lport, struct fc_frame *fp)
{
 u8 op;
 struct fc_disc *disc = &lport->disc;

 op = fc_frame_payload_op(fp);
 switch (op) {
 case 128:
  mutex_lock(&disc->disc_mutex);
  fc_disc_recv_rscn_req(disc, fp);
  mutex_unlock(&disc->disc_mutex);
  break;
 default:
  FC_DISC_DBG(disc, "Received an unsupported request, "
       "the opcode is (%x)\n", op);
  fc_frame_free(fp);
  break;
 }
}
