
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int max_queue_count () ;

__attribute__((used)) static inline unsigned int nvme_dbbuf_size(u32 stride)
{
 return (max_queue_count() * 8 * stride);
}
