
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snic_disc {int * cb; int * rtgt_info; scalar_t__ rtgt_cnt; scalar_t__ req_cnt; int state; scalar_t__ nxt_tgt_id; scalar_t__ disc_id; int mutex; int tgt_list; } ;


 int INIT_LIST_HEAD (int *) ;
 int SNIC_DISC_INIT ;
 int mutex_init (int *) ;

void
snic_disc_init(struct snic_disc *disc)
{
 INIT_LIST_HEAD(&disc->tgt_list);
 mutex_init(&disc->mutex);
 disc->disc_id = 0;
 disc->nxt_tgt_id = 0;
 disc->state = SNIC_DISC_INIT;
 disc->req_cnt = 0;
 disc->rtgt_cnt = 0;
 disc->rtgt_info = ((void*)0);
 disc->cb = ((void*)0);
}
