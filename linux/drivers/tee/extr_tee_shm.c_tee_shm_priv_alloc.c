
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_shm {int dummy; } ;
struct tee_device {int dummy; } ;


 int TEE_SHM_MAPPED ;
 struct tee_shm* __tee_shm_alloc (int *,struct tee_device*,size_t,int ) ;

struct tee_shm *tee_shm_priv_alloc(struct tee_device *teedev, size_t size)
{
 return __tee_shm_alloc(((void*)0), teedev, size, TEE_SHM_MAPPED);
}
