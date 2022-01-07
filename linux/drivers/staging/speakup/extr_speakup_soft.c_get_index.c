
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spk_synth {int dummy; } ;


 int last_index ;

__attribute__((used)) static unsigned char get_index(struct spk_synth *synth)
{
 int rv;

 rv = last_index;
 last_index = 0;
 return rv;
}
