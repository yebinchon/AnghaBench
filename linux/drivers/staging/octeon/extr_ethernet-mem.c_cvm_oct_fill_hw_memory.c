
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_ATOMIC ;
 int cvmx_fpa_free (char*,int,int ) ;
 char* kmalloc (int,int ) ;
 int pr_warn (char*,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int cvm_oct_fill_hw_memory(int pool, int size, int elements)
{
 char *memory;
 char *fpa;
 int freed = elements;

 while (freed) {
  memory = kmalloc(size + 256, GFP_ATOMIC);
  if (unlikely(!memory)) {
   pr_warn("Unable to allocate %u bytes for FPA pool %d\n",
    elements * size, pool);
   break;
  }
  fpa = (char *)(((unsigned long)memory + 256) & ~0x7fUL);
  *((char **)fpa - 1) = memory;
  cvmx_fpa_free(fpa, pool, 0);
  freed--;
 }
 return elements - freed;
}
