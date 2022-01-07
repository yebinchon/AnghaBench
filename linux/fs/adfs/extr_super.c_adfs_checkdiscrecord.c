
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adfs_discrecord {int log2secsize; int idlen; scalar_t__* unused52; scalar_t__ format_version; int disc_size_high; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static int adfs_checkdiscrecord(struct adfs_discrecord *dr)
{
 unsigned int max_idlen;
 int i;


 if (dr->log2secsize != 8 &&
     dr->log2secsize != 9 &&
     dr->log2secsize != 10)
  return 1;


 if (dr->idlen < dr->log2secsize + 3)
  return 1;





 if (le32_to_cpu(dr->disc_size_high) >> dr->log2secsize)
  return 1;






 max_idlen = dr->format_version ? 19 : 16;
 if (dr->idlen > max_idlen)
  return 1;


 for (i = 0; i < sizeof(dr->unused52); i++)
  if (dr->unused52[i] != 0)
   return 1;

 return 0;
}
