
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qla27xx_fwdt_template {int* driver_info; } ;


 int WARN_ON_ONCE (int) ;
 int qla2x00_version_str ;
 int sscanf (int ,char*,int*,int*,int*,int*,int*,int*) ;

__attribute__((used)) static void
qla27xx_driver_info(struct qla27xx_fwdt_template *tmp)
{
 uint8_t v[] = { 0, 0, 0, 0, 0, 0 };

 WARN_ON_ONCE(sscanf(qla2x00_version_str,
       "%hhu.%hhu.%hhu.%hhu.%hhu.%hhu",
       v+0, v+1, v+2, v+3, v+4, v+5) != 6);

 tmp->driver_info[0] = v[3] << 24 | v[2] << 16 | v[1] << 8 | v[0];
 tmp->driver_info[1] = v[5] << 8 | v[4];
 tmp->driver_info[2] = 0x12345678;
}
