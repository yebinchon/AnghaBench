
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le32 ;


 int GENMASK (int,int ) ;
 int le32_get_bits (int ,int ) ;

__attribute__((used)) static inline int get_rx_desc_seq(__le32 *__pdesc)
{
 return le32_get_bits(*(__pdesc + 2), GENMASK(11, 0));
}
