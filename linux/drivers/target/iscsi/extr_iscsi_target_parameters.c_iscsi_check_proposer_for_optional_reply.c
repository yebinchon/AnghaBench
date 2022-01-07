
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_param {int name; int value; } ;


 int FIRSTBURSTLENGTH ;
 int IMMEDIATEDATA ;
 scalar_t__ IS_PHASE_DECLARATIVE (struct iscsi_param*) ;
 scalar_t__ IS_TYPE_BOOL_AND (struct iscsi_param*) ;
 scalar_t__ IS_TYPE_BOOL_OR (struct iscsi_param*) ;
 scalar_t__ IS_TYPE_NUMBER (struct iscsi_param*) ;
 int MAXCONNECTIONS ;
 int MAXRECVDATASEGMENTLENGTH ;
 int NO ;
 int SET_PSTATE_REPLY_OPTIONAL (struct iscsi_param*) ;
 int YES ;
 int strcmp (int ,int ) ;

__attribute__((used)) static void iscsi_check_proposer_for_optional_reply(struct iscsi_param *param,
          bool keys_workaround)
{
 if (IS_TYPE_BOOL_AND(param)) {
  if (!strcmp(param->value, NO))
   SET_PSTATE_REPLY_OPTIONAL(param);
 } else if (IS_TYPE_BOOL_OR(param)) {
  if (!strcmp(param->value, YES))
   SET_PSTATE_REPLY_OPTIONAL(param);

  if (keys_workaround) {



   if (!strcmp(param->name, IMMEDIATEDATA))
    SET_PSTATE_REPLY_OPTIONAL(param);
  }
 } else if (IS_TYPE_NUMBER(param)) {
  if (!strcmp(param->name, MAXRECVDATASEGMENTLENGTH))
   SET_PSTATE_REPLY_OPTIONAL(param);

  if (keys_workaround) {



   if (!strcmp(param->name, FIRSTBURSTLENGTH))
    SET_PSTATE_REPLY_OPTIONAL(param);




   if (!strcmp(param->name, MAXCONNECTIONS))
    SET_PSTATE_REPLY_OPTIONAL(param);
  }
 } else if (IS_PHASE_DECLARATIVE(param))
  SET_PSTATE_REPLY_OPTIONAL(param);
}
