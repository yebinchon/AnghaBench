
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int layer; } ;
struct qeth_card {TYPE_1__ options; TYPE_2__* gdev; void* discipline; } ;
typedef enum qeth_discipline_id { ____Placeholder_qeth_discipline_id } qeth_discipline_id ;
struct TYPE_4__ {int dev; } ;


 int EINVAL ;


 int dev_err (int *,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qeth_l2_discipline ;
 int qeth_l3_discipline ;
 int qeth_mod_mutex ;
 int symbol_get (int ) ;
 void* try_then_request_module (int ,char*) ;

int qeth_core_load_discipline(struct qeth_card *card,
  enum qeth_discipline_id discipline)
{
 mutex_lock(&qeth_mod_mutex);
 switch (discipline) {
 case 128:
  card->discipline = try_then_request_module(
   symbol_get(qeth_l3_discipline), "qeth_l3");
  break;
 case 129:
  card->discipline = try_then_request_module(
   symbol_get(qeth_l2_discipline), "qeth_l2");
  break;
 default:
  break;
 }
 mutex_unlock(&qeth_mod_mutex);

 if (!card->discipline) {
  dev_err(&card->gdev->dev, "There is no kernel module to "
   "support discipline %d\n", discipline);
  return -EINVAL;
 }

 card->options.layer = discipline;
 return 0;
}
