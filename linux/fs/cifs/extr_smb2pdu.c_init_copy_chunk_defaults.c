
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_tcon {int max_chunks; int max_bytes_chunk; int max_bytes_copy; } ;



__attribute__((used)) static inline void init_copy_chunk_defaults(struct cifs_tcon *tcon)
{
 tcon->max_chunks = 256;
 tcon->max_bytes_chunk = 1048576;
 tcon->max_bytes_copy = 16777216;
}
