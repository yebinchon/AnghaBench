
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static void calc_bucket_map(int bucket[], int num_buckets,
 int nsgs, int min_blocks, u32 *bucket_map)
{
 int i, j, b, size;


 for (i = 0; i <= nsgs; i++) {

  size = i + min_blocks;
  b = num_buckets;

  for (j = 0; j < num_buckets; j++) {
   if (bucket[j] >= size) {
    b = j;
    break;
   }
  }

  bucket_map[i] = b;
 }
}
