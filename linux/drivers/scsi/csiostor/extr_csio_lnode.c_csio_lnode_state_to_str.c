
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_lnode {int dummy; } ;
typedef int int8_t ;
typedef scalar_t__ csio_sm_state_t ;


 scalar_t__ csio_get_state (struct csio_lnode*) ;
 scalar_t__ csio_lns_offline ;
 scalar_t__ csio_lns_ready ;
 scalar_t__ csio_lns_uninit ;
 int strcpy (int *,char*) ;

void
csio_lnode_state_to_str(struct csio_lnode *ln, int8_t *str)
{
 if (csio_get_state(ln) == ((csio_sm_state_t)csio_lns_uninit)) {
  strcpy(str, "UNINIT");
  return;
 }
 if (csio_get_state(ln) == ((csio_sm_state_t)csio_lns_ready)) {
  strcpy(str, "READY");
  return;
 }
 if (csio_get_state(ln) == ((csio_sm_state_t)csio_lns_offline)) {
  strcpy(str, "OFFLINE");
  return;
 }
 strcpy(str, "UNKNOWN");
}
