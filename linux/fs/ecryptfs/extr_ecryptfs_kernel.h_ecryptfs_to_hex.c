
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* bin2hex (char*,char*,size_t) ;

__attribute__((used)) static inline void
ecryptfs_to_hex(char *dst, char *src, size_t src_size)
{
 char *end = bin2hex(dst, src, src_size);
 *end = '\0';
}
