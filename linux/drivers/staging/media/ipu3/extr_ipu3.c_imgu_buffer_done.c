
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_buffer {int dummy; } ;
struct imgu_device {int lock; } ;
typedef enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;


 int imgu_v4l2_buffer_done (struct vb2_buffer*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void imgu_buffer_done(struct imgu_device *imgu, struct vb2_buffer *vb,
        enum vb2_buffer_state state)
{
 mutex_lock(&imgu->lock);
 imgu_v4l2_buffer_done(vb, state);
 mutex_unlock(&imgu->lock);
}
