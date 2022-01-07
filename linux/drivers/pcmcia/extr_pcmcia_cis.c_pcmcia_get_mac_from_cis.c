
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dummy; } ;
struct net_device {int dummy; } ;


 int CISTPL_FUNCE ;
 int pcmcia_do_get_mac ;
 int pcmcia_loop_tuple (struct pcmcia_device*,int ,int ,struct net_device*) ;

int pcmcia_get_mac_from_cis(struct pcmcia_device *p_dev, struct net_device *dev)
{
 return pcmcia_loop_tuple(p_dev, CISTPL_FUNCE, pcmcia_do_get_mac, dev);
}
