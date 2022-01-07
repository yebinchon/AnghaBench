
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_page (unsigned long) ;
 int hwrng_unregister (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ zcrypt_rng_buffer ;
 int zcrypt_rng_dev ;
 scalar_t__ zcrypt_rng_device_count ;
 int zcrypt_rng_mutex ;

void zcrypt_rng_device_remove(void)
{
 mutex_lock(&zcrypt_rng_mutex);
 zcrypt_rng_device_count--;
 if (zcrypt_rng_device_count == 0) {
  hwrng_unregister(&zcrypt_rng_dev);
  free_page((unsigned long) zcrypt_rng_buffer);
 }
 mutex_unlock(&zcrypt_rng_mutex);
}
