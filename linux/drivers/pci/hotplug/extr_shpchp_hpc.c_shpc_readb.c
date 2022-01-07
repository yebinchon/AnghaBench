
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct controller {scalar_t__ creg; } ;


 int readb (scalar_t__) ;

__attribute__((used)) static inline u8 shpc_readb(struct controller *ctrl, int reg)
{
 return readb(ctrl->creg + reg);
}
