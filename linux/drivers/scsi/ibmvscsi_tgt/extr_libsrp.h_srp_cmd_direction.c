
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_cmd {int buf_fmt; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;

__attribute__((used)) static inline int srp_cmd_direction(struct srp_cmd *cmd)
{
 return (cmd->buf_fmt >> 4) ? DMA_TO_DEVICE : DMA_FROM_DEVICE;
}
