
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int pqi_num_elements_free(unsigned int pi,
 unsigned int ci, unsigned int elements_in_queue)
{
 unsigned int num_elements_used;

 if (pi >= ci)
  num_elements_used = pi - ci;
 else
  num_elements_used = elements_in_queue - ci + pi;

 return elements_in_queue - num_elements_used - 1;
}
