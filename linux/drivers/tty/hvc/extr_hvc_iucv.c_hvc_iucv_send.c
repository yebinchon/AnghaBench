
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_4__ {int length; } ;
struct iucv_tty_buffer {int list; TYPE_2__ msg; TYPE_1__* mbuf; } ;
struct hvc_iucv_private {scalar_t__ iucv_state; int sndbuf_len; int path; int tty_outqueue; int sndbuf; } ;
struct TYPE_3__ {scalar_t__ datalen; int data; } ;


 int EIO ;
 int ENOMEM ;
 int EPIPE ;
 int GFP_ATOMIC ;
 scalar_t__ IUCV_DISCONN ;
 scalar_t__ IUCV_SEVERED ;
 int MSG_SIZE (scalar_t__) ;
 int __iucv_message_send (int ,TYPE_2__*,int ,int ,void*,int ) ;
 struct iucv_tty_buffer* alloc_tty_buffer (int,int ) ;
 int destroy_tty_buffer (struct iucv_tty_buffer*) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static int hvc_iucv_send(struct hvc_iucv_private *priv)
{
 struct iucv_tty_buffer *sb;
 int rc, len;

 if (priv->iucv_state == IUCV_SEVERED)
  return -EPIPE;

 if (priv->iucv_state == IUCV_DISCONN)
  return -EIO;

 if (!priv->sndbuf_len)
  return 0;



 sb = alloc_tty_buffer(priv->sndbuf_len, GFP_ATOMIC);
 if (!sb)
  return -ENOMEM;

 memcpy(sb->mbuf->data, priv->sndbuf, priv->sndbuf_len);
 sb->mbuf->datalen = (u16) priv->sndbuf_len;
 sb->msg.length = MSG_SIZE(sb->mbuf->datalen);

 list_add_tail(&sb->list, &priv->tty_outqueue);

 rc = __iucv_message_send(priv->path, &sb->msg, 0, 0,
     (void *) sb->mbuf, sb->msg.length);
 if (rc) {


  list_del(&sb->list);
  destroy_tty_buffer(sb);
 }
 len = priv->sndbuf_len;
 priv->sndbuf_len = 0;

 return len;
}
