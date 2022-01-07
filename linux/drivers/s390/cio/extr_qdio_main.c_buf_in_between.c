
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QDIO_MAX_BUFFERS_PER_Q ;
 int add_buf (int,int) ;

__attribute__((used)) static inline int buf_in_between(int bufnr, int start, int count)
{
 int end = add_buf(start, count);

 if (end > start) {
  if (bufnr >= start && bufnr < end)
   return 1;
  else
   return 0;
 }


 if ((bufnr >= start && bufnr <= QDIO_MAX_BUFFERS_PER_Q) ||
     (bufnr < end))
  return 1;
 else
  return 0;
}
