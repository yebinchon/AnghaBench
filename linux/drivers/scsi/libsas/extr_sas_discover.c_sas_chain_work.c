
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_work {int work; } ;
struct sas_ha_struct {int disco_q; } ;


 int queue_work (int ,int *) ;

__attribute__((used)) static void sas_chain_work(struct sas_ha_struct *ha, struct sas_work *sw)
{





 queue_work(ha->disco_q, &sw->work);
}
