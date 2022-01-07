
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BIT (int) ;
 int GENMASK (int,int ) ;

const char *ucsi_cci_str(u32 cci)
{
 if (cci & GENMASK(7, 0)) {
  if (cci & BIT(29))
   return "Event pending (ACK completed)";
  if (cci & BIT(31))
   return "Event pending (command completed)";
  return "Connector Change";
 }
 if (cci & BIT(29))
  return "ACK completed";
 if (cci & BIT(31))
  return "Command completed";

 return "";
}
