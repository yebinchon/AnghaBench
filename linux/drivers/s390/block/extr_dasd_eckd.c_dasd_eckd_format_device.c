
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct format_data_t {int dummy; } ;
struct dasd_device {int dummy; } ;


 int dasd_eckd_format_process_data (struct dasd_device*,struct format_data_t*,int,int ,int *,int ,int *) ;

__attribute__((used)) static int dasd_eckd_format_device(struct dasd_device *base,
       struct format_data_t *fdata, int enable_pav)
{
 return dasd_eckd_format_process_data(base, fdata, enable_pav, 0, ((void*)0),
          0, ((void*)0));
}
