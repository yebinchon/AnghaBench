
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smp2p_smem_item {unsigned int remote_pid; int version; scalar_t__ valid_entries; int total_entries; int local_pid; int magic; } ;
struct qcom_smp2p {unsigned int* smem_items; unsigned int remote_pid; struct smp2p_smem_item* out; int local_pid; int dev; } ;


 int EEXIST ;
 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (struct smp2p_smem_item*) ;
 int PTR_ERR (struct smp2p_smem_item*) ;
 int SMP2P_MAGIC ;
 int SMP2P_MAX_ENTRY ;
 size_t SMP2P_OUTBOUND ;
 int dev_err (int ,char*) ;
 int memset (struct smp2p_smem_item*,int ,int) ;
 int qcom_smem_alloc (unsigned int,unsigned int,int) ;
 struct smp2p_smem_item* qcom_smem_get (unsigned int,unsigned int,int *) ;
 int qcom_smp2p_kick (struct qcom_smp2p*) ;
 int wmb () ;

__attribute__((used)) static int qcom_smp2p_alloc_outbound_item(struct qcom_smp2p *smp2p)
{
 struct smp2p_smem_item *out;
 unsigned smem_id = smp2p->smem_items[SMP2P_OUTBOUND];
 unsigned pid = smp2p->remote_pid;
 int ret;

 ret = qcom_smem_alloc(pid, smem_id, sizeof(*out));
 if (ret < 0 && ret != -EEXIST) {
  if (ret != -EPROBE_DEFER)
   dev_err(smp2p->dev,
    "unable to allocate local smp2p item\n");
  return ret;
 }

 out = qcom_smem_get(pid, smem_id, ((void*)0));
 if (IS_ERR(out)) {
  dev_err(smp2p->dev, "Unable to acquire local smp2p item\n");
  return PTR_ERR(out);
 }

 memset(out, 0, sizeof(*out));
 out->magic = SMP2P_MAGIC;
 out->local_pid = smp2p->local_pid;
 out->remote_pid = smp2p->remote_pid;
 out->total_entries = SMP2P_MAX_ENTRY;
 out->valid_entries = 0;





 wmb();
 out->version = 1;

 qcom_smp2p_kick(smp2p);

 smp2p->out = out;

 return 0;
}
