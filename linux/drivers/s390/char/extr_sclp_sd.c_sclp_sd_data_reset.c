
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_sd_data {scalar_t__ esize_bytes; scalar_t__ dsize_bytes; int * data; } ;


 int vfree (int *) ;

__attribute__((used)) static void sclp_sd_data_reset(struct sclp_sd_data *data)
{
 vfree(data->data);
 data->data = ((void*)0);
 data->dsize_bytes = 0;
 data->esize_bytes = 0;
}
