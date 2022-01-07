
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_struct {int dummy; } ;
typedef void sti_glob_cfg ;


 unsigned long STI_PTR (void*) ;
 scalar_t__ WARN_ONCE (int,char*) ;
 int pdc_sti_call (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;

int sti_call(const struct sti_struct *sti, unsigned long func,
  const void *flags, void *inptr, void *outptr,
  struct sti_glob_cfg *glob_cfg)
{
 unsigned long _flags = STI_PTR(flags);
 unsigned long _inptr = STI_PTR(inptr);
 unsigned long _outptr = STI_PTR(outptr);
 unsigned long _glob_cfg = STI_PTR(glob_cfg);
 int ret;
 ret = pdc_sti_call(func, _flags, _inptr, _outptr, _glob_cfg);

 return ret;
}
