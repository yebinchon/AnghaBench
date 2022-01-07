
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {int size; int num; } ;
struct TYPE_5__ {int size; int num; } ;
struct TYPE_4__ {int alignment; int size; int num; } ;
struct vchiq_mmal_port {TYPE_3__ current_buffer; TYPE_2__ recommended_buffer; TYPE_1__ minimum_buffer; int enabled; int index; int type; } ;
struct mmal_port {scalar_t__ userdata; int buffer_size; int buffer_num; int buffer_size_recommended; int buffer_num_recommended; int buffer_alignment_min; int buffer_size_min; int buffer_num_min; int is_enabled; scalar_t__ index_all; int index; int type; } ;



__attribute__((used)) static void port_to_mmal_msg(struct vchiq_mmal_port *port, struct mmal_port *p)
{

 p->type = port->type;
 p->index = port->index;
 p->index_all = 0;
 p->is_enabled = port->enabled;
 p->buffer_num_min = port->minimum_buffer.num;
 p->buffer_size_min = port->minimum_buffer.size;
 p->buffer_alignment_min = port->minimum_buffer.alignment;
 p->buffer_num_recommended = port->recommended_buffer.num;
 p->buffer_size_recommended = port->recommended_buffer.size;


 p->buffer_num = port->current_buffer.num;
 p->buffer_size = port->current_buffer.size;
 p->userdata = (u32)(unsigned long)port;
}
