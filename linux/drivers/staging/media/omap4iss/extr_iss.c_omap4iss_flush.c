
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_device {int dummy; } ;


 int ISS_HL_REVISION ;
 int OMAP4_ISS_MEM_TOP ;
 int iss_reg_read (struct iss_device*,int ,int ) ;
 int iss_reg_write (struct iss_device*,int ,int ,int ) ;

__attribute__((used)) static void omap4iss_flush(struct iss_device *iss)
{
 iss_reg_write(iss, OMAP4_ISS_MEM_TOP, ISS_HL_REVISION, 0);
 iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_HL_REVISION);
}
