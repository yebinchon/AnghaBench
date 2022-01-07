
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_char ;


 int TCIC_AUX ;
 int TCIC_MODE ;
 int TCIC_MODE_PGMMASK ;
 int tcic_getb (int ) ;
 int tcic_getw (int ) ;
 int tcic_setb (int ,int) ;

__attribute__((used)) static u_short tcic_aux_getw(u_short reg)
{
    u_char mode = (tcic_getb(TCIC_MODE) & TCIC_MODE_PGMMASK) | reg;
    tcic_setb(TCIC_MODE, mode);
    return tcic_getw(TCIC_AUX);
}
