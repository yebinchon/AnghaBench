
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct be_queue_info {int used; } ;
struct TYPE_2__ {struct be_queue_info q; } ;
struct be_ctrl_info {unsigned int* mcc_tag; size_t mcc_free_index; int mcc_lock; int mcc_tag_available; TYPE_1__ mcc_obj; } ;


 int MAX_MCC_CMD ;
 unsigned int MCC_Q_CMD_TAG_MASK ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void free_mcc_wrb(struct be_ctrl_info *ctrl, unsigned int tag)
{
 struct be_queue_info *mccq = &ctrl->mcc_obj.q;

 spin_lock(&ctrl->mcc_lock);
 tag = tag & MCC_Q_CMD_TAG_MASK;
 ctrl->mcc_tag[ctrl->mcc_free_index] = tag;
 if (ctrl->mcc_free_index == (MAX_MCC_CMD - 1))
  ctrl->mcc_free_index = 0;
 else
  ctrl->mcc_free_index++;
 ctrl->mcc_tag_available++;
 mccq->used--;
 spin_unlock(&ctrl->mcc_lock);
}
