
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pfn_array {int pa_nr; int* pa_pfn; int member_0; } ;
struct device {int dummy; } ;


 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int memcpy (void*,void*,unsigned long) ;
 unsigned long min (unsigned long,unsigned long) ;
 int pfn_array_alloc (struct pfn_array*,int,unsigned long) ;
 int pfn_array_pin (struct pfn_array*,struct device*) ;
 int pfn_array_unpin_free (struct pfn_array*,struct device*) ;

__attribute__((used)) static long copy_from_iova(struct device *mdev,
      void *to, u64 iova,
      unsigned long n)
{
 struct pfn_array pa = {0};
 u64 from;
 int i, ret;
 unsigned long l, m;

 ret = pfn_array_alloc(&pa, iova, n);
 if (ret < 0)
  return ret;

 ret = pfn_array_pin(&pa, mdev);
 if (ret < 0) {
  pfn_array_unpin_free(&pa, mdev);
  return ret;
 }

 l = n;
 for (i = 0; i < pa.pa_nr; i++) {
  from = pa.pa_pfn[i] << PAGE_SHIFT;
  m = PAGE_SIZE;
  if (i == 0) {
   from += iova & (PAGE_SIZE - 1);
   m -= iova & (PAGE_SIZE - 1);
  }

  m = min(l, m);
  memcpy(to + (n - l), (void *)from, m);

  l -= m;
  if (l == 0)
   break;
 }

 pfn_array_unpin_free(&pa, mdev);

 return l;
}
