
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bbc_fan_control {int client; } ;


 int bbc_i2c_detach (int ) ;
 int kfree (struct bbc_fan_control*) ;

__attribute__((used)) static void destroy_one_fan(struct bbc_fan_control *fp)
{
 bbc_i2c_detach(fp->client);
 kfree(fp);
}
