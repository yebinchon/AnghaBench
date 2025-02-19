
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuf_header {int dummy; } ;


 void* _machine_halt ;
 void* _machine_power_off ;
 void* _machine_restart ;
 int ctrl_alt_del () ;
 void* do_machine_quiesce ;
 void* old_machine_halt ;
 void* old_machine_power_off ;
 void* old_machine_restart ;

__attribute__((used)) static void sclp_quiesce_handler(struct evbuf_header *evbuf)
{
 if (_machine_restart != (void *) do_machine_quiesce) {
  old_machine_restart = _machine_restart;
  old_machine_halt = _machine_halt;
  old_machine_power_off = _machine_power_off;
  _machine_restart = (void *) do_machine_quiesce;
  _machine_halt = do_machine_quiesce;
  _machine_power_off = do_machine_quiesce;
 }
 ctrl_alt_del();
}
