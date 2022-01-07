
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int ip_compute_csum (int *,int) ;

__attribute__((used)) static uint16_t
lpfc_bg_csum(uint8_t *data, int count)
{
 uint16_t ret;

 ret = ip_compute_csum(data, count);
 return ret;
}
