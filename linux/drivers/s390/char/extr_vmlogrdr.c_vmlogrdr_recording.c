
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmlogrdr_priv_t {char* recording_name; } ;
typedef int cp_response ;
typedef int cp_command ;


 int EIO ;
 int cpcmd (char*,char*,int,int *) ;
 int memset (char*,int,int) ;
 int recording_class_AB ;
 int snprintf (char*,int,char*,char*,char*,...) ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static int vmlogrdr_recording(struct vmlogrdr_priv_t * logptr,
         int action, int purge)
{

 char cp_command[80];
 char cp_response[160];
 char *onoff, *qid_string;
 int rc;

 onoff = ((action == 1) ? "ON" : "OFF");
 qid_string = ((recording_class_AB == 1) ? " QID * " : "");
 if (purge && (action == 1)) {
  memset(cp_command, 0x00, sizeof(cp_command));
  memset(cp_response, 0x00, sizeof(cp_response));
  snprintf(cp_command, sizeof(cp_command),
    "RECORDING %s PURGE %s",
    logptr->recording_name,
    qid_string);
  cpcmd(cp_command, cp_response, sizeof(cp_response), ((void*)0));
 }

 memset(cp_command, 0x00, sizeof(cp_command));
 memset(cp_response, 0x00, sizeof(cp_response));
 snprintf(cp_command, sizeof(cp_command), "RECORDING %s %s %s",
  logptr->recording_name,
  onoff,
  qid_string);
 cpcmd(cp_command, cp_response, sizeof(cp_response), ((void*)0));






 if (strstr(cp_response,"Command complete"))
  rc = 0;
 else
  rc = -EIO;





 if (purge && (action == 0)) {
  memset(cp_command, 0x00, sizeof(cp_command));
  memset(cp_response, 0x00, sizeof(cp_response));
  snprintf(cp_command, sizeof(cp_command),
    "RECORDING %s PURGE %s",
    logptr->recording_name,
    qid_string);
  cpcmd(cp_command, cp_response, sizeof(cp_response), ((void*)0));
 }

 return rc;
}
