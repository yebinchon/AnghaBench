
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tee_shm {int dummy; } ;
struct tee_context {int teedev; } ;


 struct tee_shm* __tee_shm_alloc (struct tee_context*,int ,size_t,int ) ;

struct tee_shm *tee_shm_alloc(struct tee_context *ctx, size_t size, u32 flags)
{
 return __tee_shm_alloc(ctx, ctx->teedev, size, flags);
}
