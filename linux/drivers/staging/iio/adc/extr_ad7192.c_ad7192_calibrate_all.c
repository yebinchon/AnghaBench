
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7192_state {int sd; } ;


 int ARRAY_SIZE (int ) ;
 int ad7192_calib_arr ;
 int ad_sd_calibrate_all (int *,int ,int ) ;

__attribute__((used)) static int ad7192_calibrate_all(struct ad7192_state *st)
{
 return ad_sd_calibrate_all(&st->sd, ad7192_calib_arr,
       ARRAY_SIZE(ad7192_calib_arr));
}
