
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ishtp_cl_device {int dummy; } ;
struct TYPE_2__ {int wait_queue; } ;
struct ishtp_cl_data {int work_ec_evt; int work_ishtp_reset; TYPE_1__ response; struct ishtp_cl_device* cl_device; struct ishtp_cl* cros_ish_cl; } ;
struct ishtp_cl {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int ISHTP_CL_DISCONNECTING ;
 int cros_ec_dev_init (struct ishtp_cl_data*) ;
 int cros_ish_init (struct ishtp_cl*) ;
 struct ishtp_cl_data* devm_kzalloc (int ,int,int ) ;
 int down_write (int *) ;
 int init_lock ;
 int init_waitqueue_head (int *) ;
 int ish_evt_handler ;
 struct ishtp_cl* ishtp_cl_allocate (struct ishtp_cl_device*) ;
 int ishtp_cl_disconnect (struct ishtp_cl*) ;
 int ishtp_cl_flush_queues (struct ishtp_cl*) ;
 int ishtp_cl_free (struct ishtp_cl*) ;
 int ishtp_cl_unlink (struct ishtp_cl*) ;
 int ishtp_device (struct ishtp_cl_device*) ;
 int ishtp_get_device (struct ishtp_cl_device*) ;
 int ishtp_put_device (struct ishtp_cl_device*) ;
 int ishtp_set_client_data (struct ishtp_cl*,struct ishtp_cl_data*) ;
 int ishtp_set_connection_state (struct ishtp_cl*,int ) ;
 int ishtp_set_drvdata (struct ishtp_cl_device*,struct ishtp_cl*) ;
 int reset_handler ;
 int up_write (int *) ;

__attribute__((used)) static int cros_ec_ishtp_probe(struct ishtp_cl_device *cl_device)
{
 int rv;
 struct ishtp_cl *cros_ish_cl;
 struct ishtp_cl_data *client_data =
  devm_kzalloc(ishtp_device(cl_device),
        sizeof(*client_data), GFP_KERNEL);
 if (!client_data)
  return -ENOMEM;


 down_write(&init_lock);

 cros_ish_cl = ishtp_cl_allocate(cl_device);
 if (!cros_ish_cl) {
  rv = -ENOMEM;
  goto end_ishtp_cl_alloc_error;
 }

 ishtp_set_drvdata(cl_device, cros_ish_cl);
 ishtp_set_client_data(cros_ish_cl, client_data);
 client_data->cros_ish_cl = cros_ish_cl;
 client_data->cl_device = cl_device;

 init_waitqueue_head(&client_data->response.wait_queue);

 INIT_WORK(&client_data->work_ishtp_reset,
    reset_handler);
 INIT_WORK(&client_data->work_ec_evt,
    ish_evt_handler);

 rv = cros_ish_init(cros_ish_cl);
 if (rv)
  goto end_ishtp_cl_init_error;

 ishtp_get_device(cl_device);

 up_write(&init_lock);


 rv = cros_ec_dev_init(client_data);
 if (rv)
  goto end_cros_ec_dev_init_error;

 return 0;

end_cros_ec_dev_init_error:
 ishtp_set_connection_state(cros_ish_cl, ISHTP_CL_DISCONNECTING);
 ishtp_cl_disconnect(cros_ish_cl);
 ishtp_cl_unlink(cros_ish_cl);
 ishtp_cl_flush_queues(cros_ish_cl);
 ishtp_put_device(cl_device);
end_ishtp_cl_init_error:
 ishtp_cl_free(cros_ish_cl);
end_ishtp_cl_alloc_error:
 up_write(&init_lock);
 return rv;
}
