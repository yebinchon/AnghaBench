
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (unsigned int*) ;
 unsigned int* pqi_supported_event_types ;

__attribute__((used)) static inline int pqi_event_type_to_event_index(unsigned int event_type)
{
 int index;

 for (index = 0; index < ARRAY_SIZE(pqi_supported_event_types); index++)
  if (event_type == pqi_supported_event_types[index])
   return index;

 return -1;
}
