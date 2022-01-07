
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats {int dummy; } ;
typedef size_t ssize_t ;


 int stats_init (struct stats*) ;

__attribute__((used)) static inline ssize_t stats_store(struct stats *stats, const char *buf,
      size_t size)
{
 stats_init(stats);
 return size;
}
