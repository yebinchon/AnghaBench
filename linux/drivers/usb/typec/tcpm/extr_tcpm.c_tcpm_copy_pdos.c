
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int PDO_MAX_OBJECTS ;

__attribute__((used)) static int tcpm_copy_pdos(u32 *dest_pdo, const u32 *src_pdo,
     unsigned int nr_pdo)
{
 unsigned int i;

 if (nr_pdo > PDO_MAX_OBJECTS)
  nr_pdo = PDO_MAX_OBJECTS;

 for (i = 0; i < nr_pdo; i++)
  dest_pdo[i] = src_pdo[i];

 return nr_pdo;
}
