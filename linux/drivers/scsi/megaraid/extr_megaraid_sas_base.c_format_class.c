
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8_t ;
typedef int buffer ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char *
format_class(int8_t class)
{
 static char buffer[6];

 switch (class) {
 case 132:
  return "debug";
 case 129:
  return "progress";
 case 130:
  return "info";
 case 128:
  return "WARN";
 case 134:
  return "CRIT";
 case 131:
  return "FATAL";
 case 133:
  return "DEAD";
 default:
  snprintf(buffer, sizeof(buffer), "%d", class);
  return buffer;
 }
}
