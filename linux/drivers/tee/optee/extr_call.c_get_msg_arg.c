
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_shm {size_t num_params; } ;
struct tee_context {int dummy; } ;
struct optee_msg_arg {size_t num_params; } ;
typedef int phys_addr_t ;


 struct tee_shm* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct tee_shm*) ;
 int OPTEE_MSG_GET_ARG_SIZE (size_t) ;
 int PTR_ERR (struct tee_shm*) ;
 int TEE_SHM_MAPPED ;
 int memset (struct tee_shm*,int ,int ) ;
 struct tee_shm* tee_shm_alloc (struct tee_context*,int ,int ) ;
 int tee_shm_free (struct tee_shm*) ;
 int tee_shm_get_pa (struct tee_shm*,int ,int *) ;
 struct tee_shm* tee_shm_get_va (struct tee_shm*,int ) ;

__attribute__((used)) static struct tee_shm *get_msg_arg(struct tee_context *ctx, size_t num_params,
       struct optee_msg_arg **msg_arg,
       phys_addr_t *msg_parg)
{
 int rc;
 struct tee_shm *shm;
 struct optee_msg_arg *ma;

 shm = tee_shm_alloc(ctx, OPTEE_MSG_GET_ARG_SIZE(num_params),
       TEE_SHM_MAPPED);
 if (IS_ERR(shm))
  return shm;

 ma = tee_shm_get_va(shm, 0);
 if (IS_ERR(ma)) {
  rc = PTR_ERR(ma);
  goto out;
 }

 rc = tee_shm_get_pa(shm, 0, msg_parg);
 if (rc)
  goto out;

 memset(ma, 0, OPTEE_MSG_GET_ARG_SIZE(num_params));
 ma->num_params = num_params;
 *msg_arg = ma;
out:
 if (rc) {
  tee_shm_free(shm);
  return ERR_PTR(rc);
 }

 return shm;
}
