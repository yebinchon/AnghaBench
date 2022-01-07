
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_param {int name; } ;


 int CHAP ;
 int CRC32C ;
 int DISCOVERY ;
 scalar_t__ IS_PSTATE_PROPOSER (struct iscsi_param*) ;
 scalar_t__ IS_TYPERANGE_AUTH_PARAM (struct iscsi_param*) ;
 scalar_t__ IS_TYPERANGE_DIGEST_PARAM (struct iscsi_param*) ;
 scalar_t__ IS_TYPERANGE_SESSIONTYPE (struct iscsi_param*) ;
 int KRB5 ;
 int NONE ;
 int NORMAL ;
 int SPKM1 ;
 int SPKM2 ;
 int SRP ;
 int pr_err (char*,int ,int ,int ,...) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int iscsi_check_string_or_list_value(struct iscsi_param *param, char *value)
{
 if (IS_PSTATE_PROPOSER(param))
  return 0;

 if (IS_TYPERANGE_AUTH_PARAM(param)) {
  if (strcmp(value, KRB5) && strcmp(value, SPKM1) &&
      strcmp(value, SPKM2) && strcmp(value, SRP) &&
      strcmp(value, CHAP) && strcmp(value, NONE)) {
   pr_err("Illegal value for \"%s\", must be"
    " \"%s\", \"%s\", \"%s\", \"%s\", \"%s\""
    " or \"%s\".\n", param->name, KRB5,
     SPKM1, SPKM2, SRP, CHAP, NONE);
   return -1;
  }
 }
 if (IS_TYPERANGE_DIGEST_PARAM(param)) {
  if (strcmp(value, CRC32C) && strcmp(value, NONE)) {
   pr_err("Illegal value for \"%s\", must be"
    " \"%s\" or \"%s\".\n", param->name,
     CRC32C, NONE);
   return -1;
  }
 }
 if (IS_TYPERANGE_SESSIONTYPE(param)) {
  if (strcmp(value, DISCOVERY) && strcmp(value, NORMAL)) {
   pr_err("Illegal value for \"%s\", must be"
    " \"%s\" or \"%s\".\n", param->name,
     DISCOVERY, NORMAL);
   return -1;
  }
 }

 return 0;
}
