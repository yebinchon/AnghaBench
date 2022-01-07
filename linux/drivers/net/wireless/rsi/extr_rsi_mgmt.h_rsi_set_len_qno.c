
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int __le16 ;


 int cpu_to_le16 (int) ;

__attribute__((used)) static inline void rsi_set_len_qno(__le16 *addr, u16 len, u8 qno)
{
 *addr = cpu_to_le16(len | ((qno & 7) << 12));
}
