
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VCHIQ_STATUS_T ;
typedef int VCHIQ_SERVICE_HANDLE_T ;
typedef int VCHIQ_BULK_MODE_T ;





 int VCHIQ_BULK_TRANSMIT ;
 int VCHIQ_ERROR ;
 int vchiq_blocking_bulk_transfer (int ,void*,unsigned int,int ) ;
 int vchiq_bulk_transfer (int ,void*,unsigned int,void*,int,int ) ;

VCHIQ_STATUS_T
vchiq_bulk_transmit(VCHIQ_SERVICE_HANDLE_T handle, const void *data,
 unsigned int size, void *userdata, VCHIQ_BULK_MODE_T mode)
{
 VCHIQ_STATUS_T status;

 switch (mode) {
 case 128:
 case 129:
  status = vchiq_bulk_transfer(handle, (void *)data, size,
          userdata, mode,
          VCHIQ_BULK_TRANSMIT);
  break;
 case 130:
  status = vchiq_blocking_bulk_transfer(handle,
   (void *)data, size, VCHIQ_BULK_TRANSMIT);
  break;
 default:
  return VCHIQ_ERROR;
 }

 return status;
}
