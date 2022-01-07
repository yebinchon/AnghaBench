
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_cl_device {int dummy; } ;
struct ishtp_cl_data {int work_ec_evt; int work_ishtp_reset; } ;
struct ishtp_cl {int dummy; } ;


 int cancel_work_sync (int *) ;
 int cros_ish_deinit (struct ishtp_cl*) ;
 struct ishtp_cl_data* ishtp_get_client_data (struct ishtp_cl*) ;
 struct ishtp_cl* ishtp_get_drvdata (struct ishtp_cl_device*) ;
 int ishtp_put_device (struct ishtp_cl_device*) ;

__attribute__((used)) static int cros_ec_ishtp_remove(struct ishtp_cl_device *cl_device)
{
 struct ishtp_cl *cros_ish_cl = ishtp_get_drvdata(cl_device);
 struct ishtp_cl_data *client_data = ishtp_get_client_data(cros_ish_cl);

 cancel_work_sync(&client_data->work_ishtp_reset);
 cancel_work_sync(&client_data->work_ec_evt);
 cros_ish_deinit(cros_ish_cl);
 ishtp_put_device(cl_device);

 return 0;
}
