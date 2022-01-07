
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wwn_t ;
struct TYPE_2__ {scalar_t__ els_code; } ;
struct fc_adisc_s {int orig_port_name; TYPE_1__ els_cmd; } ;
typedef enum fc_parse_status { ____Placeholder_fc_parse_status } fc_parse_status ;


 scalar_t__ FC_ELS_ACC ;
 int FC_PARSE_FAILURE ;
 int FC_PARSE_OK ;
 int wwn_is_equal (int ,int ) ;

enum fc_parse_status
fc_adisc_rsp_parse(struct fc_adisc_s *adisc, int len, wwn_t port_name,
     wwn_t node_name)
{

 if (len < sizeof(struct fc_adisc_s))
  return FC_PARSE_FAILURE;

 if (adisc->els_cmd.els_code != FC_ELS_ACC)
  return FC_PARSE_FAILURE;

 if (!wwn_is_equal(adisc->orig_port_name, port_name))
  return FC_PARSE_FAILURE;

 return FC_PARSE_OK;
}
