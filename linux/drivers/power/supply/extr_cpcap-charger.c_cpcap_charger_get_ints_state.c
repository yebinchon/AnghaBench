
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpcap_charger_ints_state {int chrg_det; int rvrs_chrg; int vbusov; int chrg_se1b; int rvrs_mode; int chrgcurr1; int vbusvld; int battdetb; } ;
struct cpcap_charger_ddata {int reg; } ;


 int BIT (int) ;
 int CPCAP_REG_INTS1 ;
 int CPCAP_REG_INTS2 ;
 int CPCAP_REG_INTS4 ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int cpcap_charger_get_ints_state(struct cpcap_charger_ddata *ddata,
     struct cpcap_charger_ints_state *s)
{
 int val, error;

 error = regmap_read(ddata->reg, CPCAP_REG_INTS1, &val);
 if (error)
  return error;

 s->chrg_det = val & BIT(13);
 s->rvrs_chrg = val & BIT(12);
 s->vbusov = val & BIT(11);

 error = regmap_read(ddata->reg, CPCAP_REG_INTS2, &val);
 if (error)
  return error;

 s->chrg_se1b = val & BIT(13);
 s->rvrs_mode = val & BIT(6);
 s->chrgcurr1 = val & BIT(4);
 s->vbusvld = val & BIT(3);

 error = regmap_read(ddata->reg, CPCAP_REG_INTS4, &val);
 if (error)
  return error;

 s->battdetb = val & BIT(6);

 return 0;
}
