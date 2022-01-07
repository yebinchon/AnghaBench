
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_cl_rb {int dummy; } ;
struct ishtp_cl_device {int dummy; } ;
struct ishtp_cl {int dummy; } ;


 struct ishtp_cl_rb* ishtp_cl_rx_get_rb (struct ishtp_cl*) ;
 struct ishtp_cl* ishtp_get_drvdata (struct ishtp_cl_device*) ;
 int process_recv (struct ishtp_cl*,struct ishtp_cl_rb*) ;

__attribute__((used)) static void ish_event_cb(struct ishtp_cl_device *cl_device)
{
 struct ishtp_cl_rb *rb_in_proc;
 struct ishtp_cl *cros_ish_cl = ishtp_get_drvdata(cl_device);

 while ((rb_in_proc = ishtp_cl_rx_get_rb(cros_ish_cl)) != ((void*)0)) {

  process_recv(cros_ish_cl, rb_in_proc);
 }
}
