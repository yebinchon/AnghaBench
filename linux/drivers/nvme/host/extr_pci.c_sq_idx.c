
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;



__attribute__((used)) static inline unsigned int sq_idx(unsigned int qid, u32 stride)
{
 return qid * 2 * stride;
}
