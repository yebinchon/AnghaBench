
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t ecryptfs_max_decoded_size(size_t encoded_size)
{






 return ((encoded_size + 1) * 3) / 4;
}
