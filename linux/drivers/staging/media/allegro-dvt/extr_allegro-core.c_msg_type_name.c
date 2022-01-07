
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mcu_msg_type { ____Placeholder_mcu_msg_type } mcu_msg_type ;
typedef int buf ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char *msg_type_name(enum mcu_msg_type type)
{
 static char buf[9];

 switch (type) {
 case 131:
  return "INIT";
 case 134:
  return "CREATE_CHANNEL";
 case 133:
  return "DESTROY_CHANNEL";
 case 132:
  return "ENCODE_FRAME";
 case 128:
  return "PUT_STREAM_BUFFER";
 case 130:
  return "PUSH_BUFFER_INTERMEDIATE";
 case 129:
  return "PUSH_BUFFER_REFERENCE";
 default:
  snprintf(buf, sizeof(buf), "(0x%04x)", type);
  return buf;
 }
}
