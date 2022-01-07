
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int reporting_keystroke ;
 int this_cpu_read (int ) ;

bool speakup_fake_key_pressed(void)
{
 return this_cpu_read(reporting_keystroke);
}
