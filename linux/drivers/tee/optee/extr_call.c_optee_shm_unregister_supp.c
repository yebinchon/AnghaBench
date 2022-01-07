
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_shm {int dummy; } ;
struct tee_context {int dummy; } ;



int optee_shm_unregister_supp(struct tee_context *ctx, struct tee_shm *shm)
{
 return 0;
}
