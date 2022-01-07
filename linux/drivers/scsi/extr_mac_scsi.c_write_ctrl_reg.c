
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct NCR5380_hostdata {scalar_t__ io; } ;


 int CTRL_REG ;
 int out_be32 (scalar_t__,int ) ;

__attribute__((used)) static inline void write_ctrl_reg(struct NCR5380_hostdata *hostdata, u32 value)
{
 out_be32(hostdata->io + (CTRL_REG << 4), value);
}
