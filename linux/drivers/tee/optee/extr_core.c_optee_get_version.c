
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_ioctl_version_data {int gen_caps; int impl_caps; int impl_id; } ;
struct tee_device {int dummy; } ;
struct optee {int sec_caps; } ;


 int OPTEE_SMC_SEC_CAP_DYNAMIC_SHM ;
 int TEE_GEN_CAP_GP ;
 int TEE_GEN_CAP_REG_MEM ;
 int TEE_IMPL_ID_OPTEE ;
 int TEE_OPTEE_CAP_TZ ;
 struct optee* tee_get_drvdata (struct tee_device*) ;

__attribute__((used)) static void optee_get_version(struct tee_device *teedev,
         struct tee_ioctl_version_data *vers)
{
 struct tee_ioctl_version_data v = {
  .impl_id = TEE_IMPL_ID_OPTEE,
  .impl_caps = TEE_OPTEE_CAP_TZ,
  .gen_caps = TEE_GEN_CAP_GP,
 };
 struct optee *optee = tee_get_drvdata(teedev);

 if (optee->sec_caps & OPTEE_SMC_SEC_CAP_DYNAMIC_SHM)
  v.gen_caps |= TEE_GEN_CAP_REG_MEM;
 *vers = v;
}
