
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int logging_level ;

__attribute__((used)) static inline bool do_logging(int level)
{
 return logging_level >= level;
}
