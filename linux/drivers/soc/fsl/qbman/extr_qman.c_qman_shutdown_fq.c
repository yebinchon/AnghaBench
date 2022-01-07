
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int fqs; } ;
struct TYPE_7__ {int fqd; } ;
struct TYPE_6__ {int state; } ;
union qm_mc_result {int verb; scalar_t__ result; TYPE_4__ alterfq; TYPE_3__ queryfq; TYPE_2__ queryfq_np; } ;
union qm_mc_command {int fq; } ;
typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct qman_portal {int sdqcr; int p; TYPE_1__* config; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device* dev; } ;


 int DPAA_ASSERT (int) ;
 int EBUSY ;
 int EIO ;
 int ETIMEDOUT ;
 int FQRL ;
 int FQRN ;
 int FQ_EMPTY ;
 int QM_MCC_VERB_ALTER_OOS ;
 int QM_MCC_VERB_ALTER_RETIRE ;
 int QM_MCC_VERB_QUERYFQ ;
 int QM_MCC_VERB_QUERYFQ_NP ;
 int QM_MCR_FQS_NOTEMPTY ;
 int QM_MCR_FQS_ORLPRESENT ;

 int QM_MCR_NP_STATE_MASK ;





 scalar_t__ QM_MCR_RESULT_OK ;
 scalar_t__ QM_MCR_RESULT_PENDING ;
 int QM_MCR_VERB_ALTER_OOS ;
 int QM_MCR_VERB_ALTER_RETIRE ;
 int QM_MCR_VERB_MASK ;
 int QM_MCR_VERB_QUERYFQ ;
 int QM_MCR_VERB_QUERYFQ_NP ;
 int QM_SDQCR_CHANNELS_DEDICATED ;
 int QM_SDQCR_CHANNELS_POOL_CONV (scalar_t__) ;
 int QM_SDQCR_TYPE_ACTIVE ;
 scalar_t__ QM_VDQCR_NUMFRAMES_SET (int) ;
 int cpu_relax () ;
 int dev_err (struct device*,char*,...) ;
 int drain_mr_fqrni (int *) ;
 struct qman_portal* get_affine_portal () ;
 struct qman_portal* get_portal_for_channel (scalar_t__) ;
 int put_affine_portal () ;
 scalar_t__ qm_channel_pool1 ;
 int qm_dqrr_drain_nomatch (int *) ;
 int qm_dqrr_drain_wait (int *,scalar_t__,int ) ;
 int qm_dqrr_sdqcr_set (int *,int) ;
 int qm_dqrr_vdqcr_set (int *,scalar_t__) ;
 scalar_t__ qm_fqd_get_chan (int *) ;
 scalar_t__ qm_fqd_get_wq (int *) ;
 int qm_fqid_set (int *,scalar_t__) ;
 int qm_mc_commit (int *,int ) ;
 int qm_mc_result_timeout (int *,union qm_mc_result**) ;
 union qm_mc_command* qm_mc_start (int *) ;
 int qm_mr_drain (int *,int ) ;

