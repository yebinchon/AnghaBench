
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct file {int private_data; } ;
struct TYPE_3__ {int m2m_ctx; } ;
struct allegro_channel {TYPE_1__ fh; int ctrl_handler; int list; } ;


 struct allegro_channel* fh_to_channel (int ) ;
 int kfree (struct allegro_channel*) ;
 int list_del (int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_fh_del (TYPE_1__*) ;
 int v4l2_fh_exit (TYPE_1__*) ;
 int v4l2_m2m_ctx_release (int ) ;

__attribute__((used)) static int allegro_release(struct file *file)
{
 struct allegro_channel *channel = fh_to_channel(file->private_data);

 v4l2_m2m_ctx_release(channel->fh.m2m_ctx);

 list_del(&channel->list);

 v4l2_ctrl_handler_free(&channel->ctrl_handler);

 v4l2_fh_del(&channel->fh);
 v4l2_fh_exit(&channel->fh);

 kfree(channel);

 return 0;
}
