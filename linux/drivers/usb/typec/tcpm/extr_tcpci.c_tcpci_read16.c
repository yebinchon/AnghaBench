
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tcpci {int regmap; } ;


 int regmap_raw_read (int ,unsigned int,int *,int) ;

__attribute__((used)) static int tcpci_read16(struct tcpci *tcpci, unsigned int reg, u16 *val)
{
 return regmap_raw_read(tcpci->regmap, reg, val, sizeof(u16));
}
