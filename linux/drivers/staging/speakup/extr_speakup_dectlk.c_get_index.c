
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u_char ;
struct spk_synth {int dummy; } ;


 unsigned char lastind ;

__attribute__((used)) static unsigned char get_index(struct spk_synth *synth)
{
 u_char rv;

 rv = lastind;
 lastind = 0;
 return rv;
}
