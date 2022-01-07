
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sti_struct {int lock; int glob_cfg; int inq_conf; TYPE_1__* sti_data; } ;
struct sti_conf_outptr {int ext_ptr; } ;
struct sti_conf_inptr {int dummy; } ;
typedef int s32 ;
struct TYPE_2__ {int inq_outptr_ext; struct sti_conf_outptr inq_outptr; struct sti_conf_inptr inq_inptr; } ;


 int STI_PTR (int *) ;
 int default_conf_flags ;
 int memset (struct sti_conf_inptr*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sti_call (struct sti_struct*,int ,int *,struct sti_conf_inptr*,struct sti_conf_outptr*,int ) ;

__attribute__((used)) static void sti_inq_conf(struct sti_struct *sti)
{
 struct sti_conf_inptr *inptr = &sti->sti_data->inq_inptr;
 struct sti_conf_outptr *outptr = &sti->sti_data->inq_outptr;
 unsigned long flags;
 s32 ret;

 outptr->ext_ptr = STI_PTR(&sti->sti_data->inq_outptr_ext);

 do {
  spin_lock_irqsave(&sti->lock, flags);
  memset(inptr, 0, sizeof(*inptr));
  ret = sti_call(sti, sti->inq_conf, &default_conf_flags,
   inptr, outptr, sti->glob_cfg);
  spin_unlock_irqrestore(&sti->lock, flags);
 } while (ret == 1);
}
