
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pqi_event_type_to_event_index (unsigned int) ;

__attribute__((used)) static inline bool pqi_is_supported_event(unsigned int event_type)
{
 return pqi_event_type_to_event_index(event_type) != -1;
}
