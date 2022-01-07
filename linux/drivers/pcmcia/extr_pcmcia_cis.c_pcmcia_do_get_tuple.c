
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int TupleDataLen; int TupleData; } ;
typedef TYPE_1__ tuple_t ;
struct pcmcia_loop_get {scalar_t__* buf; int len; } ;
struct pcmcia_device {int dev; } ;


 int GFP_KERNEL ;
 int dev_dbg (int *,char*) ;
 scalar_t__ kzalloc (int ,int ) ;
 int memcpy (scalar_t__,int ,int ) ;

__attribute__((used)) static int pcmcia_do_get_tuple(struct pcmcia_device *p_dev, tuple_t *tuple,
          void *priv)
{
 struct pcmcia_loop_get *get = priv;

 *get->buf = kzalloc(tuple->TupleDataLen, GFP_KERNEL);
 if (*get->buf) {
  get->len = tuple->TupleDataLen;
  memcpy(*get->buf, tuple->TupleData, tuple->TupleDataLen);
 } else
  dev_dbg(&p_dev->dev, "do_get_tuple: out of memory\n");
 return 0;
}
