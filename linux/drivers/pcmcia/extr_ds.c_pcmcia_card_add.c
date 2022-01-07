
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_socket {unsigned int functions; int dev; int ops_mutex; int resource_setup_done; } ;
struct TYPE_3__ {unsigned int nfn; } ;
typedef TYPE_1__ cistpl_longlink_mfc_t ;


 int BIND_FN_ALL ;
 int CISTPL_LONGLINK_MFC ;
 int EAGAIN ;
 int EIO ;
 int ENODEV ;
 int dev_dbg (int *,char*) ;
 int dev_info (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pccard_read_tuple (struct pcmcia_socket*,int ,int ,TYPE_1__*) ;
 int pccard_validate_cis (struct pcmcia_socket*,unsigned int*) ;
 int pcmcia_device_add (struct pcmcia_socket*,unsigned int) ;
 int pcmcia_replace_cis (struct pcmcia_socket*,char*,int) ;
 scalar_t__ pcmcia_validate_mem (struct pcmcia_socket*) ;

__attribute__((used)) static int pcmcia_card_add(struct pcmcia_socket *s)
{
 cistpl_longlink_mfc_t mfc;
 unsigned int no_funcs, i, no_chains;
 int ret = -EAGAIN;

 mutex_lock(&s->ops_mutex);
 if (!(s->resource_setup_done)) {
  dev_dbg(&s->dev,
      "no resources available, delaying card_add\n");
  mutex_unlock(&s->ops_mutex);
  return -EAGAIN;
 }

 if (pcmcia_validate_mem(s)) {
  dev_dbg(&s->dev, "validating mem resources failed, "
         "delaying card_add\n");
  mutex_unlock(&s->ops_mutex);
  return -EAGAIN;
 }
 mutex_unlock(&s->ops_mutex);

 ret = pccard_validate_cis(s, &no_chains);
 if (ret || !no_chains) {
  {
   dev_dbg(&s->dev, "invalid CIS or invalid resources\n");
   return -ENODEV;
  }
 }

 if (!pccard_read_tuple(s, BIND_FN_ALL, CISTPL_LONGLINK_MFC, &mfc))
  no_funcs = mfc.nfn;
 else
  no_funcs = 1;
 s->functions = no_funcs;

 for (i = 0; i < no_funcs; i++)
  pcmcia_device_add(s, i);

 return ret;
}
