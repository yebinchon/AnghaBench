
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le32 ;


 int le32_to_cpu (int ) ;
 int pr_info (char*,...) ;

__attribute__((used)) static inline void
_debug_dump_reply(void *mpi_request, int sz)
{
 int i;
 __le32 *mfp = (__le32 *)mpi_request;

 pr_info("reply:\n\t");
 for (i = 0; i < sz; i++) {
  if (i && ((i % 8) == 0))
   pr_info("\n\t");
  pr_info("%08x ", le32_to_cpu(mfp[i]));
 }
 pr_info("\n");
}
