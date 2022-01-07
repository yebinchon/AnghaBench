
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATM_AAL5_TRAILER ;
 int ATM_CELL_PAYLOAD ;

__attribute__((used)) static inline unsigned int usbatm_pdu_length(unsigned int length)
{
 length += ATM_CELL_PAYLOAD - 1 + ATM_AAL5_TRAILER;
 return length - length % ATM_CELL_PAYLOAD;
}
