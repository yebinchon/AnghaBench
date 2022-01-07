
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
typedef int u32 ;
struct hisi_sas_itct {int dummy; } ;
struct hisi_sas_device {size_t device_id; int * completion; } ;
struct hisi_hba {struct hisi_sas_itct* itct; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int ENT_INT_SRC3 ;
 int ENT_INT_SRC3_ITC_INT_MSK ;
 int ITCT_CLR ;
 size_t ITCT_CLR_EN_MSK ;
 size_t ITCT_DEV_MSK ;
 int completion ;
 int hisi_sas_read32 (struct hisi_hba*,int ) ;
 int hisi_sas_write32 (struct hisi_hba*,int ,int) ;
 int memset (struct hisi_sas_itct*,int ,int) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void clear_itct_v3_hw(struct hisi_hba *hisi_hba,
         struct hisi_sas_device *sas_dev)
{
 DECLARE_COMPLETION_ONSTACK(completion);
 u64 dev_id = sas_dev->device_id;
 struct hisi_sas_itct *itct = &hisi_hba->itct[dev_id];
 u32 reg_val = hisi_sas_read32(hisi_hba, ENT_INT_SRC3);

 sas_dev->completion = &completion;


 if (ENT_INT_SRC3_ITC_INT_MSK & reg_val)
  hisi_sas_write32(hisi_hba, ENT_INT_SRC3,
     ENT_INT_SRC3_ITC_INT_MSK);


 reg_val = ITCT_CLR_EN_MSK | (dev_id & ITCT_DEV_MSK);
 hisi_sas_write32(hisi_hba, ITCT_CLR, reg_val);

 wait_for_completion(sas_dev->completion);
 memset(itct, 0, sizeof(struct hisi_sas_itct));
}
