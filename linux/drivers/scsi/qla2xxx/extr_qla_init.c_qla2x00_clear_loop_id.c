
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qla_hw_data {int loop_id_map; } ;
struct TYPE_4__ {scalar_t__ loop_id; TYPE_2__* vha; } ;
typedef TYPE_1__ fc_port_t ;
struct TYPE_5__ {struct qla_hw_data* hw; } ;


 scalar_t__ FC_NO_LOOP_ID ;
 int clear_bit (scalar_t__,int ) ;
 scalar_t__ qla2x00_is_reserved_id (TYPE_2__*,scalar_t__) ;

void qla2x00_clear_loop_id(fc_port_t *fcport)
{
 struct qla_hw_data *ha = fcport->vha->hw;

 if (fcport->loop_id == FC_NO_LOOP_ID ||
     qla2x00_is_reserved_id(fcport->vha, fcport->loop_id))
  return;

 clear_bit(fcport->loop_id, ha->loop_id_map);
 fcport->loop_id = FC_NO_LOOP_ID;
}
