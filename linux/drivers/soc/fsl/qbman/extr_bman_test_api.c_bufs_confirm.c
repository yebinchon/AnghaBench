
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_BUFS ;
 int WARN_ON (int) ;
 int bufs_cmp (int *,int *) ;
 int * bufs_in ;
 int * bufs_out ;

__attribute__((used)) static void bufs_confirm(void)
{
 int i, j;

 for (i = 0; i < NUM_BUFS; i++) {
  int matches = 0;

  for (j = 0; j < NUM_BUFS; j++)
   if (!bufs_cmp(&bufs_in[i], &bufs_out[j]))
    matches++;
  WARN_ON(matches != 1);
 }
}
