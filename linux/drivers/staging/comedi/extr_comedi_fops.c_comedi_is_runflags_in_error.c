
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int COMEDI_SRF_ERROR ;

__attribute__((used)) static bool comedi_is_runflags_in_error(unsigned int runflags)
{
 return runflags & COMEDI_SRF_ERROR;
}
