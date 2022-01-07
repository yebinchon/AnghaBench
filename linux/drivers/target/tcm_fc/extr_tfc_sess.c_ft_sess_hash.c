
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int FT_SESS_HASH_BITS ;
 int hash_32 (int ,int ) ;

__attribute__((used)) static u32 ft_sess_hash(u32 port_id)
{
 return hash_32(port_id, FT_SESS_HASH_BITS);
}
