
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hwrng {int dummy; } ;


 int EIO ;
 int ENODEV ;
 scalar_t__ zcrypt_process_rescan () ;
 int zcrypt_rng (char*) ;
 int * zcrypt_rng_buffer ;
 size_t zcrypt_rng_buffer_index ;

__attribute__((used)) static int zcrypt_rng_data_read(struct hwrng *rng, u32 *data)
{
 int rc;





 if (zcrypt_rng_buffer_index == 0) {
  rc = zcrypt_rng((char *) zcrypt_rng_buffer);

  if ((rc == -ENODEV) && (zcrypt_process_rescan()))
   rc = zcrypt_rng((char *) zcrypt_rng_buffer);
  if (rc < 0)
   return -EIO;
  zcrypt_rng_buffer_index = rc / sizeof(*data);
 }
 *data = zcrypt_rng_buffer[--zcrypt_rng_buffer_index];
 return sizeof(*data);
}
