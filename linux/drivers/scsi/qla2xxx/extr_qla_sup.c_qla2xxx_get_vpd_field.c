
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct qla_hw_data {int* vpd; int vpd_size; } ;
struct TYPE_3__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int IS_FWI2_CAPABLE (struct qla_hw_data*) ;
 int qla2xxx_is_vpd_valid (int*,int*) ;
 int scnprintf (char*,size_t,char*,int,int*) ;
 int strlen (char*) ;
 int strncmp (int*,char*,int ) ;

int
qla2xxx_get_vpd_field(scsi_qla_host_t *vha, char *key, char *str, size_t size)
{
 struct qla_hw_data *ha = vha->hw;
 uint8_t *pos = ha->vpd;
 uint8_t *end = pos + ha->vpd_size;
 int len = 0;

 if (!IS_FWI2_CAPABLE(ha) || !qla2xxx_is_vpd_valid(pos, end))
  return 0;

 while (pos < end && *pos != 0x78) {
  len = (*pos == 0x82) ? pos[1] : pos[2];

  if (!strncmp(pos, key, strlen(key)))
   break;

  if (*pos != 0x90 && *pos != 0x91)
   pos += len;

  pos += 3;
 }

 if (pos < end - len && *pos != 0x78)
  return scnprintf(str, size, "%.*s", len, pos + 3);

 return 0;
}
