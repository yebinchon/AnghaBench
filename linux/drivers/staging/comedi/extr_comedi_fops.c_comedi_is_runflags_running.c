
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int COMEDI_SRF_RUNNING ;

__attribute__((used)) static bool comedi_is_runflags_running(unsigned int runflags)
{
 return runflags & COMEDI_SRF_RUNNING;
}