int qman_shutdown_fq(u32 fqid)
{
 struct qman_portal *p, *channel_portal;
 struct device *dev;
 union qm_mc_command *mcc;
 union qm_mc_result *mcr;
 int orl_empty, drain = 0, ret = 0;
 u32 channel, wq, res;
 u8 state;

 p = get_affine_portal();
 dev = p->config->dev;

 mcc = qm_mc_start(&p->p);
 qm_fqid_set(&mcc->fq, fqid);
 qm_mc_commit(&p->p, QM_MCC_VERB_QUERYFQ_NP);
 if (!qm_mc_result_timeout(&p->p, &mcr)) {
  dev_err(dev, "QUERYFQ_NP timeout\n");
  ret = -ETIMEDOUT;
  goto out;
 }

 DPAA_ASSERT((mcr->verb & QM_MCR_VERB_MASK) == QM_MCR_VERB_QUERYFQ_NP);
 state = mcr->queryfq_np.state & QM_MCR_NP_STATE_MASK;
 if (state == 132)
  goto out;


 mcc = qm_mc_start(&p->p);
 qm_fqid_set(&mcc->fq, fqid);
 qm_mc_commit(&p->p, QM_MCC_VERB_QUERYFQ);
 if (!qm_mc_result_timeout(&p->p, &mcr)) {
  dev_err(dev, "QUERYFQ timeout\n");
  ret = -ETIMEDOUT;
  goto out;
 }

 DPAA_ASSERT((mcr->verb & QM_MCR_VERB_MASK) == QM_MCR_VERB_QUERYFQ);

 channel = qm_fqd_get_chan(&mcr->queryfq.fqd);
 wq = qm_fqd_get_wq(&mcr->queryfq.fqd);

 if (channel < qm_channel_pool1) {
  channel_portal = get_portal_for_channel(channel);
  if (channel_portal == ((void*)0)) {
   dev_err(dev, "Can't find portal for dedicated channel 0x%x\n",
    channel);
   ret = -EIO;
   goto out;
  }
 } else
  channel_portal = p;

 switch (state) {
 case 129:
 case 128:
 case 133:
 case 131:
  orl_empty = 0;
  mcc = qm_mc_start(&channel_portal->p);
  qm_fqid_set(&mcc->fq, fqid);
  qm_mc_commit(&channel_portal->p, QM_MCC_VERB_ALTER_RETIRE);
  if (!qm_mc_result_timeout(&channel_portal->p, &mcr)) {
   dev_err(dev, "ALTER_RETIRE timeout\n");
   ret = -ETIMEDOUT;
   goto out;
  }
  DPAA_ASSERT((mcr->verb & QM_MCR_VERB_MASK) ==
       QM_MCR_VERB_ALTER_RETIRE);
  res = mcr->result;

  if (res == QM_MCR_RESULT_OK)
   drain_mr_fqrni(&channel_portal->p);

  if (res == QM_MCR_RESULT_PENDING) {






   int found_fqrn = 0;
   u16 dequeue_wq = 0;


   drain = 1;

   if (channel >= qm_channel_pool1 &&
       channel < qm_channel_pool1 + 15) {

    dequeue_wq = (channel -
           qm_channel_pool1 + 1)<<4 | wq;
   } else if (channel < qm_channel_pool1) {

    dequeue_wq = wq;
   } else {
    dev_err(dev, "Can't recover FQ 0x%x, ch: 0x%x",
     fqid, channel);
    ret = -EBUSY;
    goto out;
   }

   if (channel < qm_channel_pool1)
    qm_dqrr_sdqcr_set(&channel_portal->p,
        QM_SDQCR_TYPE_ACTIVE |
        QM_SDQCR_CHANNELS_DEDICATED);
   else
    qm_dqrr_sdqcr_set(&channel_portal->p,
        QM_SDQCR_TYPE_ACTIVE |
        QM_SDQCR_CHANNELS_POOL_CONV
        (channel));
   do {

    qm_dqrr_drain_nomatch(&channel_portal->p);

    found_fqrn = qm_mr_drain(&channel_portal->p,
        FQRN);
    cpu_relax();
   } while (!found_fqrn);

   qm_dqrr_sdqcr_set(&channel_portal->p,
       channel_portal->sdqcr);

  }
  if (res != QM_MCR_RESULT_OK &&
      res != QM_MCR_RESULT_PENDING) {
   dev_err(dev, "retire_fq failed: FQ 0x%x, res=0x%x\n",
    fqid, res);
   ret = -EIO;
   goto out;
  }
  if (!(mcr->alterfq.fqs & QM_MCR_FQS_ORLPRESENT)) {




   orl_empty = 1;
  }




  if (drain || mcr->alterfq.fqs & QM_MCR_FQS_NOTEMPTY) {

   do {
    u32 vdqcr = fqid | QM_VDQCR_NUMFRAMES_SET(3);

    qm_dqrr_vdqcr_set(&p->p, vdqcr);




   } while (!qm_dqrr_drain_wait(&p->p, fqid, FQ_EMPTY));
  }

  while (!orl_empty) {

   orl_empty = qm_mr_drain(&p->p, FQRL);
   cpu_relax();
  }
  mcc = qm_mc_start(&p->p);
  qm_fqid_set(&mcc->fq, fqid);
  qm_mc_commit(&p->p, QM_MCC_VERB_ALTER_OOS);
  if (!qm_mc_result_timeout(&p->p, &mcr)) {
   ret = -ETIMEDOUT;
   goto out;
  }

  DPAA_ASSERT((mcr->verb & QM_MCR_VERB_MASK) ==
       QM_MCR_VERB_ALTER_OOS);
  if (mcr->result != QM_MCR_RESULT_OK) {
   dev_err(dev, "OOS after drain fail: FQ 0x%x (0x%x)\n",
    fqid, mcr->result);
   ret = -EIO;
   goto out;
  }
  break;

 case 130:

  mcc = qm_mc_start(&p->p);
  qm_fqid_set(&mcc->fq, fqid);
  qm_mc_commit(&p->p, QM_MCC_VERB_ALTER_OOS);
  if (!qm_mc_result_timeout(&p->p, &mcr)) {
   ret = -ETIMEDOUT;
   goto out;
  }

  DPAA_ASSERT((mcr->verb & QM_MCR_VERB_MASK) ==
       QM_MCR_VERB_ALTER_OOS);
  if (mcr->result != QM_MCR_RESULT_OK) {
   dev_err(dev, "OOS fail: FQ 0x%x (0x%x)\n",
    fqid, mcr->result);
   ret = -EIO;
   goto out;
  }
  break;

 case 132:

  break;

 default:
  ret = -EIO;
 }

out:
 put_affine_portal();
 return ret;
}
