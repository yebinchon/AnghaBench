
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpcap_usb_ints_state {int id_ground; int id_float; int vbusov; int vbusvld; int sessvld; int sessend; int se1; int dm; int dp; } ;
struct cpcap_phy_ddata {int reg; } ;


 int BIT (int) ;
 int CPCAP_REG_INTS1 ;
 int CPCAP_REG_INTS2 ;
 int CPCAP_REG_INTS4 ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int cpcap_phy_get_ints_state(struct cpcap_phy_ddata *ddata,
        struct cpcap_usb_ints_state *s)
{
 int val, error;

 error = regmap_read(ddata->reg, CPCAP_REG_INTS1, &val);
 if (error)
  return error;

 s->id_ground = val & BIT(15);
 s->id_float = val & BIT(14);
 s->vbusov = val & BIT(11);

 error = regmap_read(ddata->reg, CPCAP_REG_INTS2, &val);
 if (error)
  return error;

 s->vbusvld = val & BIT(3);
 s->sessvld = val & BIT(2);
 s->sessend = val & BIT(1);
 s->se1 = val & BIT(0);

 error = regmap_read(ddata->reg, CPCAP_REG_INTS4, &val);
 if (error)
  return error;

 s->dm = val & BIT(1);
 s->dp = val & BIT(0);

 return 0;
}
