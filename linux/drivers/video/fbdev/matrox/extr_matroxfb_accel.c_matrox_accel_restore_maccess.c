
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m_pitch; int m_access; } ;
struct matrox_fb_info {TYPE_1__ accel; } ;


 int M_MACCESS ;
 int M_PITCH ;
 int mga_outl (int ,int ) ;

__attribute__((used)) static void matrox_accel_restore_maccess(struct matrox_fb_info *minfo)
{
 mga_outl(M_MACCESS, minfo->accel.m_access);
 mga_outl(M_PITCH, minfo->accel.m_pitch);
}
