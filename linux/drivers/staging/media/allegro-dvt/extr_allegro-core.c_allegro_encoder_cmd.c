
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_encoder_cmd {int cmd; } ;
struct file {int dummy; } ;
struct allegro_channel {int dummy; } ;


 int EINVAL ;


 int allegro_channel_cmd_start (struct allegro_channel*) ;
 int allegro_channel_cmd_stop (struct allegro_channel*) ;
 struct allegro_channel* fh_to_channel (void*) ;
 int v4l2_m2m_ioctl_try_encoder_cmd (struct file*,void*,struct v4l2_encoder_cmd*) ;

__attribute__((used)) static int allegro_encoder_cmd(struct file *file, void *fh,
          struct v4l2_encoder_cmd *cmd)
{
 struct allegro_channel *channel = fh_to_channel(fh);
 int err;

 err = v4l2_m2m_ioctl_try_encoder_cmd(file, fh, cmd);
 if (err)
  return err;

 switch (cmd->cmd) {
 case 128:
  err = allegro_channel_cmd_stop(channel);
  break;
 case 129:
  err = allegro_channel_cmd_start(channel);
  break;
 default:
  err = -EINVAL;
  break;
 }

 return err;
}
