
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum iscsi_error_types { ____Placeholder_iscsi_error_types } iscsi_error_types ;
struct TYPE_3__ {int error_code; char* err_string; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* qedi_iscsi_error ;

char *qedi_get_iscsi_error(enum iscsi_error_types err_code)
{
 int i;
 char *msg = ((void*)0);

 for (i = 0; i < ARRAY_SIZE(qedi_iscsi_error); i++) {
  if (qedi_iscsi_error[i].error_code == err_code) {
   msg = qedi_iscsi_error[i].err_string;
   break;
  }
 }
 return msg;
}
