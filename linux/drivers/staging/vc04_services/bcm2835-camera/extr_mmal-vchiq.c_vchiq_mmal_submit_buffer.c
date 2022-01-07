
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_mmal_port {int slock; int buffers; } ;
struct vchiq_mmal_instance {int dummy; } ;
struct mmal_buffer {int list; } ;


 int EINVAL ;
 int buffer_from_host (struct vchiq_mmal_instance*,struct vchiq_mmal_port*,struct mmal_buffer*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int vchiq_mmal_submit_buffer(struct vchiq_mmal_instance *instance,
        struct vchiq_mmal_port *port,
        struct mmal_buffer *buffer)
{
 unsigned long flags = 0;
 int ret;

 ret = buffer_from_host(instance, port, buffer);
 if (ret == -EINVAL) {

  spin_lock_irqsave(&port->slock, flags);
  list_add_tail(&buffer->list, &port->buffers);
  spin_unlock_irqrestore(&port->slock, flags);
 }

 return 0;
}
