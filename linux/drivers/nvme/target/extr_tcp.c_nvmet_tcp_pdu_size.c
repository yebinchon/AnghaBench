
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t ARRAY_SIZE (size_t*) ;
 size_t* nvme_tcp_pdu_sizes ;

__attribute__((used)) static inline u8 nvmet_tcp_pdu_size(u8 type)
{
 size_t idx = type;

 return (idx < ARRAY_SIZE(nvme_tcp_pdu_sizes) &&
  nvme_tcp_pdu_sizes[idx]) ?
   nvme_tcp_pdu_sizes[idx] : 0;
}
