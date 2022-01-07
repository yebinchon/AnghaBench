
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DID_ABORT ;
 int DID_BUS_BUSY ;
 int DID_ERROR ;
 int DID_NO_CONNECT ;
 int DID_OK ;
 int DID_RESET ;
int esas2r_req_status_to_error(u8 req_stat)
{
 switch (req_stat) {
 case 134:
 case 128:
 case 129:




 case 132:
  return DID_OK;

 case 131:
 case 130:
  return DID_NO_CONNECT;

 case 133:
  return DID_RESET;

 case 136:
  return DID_ABORT;

 case 135:
  return DID_BUS_BUSY;
 }



 return DID_ERROR;
}
