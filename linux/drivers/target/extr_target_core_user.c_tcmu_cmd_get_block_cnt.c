
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct tcmu_cmd {int dummy; } ;


 size_t DATA_BLOCK_SIZE ;
 size_t tcmu_cmd_get_data_length (struct tcmu_cmd*) ;

__attribute__((used)) static inline uint32_t tcmu_cmd_get_block_cnt(struct tcmu_cmd *tcmu_cmd)
{
 size_t data_length = tcmu_cmd_get_data_length(tcmu_cmd);

 return data_length / DATA_BLOCK_SIZE;
}
