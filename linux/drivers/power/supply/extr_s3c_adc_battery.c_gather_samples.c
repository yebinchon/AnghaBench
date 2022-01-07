
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c_adc_client {int dummy; } ;


 scalar_t__ s3c_adc_read (struct s3c_adc_client*,int) ;

__attribute__((used)) static int gather_samples(struct s3c_adc_client *client, int num, int channel)
{
 int value, i;


 if (num < 1)
  num = 1;

 value = 0;
 for (i = 0; i < num; i++)
  value += s3c_adc_read(client, channel);
 value /= num;

 return value;
}
