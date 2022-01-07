
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 size_t round_up (unsigned int,int) ;

__attribute__((used)) static size_t xdr_strlen(unsigned int len)
{
 return sizeof(__be32) + round_up(len, sizeof(__be32));
}
