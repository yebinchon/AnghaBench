
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NUM_DLCI ;

__attribute__((used)) static inline unsigned int mux_line_to_num(unsigned int line)
{
 return line / NUM_DLCI;
}
