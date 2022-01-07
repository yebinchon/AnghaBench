
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcove_typec {int regmap; } ;
struct tcpc_dev {int dummy; } ;


 int USBC_PDCFG2 ;
 int USBC_PDCFG2_SOP ;
 int regmap_write (int ,int ,int ) ;
 struct wcove_typec* tcpc_to_wcove (struct tcpc_dev*) ;

__attribute__((used)) static int wcove_set_pd_rx(struct tcpc_dev *tcpc, bool on)
{
 struct wcove_typec *wcove = tcpc_to_wcove(tcpc);

 return regmap_write(wcove->regmap, USBC_PDCFG2,
       on ? USBC_PDCFG2_SOP : 0);
}
