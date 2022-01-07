
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;
struct qla27xx_image_status {int signature; } ;


 scalar_t__ QLA27XX_IMG_STATUS_SIGN ;
 scalar_t__ QLA28XX_IMG_STATUS_SIGN ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static bool
qla27xx_check_image_status_signature(struct qla27xx_image_status *image_status)
{
 ulong signature = le32_to_cpu(image_status->signature);

 return
     signature != QLA27XX_IMG_STATUS_SIGN &&
     signature != QLA28XX_IMG_STATUS_SIGN;
}
