
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DLM_MSG_CANCEL_REPLY ;

 int DLM_MSG_CONVERT_REPLY ;

 int DLM_MSG_LOOKUP_REPLY ;

 int DLM_MSG_REQUEST_REPLY ;

 int DLM_MSG_UNLOCK_REPLY ;

__attribute__((used)) static int msg_reply_type(int mstype)
{
 switch (mstype) {
 case 129:
  return DLM_MSG_REQUEST_REPLY;
 case 131:
  return DLM_MSG_CONVERT_REPLY;
 case 128:
  return DLM_MSG_UNLOCK_REPLY;
 case 132:
  return DLM_MSG_CANCEL_REPLY;
 case 130:
  return DLM_MSG_LOOKUP_REPLY;
 }
 return -1;
}
