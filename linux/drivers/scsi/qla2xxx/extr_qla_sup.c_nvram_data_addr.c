
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct qla_hw_data {scalar_t__ nvram_data_off; } ;



__attribute__((used)) static inline uint32_t
nvram_data_addr(struct qla_hw_data *ha, uint32_t naddr)
{
 return ha->nvram_data_off + naddr;
}
