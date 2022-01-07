
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int pending_ring_idx_t ;


 int MAX_PENDING_REQS ;

__attribute__((used)) static inline pending_ring_idx_t pending_index(unsigned i)
{
 return i & (MAX_PENDING_REQS-1);
}
