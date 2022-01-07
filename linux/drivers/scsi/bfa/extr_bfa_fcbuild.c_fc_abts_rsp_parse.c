
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fchs_s {scalar_t__ cat_info; } ;
typedef enum fc_parse_status { ____Placeholder_fc_parse_status } fc_parse_status ;


 scalar_t__ FC_CAT_BA_ACC ;
 scalar_t__ FC_CAT_BA_RJT ;
 int FC_PARSE_FAILURE ;
 int FC_PARSE_OK ;

enum fc_parse_status
fc_abts_rsp_parse(struct fchs_s *fchs, int len)
{
 if ((fchs->cat_info == FC_CAT_BA_ACC)
     || (fchs->cat_info == FC_CAT_BA_RJT))
  return FC_PARSE_OK;

 return FC_PARSE_FAILURE;
}
