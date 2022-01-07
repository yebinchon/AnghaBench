
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hvc_struct {int port; } ;
struct hv_ops {int dummy; } ;


 int MAX_NR_HVC_CONSOLES ;
 struct hv_ops const** cons_ops ;
 int hvc_check_console (int) ;
 struct hvc_struct* hvc_get_by_index (int) ;
 int last_hvc ;
 int tty_port_put (int *) ;
 int* vtermnos ;

int hvc_instantiate(uint32_t vtermno, int index, const struct hv_ops *ops)
{
 struct hvc_struct *hp;

 if (index < 0 || index >= MAX_NR_HVC_CONSOLES)
  return -1;

 if (vtermnos[index] != -1)
  return -1;


 hp = hvc_get_by_index(index);
 if (hp) {
  tty_port_put(&hp->port);
  return -1;
 }

 vtermnos[index] = vtermno;
 cons_ops[index] = ops;


 if (last_hvc < index)
  last_hvc = index;


 hvc_check_console(index);

 return 0;
}
