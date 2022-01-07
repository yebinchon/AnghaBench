
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_sd_file {int dummy; } ;
typedef int async_cookie_t ;


 int sclp_sd_file_update (struct sclp_sd_file*) ;

__attribute__((used)) static void sclp_sd_file_update_async(void *data, async_cookie_t cookie)
{
 struct sclp_sd_file *sd_file = data;

 sclp_sd_file_update(sd_file);
}
