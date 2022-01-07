
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_cl {int dummy; } ;


 int ISHTP_CL_DISCONNECTING ;
 int ishtp_cl_disconnect (struct ishtp_cl*) ;
 int ishtp_cl_flush_queues (struct ishtp_cl*) ;
 int ishtp_cl_free (struct ishtp_cl*) ;
 int ishtp_cl_unlink (struct ishtp_cl*) ;
 int ishtp_set_connection_state (struct ishtp_cl*,int ) ;

__attribute__((used)) static void cros_ish_deinit(struct ishtp_cl *cros_ish_cl)
{
 ishtp_set_connection_state(cros_ish_cl, ISHTP_CL_DISCONNECTING);
 ishtp_cl_disconnect(cros_ish_cl);
 ishtp_cl_unlink(cros_ish_cl);
 ishtp_cl_flush_queues(cros_ish_cl);


 ishtp_cl_free(cros_ish_cl);
}
