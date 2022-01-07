
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardstate {int dev; } ;
typedef scalar_t__* _cstruct ;


 int dev_warn (int ,char*,char*,char*) ;

__attribute__((used)) static inline void ignore_cstruct_param(struct cardstate *cs, _cstruct param,
     char *msgname, char *paramname)
{
 if (param && *param)
  dev_warn(cs->dev, "%s: ignoring unsupported parameter: %s\n",
    msgname, paramname);
}
