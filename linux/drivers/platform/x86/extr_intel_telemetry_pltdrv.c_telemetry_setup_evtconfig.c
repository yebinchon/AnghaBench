
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct telemetry_evtconfig {scalar_t__ num_evts; int evtmap; } ;
typedef enum telemetry_action { ____Placeholder_telemetry_action } telemetry_action ;
struct TYPE_2__ {int telem_in_use; int telem_lock; } ;


 int EBUSY ;
 int TELEM_ADD ;
 int TELEM_IOSS ;
 int TELEM_PSS ;
 int TELEM_UPDATE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int telemetry_check_evtid (int ,int ,scalar_t__,int) ;
 int telemetry_setup_iossevtconfig (struct telemetry_evtconfig,int) ;
 int telemetry_setup_pssevtconfig (struct telemetry_evtconfig,int) ;
 TYPE_1__* telm_conf ;

__attribute__((used)) static int telemetry_setup_evtconfig(struct telemetry_evtconfig pss_evtconfig,
         struct telemetry_evtconfig ioss_evtconfig,
         enum telemetry_action action)
{
 int ret;

 mutex_lock(&(telm_conf->telem_lock));

 if ((action == TELEM_UPDATE) && (telm_conf->telem_in_use)) {
  ret = -EBUSY;
  goto out;
 }

 ret = telemetry_check_evtid(TELEM_PSS, pss_evtconfig.evtmap,
        pss_evtconfig.num_evts, action);
 if (ret)
  goto out;

 ret = telemetry_check_evtid(TELEM_IOSS, ioss_evtconfig.evtmap,
        ioss_evtconfig.num_evts, action);
 if (ret)
  goto out;

 if (ioss_evtconfig.num_evts) {
  ret = telemetry_setup_iossevtconfig(ioss_evtconfig, action);
  if (ret)
   goto out;
 }

 if (pss_evtconfig.num_evts) {
  ret = telemetry_setup_pssevtconfig(pss_evtconfig, action);
  if (ret)
   goto out;
 }

 if ((action == TELEM_UPDATE) || (action == TELEM_ADD))
  telm_conf->telem_in_use = 1;
 else
  telm_conf->telem_in_use = 0;

out:
 mutex_unlock(&(telm_conf->telem_lock));
 return ret;
}
