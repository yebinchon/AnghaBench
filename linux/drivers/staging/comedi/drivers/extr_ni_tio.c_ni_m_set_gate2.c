
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int dummy; } ;


 int ni_tio_set_gate2_raw (struct ni_gpct*,unsigned int) ;

__attribute__((used)) static int ni_m_set_gate2(struct ni_gpct *counter, unsigned int gate_source)
{




 ni_tio_set_gate2_raw(counter, gate_source);
 return 0;
}
