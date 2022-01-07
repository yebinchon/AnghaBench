
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ft_sess {int se_sess; } ;
struct ft_cmd {int se_cmd; struct fc_frame* req_frame; struct ft_sess* sess; } ;
struct fc_frame {int dummy; } ;


 int fc_frame_free (struct fc_frame*) ;
 int fc_seq_release (scalar_t__) ;
 scalar_t__ fr_seq (struct fc_frame*) ;
 int ft_sess_put (struct ft_sess*) ;
 int target_free_tag (int ,int *) ;

__attribute__((used)) static void ft_free_cmd(struct ft_cmd *cmd)
{
 struct fc_frame *fp;
 struct ft_sess *sess;

 if (!cmd)
  return;
 sess = cmd->sess;
 fp = cmd->req_frame;
 if (fr_seq(fp))
  fc_seq_release(fr_seq(fp));
 fc_frame_free(fp);
 target_free_tag(sess->se_sess, &cmd->se_cmd);
 ft_sess_put(sess);
}
