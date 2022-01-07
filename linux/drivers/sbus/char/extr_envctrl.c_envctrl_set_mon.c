
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_child_t {int * mon_type; } ;


 int ENVCTRL_CPUTEMP_MON ;
 int ENVCTRL_CPUVOLTAGE_MON ;
 int ENVCTRL_ETHERTEMP_MON ;
 int ENVCTRL_MTHRBDTEMP_MON ;
 int ENVCTRL_SCSITEMP_MON ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void envctrl_set_mon(struct i2c_child_t *pchild,
       const char *chnl_desc,
       int chnl_no)
{




 if (!(strcmp(chnl_desc,"temp,cpu")) ||
     !(strcmp(chnl_desc,"temp,cpu0")) ||
     !(strcmp(chnl_desc,"temp,cpu1")) ||
     !(strcmp(chnl_desc,"temp,cpu2")) ||
     !(strcmp(chnl_desc,"temp,cpu3")))
  pchild->mon_type[chnl_no] = ENVCTRL_CPUTEMP_MON;

 if (!(strcmp(chnl_desc,"vddcore,cpu0")) ||
     !(strcmp(chnl_desc,"vddcore,cpu1")) ||
     !(strcmp(chnl_desc,"vddcore,cpu2")) ||
     !(strcmp(chnl_desc,"vddcore,cpu3")))
  pchild->mon_type[chnl_no] = ENVCTRL_CPUVOLTAGE_MON;

 if (!(strcmp(chnl_desc,"temp,motherboard")))
  pchild->mon_type[chnl_no] = ENVCTRL_MTHRBDTEMP_MON;

 if (!(strcmp(chnl_desc,"temp,scsi")))
  pchild->mon_type[chnl_no] = ENVCTRL_SCSITEMP_MON;

 if (!(strcmp(chnl_desc,"temp,ethernet")))
  pchild->mon_type[chnl_no] = ENVCTRL_ETHERTEMP_MON;
}
