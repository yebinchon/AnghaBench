
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;






__attribute__((used)) static inline bool nvmet_tcp_pdu_valid(u8 type)
{
 switch (type) {
 case 128:
 case 130:
 case 129:

  return 1;
 }

 return 0;
}
