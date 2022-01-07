
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_shm {int dummy; } ;
struct tee_context {int dummy; } ;
struct page {int dummy; } ;


 int check_mem_type (unsigned long,size_t) ;

int optee_shm_register_supp(struct tee_context *ctx, struct tee_shm *shm,
       struct page **pages, size_t num_pages,
       unsigned long start)
{




 return check_mem_type(start, num_pages);
}
