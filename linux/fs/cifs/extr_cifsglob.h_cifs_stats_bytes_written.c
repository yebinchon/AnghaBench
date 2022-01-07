
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_tcon {unsigned int bytes_written; int stat_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void cifs_stats_bytes_written(struct cifs_tcon *tcon,
         unsigned int bytes)
{
 if (bytes) {
  spin_lock(&tcon->stat_lock);
  tcon->bytes_written += bytes;
  spin_unlock(&tcon->stat_lock);
 }
}
