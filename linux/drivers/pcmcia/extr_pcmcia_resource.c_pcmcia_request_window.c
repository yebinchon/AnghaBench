
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
struct resource {int end; int start; int flags; TYPE_4__* parent; } ;
struct pcmcia_socket {int state; int map_size; int features; int ops_mutex; TYPE_1__* ops; TYPE_2__* win; } ;
struct pcmcia_device {int dev; int _win; struct pcmcia_socket* socket; } ;
struct TYPE_6__ {int map; int flags; unsigned int speed; int static_start; TYPE_4__* res; scalar_t__ card_start; } ;
typedef TYPE_2__ pccard_mem_map ;
struct TYPE_7__ {int start; } ;
struct TYPE_5__ {scalar_t__ (* set_mem_map ) (struct pcmcia_socket*,TYPE_2__*) ;} ;


 int CLIENT_WIN_REQ (int) ;
 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int IORESOURCE_MEM ;
 int MAX_WIN ;
 int SOCKET_PRESENT ;
 int SOCKET_WIN_REQ (int) ;
 int SS_CAP_MEM_ALIGN ;
 int SS_CAP_STATIC_MAP ;
 int WIN_FLAGS_MAP ;
 int WIN_FLAGS_REQ ;
 int dev_dbg (int *,char*,...) ;
 int iomem_resource ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_4__* pcmcia_find_mem_region (int,int,int,int ,struct pcmcia_socket*) ;
 int request_resource (int *,struct resource*) ;
 scalar_t__ stub1 (struct pcmcia_socket*,TYPE_2__*) ;

int pcmcia_request_window(struct pcmcia_device *p_dev, struct resource *res,
   unsigned int speed)
{
 struct pcmcia_socket *s = p_dev->socket;
 pccard_mem_map *win;
 u_long align;
 int w;

 dev_dbg(&p_dev->dev, "request_window %pR %d\n", res, speed);

 if (!(s->state & SOCKET_PRESENT)) {
  dev_dbg(&p_dev->dev, "No card present\n");
  return -ENODEV;
 }


 if (res->end == 0)
  res->end = s->map_size;
 align = (s->features & SS_CAP_MEM_ALIGN) ? res->end : s->map_size;
 if (res->end & (s->map_size-1)) {
  dev_dbg(&p_dev->dev, "invalid map size\n");
  return -EINVAL;
 }
 if ((res->start && (s->features & SS_CAP_STATIC_MAP)) ||
     (res->start & (align-1))) {
  dev_dbg(&p_dev->dev, "invalid base address\n");
  return -EINVAL;
 }
 if (res->start)
  align = 0;


 mutex_lock(&s->ops_mutex);
 for (w = 0; w < MAX_WIN; w++)
  if (!(s->state & SOCKET_WIN_REQ(w)))
   break;
 if (w == MAX_WIN) {
  dev_dbg(&p_dev->dev, "all windows are used already\n");
  mutex_unlock(&s->ops_mutex);
  return -EINVAL;
 }

 win = &s->win[w];

 if (!(s->features & SS_CAP_STATIC_MAP)) {
  win->res = pcmcia_find_mem_region(res->start, res->end, align,
      0, s);
  if (!win->res) {
   dev_dbg(&p_dev->dev, "allocating mem region failed\n");
   mutex_unlock(&s->ops_mutex);
   return -EINVAL;
  }
 }
 p_dev->_win |= CLIENT_WIN_REQ(w);


 win->map = w+1;
 win->flags = res->flags & WIN_FLAGS_MAP;
 win->speed = speed;
 win->card_start = 0;

 if (s->ops->set_mem_map(s, win) != 0) {
  dev_dbg(&p_dev->dev, "failed to set memory mapping\n");
  mutex_unlock(&s->ops_mutex);
  return -EIO;
 }
 s->state |= SOCKET_WIN_REQ(w);


 if (s->features & SS_CAP_STATIC_MAP)
  res->start = win->static_start;
 else
  res->start = win->res->start;


 res->end += res->start - 1;
 res->flags &= ~WIN_FLAGS_REQ;
 res->flags |= (win->map << 2) | IORESOURCE_MEM;
 res->parent = win->res;
 if (win->res)
  request_resource(&iomem_resource, res);

 dev_dbg(&p_dev->dev, "request_window results in %pR\n", res);

 mutex_unlock(&s->ops_mutex);

 return 0;
}
