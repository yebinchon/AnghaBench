
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eeprom_priv {int * mac_addr; } ;



__attribute__((used)) static inline u8 *myid(struct eeprom_priv *peepriv)
{
 return peepriv->mac_addr;
}
