
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_clock {void* set_secondary_clock_state; void* set_primary_clock_state; int set_engine_pll; void* set_engine_pll_state; int set_secondary_pll; void* set_secondary_pll_state; void* set_secondary_clock_source; int set_primary_pll; void* set_primary_pll_state; void* set_primary_clock_source; } ;
 int cle266_set_primary_pll ;
 int cle266_set_secondary_pll ;
 void* dummy_set_clock_source ;
 void* dummy_set_clock_state ;
 int dummy_set_pll ;
 void* dummy_set_pll_state ;
 int k800_set_engine_pll ;
 int k800_set_primary_pll ;
 int k800_set_secondary_pll ;
 scalar_t__ machine_is_olpc () ;
 void* noop_set_clock_state ;
 void* set_engine_pll_state ;
 void* set_primary_clock_source ;
 void* set_primary_clock_state ;
 void* set_primary_pll_state ;
 void* set_secondary_clock_source ;
 void* set_secondary_clock_state ;
 void* set_secondary_pll_state ;
 int vx855_set_engine_pll ;
 int vx855_set_primary_pll ;
 int vx855_set_secondary_pll ;

void via_clock_init(struct via_clock *clock, int gfx_chip)
{
 switch (gfx_chip) {
 case 140:
 case 136:
  clock->set_primary_clock_state = dummy_set_clock_state;
  clock->set_primary_clock_source = dummy_set_clock_source;
  clock->set_primary_pll_state = dummy_set_pll_state;
  clock->set_primary_pll = cle266_set_primary_pll;

  clock->set_secondary_clock_state = dummy_set_clock_state;
  clock->set_secondary_clock_source = dummy_set_clock_source;
  clock->set_secondary_pll_state = dummy_set_pll_state;
  clock->set_secondary_pll = cle266_set_secondary_pll;

  clock->set_engine_pll_state = dummy_set_pll_state;
  clock->set_engine_pll = dummy_set_pll;
  break;
 case 135:
 case 131:
 case 139:
 case 137:
 case 138:
 case 134:
 case 133:
 case 132:
 case 130:
  clock->set_primary_clock_state = set_primary_clock_state;
  clock->set_primary_clock_source = set_primary_clock_source;
  clock->set_primary_pll_state = set_primary_pll_state;
  clock->set_primary_pll = k800_set_primary_pll;

  clock->set_secondary_clock_state = set_secondary_clock_state;
  clock->set_secondary_clock_source = set_secondary_clock_source;
  clock->set_secondary_pll_state = set_secondary_pll_state;
  clock->set_secondary_pll = k800_set_secondary_pll;

  clock->set_engine_pll_state = set_engine_pll_state;
  clock->set_engine_pll = k800_set_engine_pll;
  break;
 case 129:
 case 128:
  clock->set_primary_clock_state = set_primary_clock_state;
  clock->set_primary_clock_source = set_primary_clock_source;
  clock->set_primary_pll_state = set_primary_pll_state;
  clock->set_primary_pll = vx855_set_primary_pll;

  clock->set_secondary_clock_state = set_secondary_clock_state;
  clock->set_secondary_clock_source = set_secondary_clock_source;
  clock->set_secondary_pll_state = set_secondary_pll_state;
  clock->set_secondary_pll = vx855_set_secondary_pll;

  clock->set_engine_pll_state = set_engine_pll_state;
  clock->set_engine_pll = vx855_set_engine_pll;
  break;

 }

 if (machine_is_olpc()) {
  clock->set_primary_clock_state = noop_set_clock_state;
  clock->set_secondary_clock_state = noop_set_clock_state;
 }
}
