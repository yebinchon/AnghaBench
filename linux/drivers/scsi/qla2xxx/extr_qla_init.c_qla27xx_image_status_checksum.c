
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int uint32_t ;
typedef int uint ;
struct qla27xx_image_status {int dummy; } ;


 scalar_t__ le32_to_cpup (int *) ;

__attribute__((used)) static ulong
qla27xx_image_status_checksum(struct qla27xx_image_status *image_status)
{
 uint32_t *p = (void *)image_status;
 uint n = sizeof(*image_status) / sizeof(*p);
 uint32_t sum = 0;

 for ( ; n--; p++)
  sum += le32_to_cpup(p);

 return sum;
}
