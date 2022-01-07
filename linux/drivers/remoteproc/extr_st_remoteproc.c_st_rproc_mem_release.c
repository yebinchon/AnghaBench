
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc_mem_entry {int va; } ;
struct rproc {int dummy; } ;


 int iounmap (int ) ;

__attribute__((used)) static int st_rproc_mem_release(struct rproc *rproc,
    struct rproc_mem_entry *mem)
{
 iounmap(mem->va);

 return 0;
}
