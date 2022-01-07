
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s3c_hsudc {scalar_t__ regs; } ;


 scalar_t__ S3C_FNR ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 s3c_hsudc_read_frameno(struct s3c_hsudc *hsudc)
{
 return readl(hsudc->regs + S3C_FNR) & 0x3FF;
}
