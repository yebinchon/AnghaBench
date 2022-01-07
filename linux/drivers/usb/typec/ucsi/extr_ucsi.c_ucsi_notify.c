
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ucsi_connector {int work; } ;
struct ucsi_cci {int connector_change; scalar_t__ ack_complete; scalar_t__ cmd_complete; scalar_t__ busy; scalar_t__ error; } ;
struct ucsi {TYPE_2__* ppm; int flags; struct ucsi_connector* connector; int complete; int status; } ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {int raw_cci; struct ucsi_cci cci; } ;


 int ACK_PENDING ;
 int COMMAND_PENDING ;
 int EVENT_PENDING ;
 int UCSI_BUSY ;
 int UCSI_ERROR ;
 int UCSI_IDLE ;
 int complete (int *) ;
 int schedule_work (int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_ucsi_notify (int ) ;
 int ucsi_sync (struct ucsi*) ;

void ucsi_notify(struct ucsi *ucsi)
{
 struct ucsi_cci *cci;


 ucsi_sync(ucsi);

 cci = &ucsi->ppm->data->cci;

 if (cci->error)
  ucsi->status = UCSI_ERROR;
 else if (cci->busy)
  ucsi->status = UCSI_BUSY;
 else
  ucsi->status = UCSI_IDLE;

 if (cci->cmd_complete && test_bit(COMMAND_PENDING, &ucsi->flags)) {
  complete(&ucsi->complete);
 } else if (cci->ack_complete && test_bit(ACK_PENDING, &ucsi->flags)) {
  complete(&ucsi->complete);
 } else if (cci->connector_change) {
  struct ucsi_connector *con;

  con = &ucsi->connector[cci->connector_change - 1];

  if (!test_and_set_bit(EVENT_PENDING, &ucsi->flags))
   schedule_work(&con->work);
 }

 trace_ucsi_notify(ucsi->ppm->data->raw_cci);
}
