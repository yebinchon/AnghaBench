
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CR_REQS (unsigned int) ;

__attribute__((used)) static unsigned int mite_drq_reqs(unsigned int drq_line)
{

 return CR_REQS((drq_line & 0x3) | 0x4);
}
