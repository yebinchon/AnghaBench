
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int min (unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int max_bytes(unsigned int start, unsigned int len,
         unsigned int boundary)
{
 return min(boundary - (start & (boundary - 1)), len);
}
