
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410fb_info {scalar_t__ drv_type; } ;


 scalar_t__ DRV_S3C2412 ;

__attribute__((used)) static int is_s3c2412(struct s3c2410fb_info *fbi)
{
 return (fbi->drv_type == DRV_S3C2412);
}
