
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sti_struct {int lock; int text_planes; int glob_cfg; int init_graph; TYPE_1__* sti_data; } ;
struct sti_init_outptr {int errno; int text_planes; } ;
struct sti_init_inptr_ext {int text_planes; int ext_ptr; } ;
struct sti_init_inptr {int text_planes; int ext_ptr; } ;
struct TYPE_2__ {struct sti_init_outptr init_outptr; struct sti_init_inptr_ext init_inptr_ext; struct sti_init_inptr_ext init_inptr; } ;


 int STI_PTR (struct sti_init_inptr_ext*) ;
 int default_init_flags ;
 int memset (struct sti_init_inptr_ext*,int ,int) ;
 int pr_err (char*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sti_call (struct sti_struct*,int ,int *,struct sti_init_inptr_ext*,struct sti_init_outptr*,int ) ;

__attribute__((used)) static int sti_init_graph(struct sti_struct *sti)
{
 struct sti_init_inptr *inptr = &sti->sti_data->init_inptr;
 struct sti_init_inptr_ext *inptr_ext = &sti->sti_data->init_inptr_ext;
 struct sti_init_outptr *outptr = &sti->sti_data->init_outptr;
 unsigned long flags;
 int ret, err;

 spin_lock_irqsave(&sti->lock, flags);

 memset(inptr, 0, sizeof(*inptr));
 inptr->text_planes = 3;
 memset(inptr_ext, 0, sizeof(*inptr_ext));
 inptr->ext_ptr = STI_PTR(inptr_ext);
 outptr->errno = 0;

 ret = sti_call(sti, sti->init_graph, &default_init_flags, inptr,
  outptr, sti->glob_cfg);

 if (ret >= 0)
  sti->text_planes = outptr->text_planes;
 err = outptr->errno;

 spin_unlock_irqrestore(&sti->lock, flags);

 if (ret < 0) {
  pr_err("STI init_graph failed (ret %d, errno %d)\n", ret, err);
  return -1;
 }

 return 0;
}
