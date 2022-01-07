
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct qla27xx_image_status {int bitmap; } ;


 int QLA27XX_PRIMARY_IMAGE ;
 int QLA27XX_SECONDARY_IMAGE ;

__attribute__((used)) static inline uint
qla28xx_component_bitmask(struct qla27xx_image_status *aux, uint bitmask)
{
 return aux->bitmap & bitmask ?
     QLA27XX_SECONDARY_IMAGE : QLA27XX_PRIMARY_IMAGE;
}
