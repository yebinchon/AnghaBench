
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct hvterm_priv {unsigned long left; size_t offset; char* buf; int buf_lock; int termno; } ;


 scalar_t__ WARN_ON (int) ;
 unsigned long hvc_get_chars (int ,char*,int) ;
 struct hvterm_priv** hvterm_privs ;
 int memcpy (char*,char*,int) ;
 int memmove (char*,char*,unsigned long) ;
 int min (int,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int hvterm_raw_get_chars(uint32_t vtermno, char *buf, int count)
{
 struct hvterm_priv *pv = hvterm_privs[vtermno];
 unsigned long i;
 unsigned long flags;
 int got;

 if (WARN_ON(!pv))
  return 0;

 spin_lock_irqsave(&pv->buf_lock, flags);

 if (pv->left == 0) {
  pv->offset = 0;
  pv->left = hvc_get_chars(pv->termno, pv->buf, count);





  for (i = 1; i < pv->left; ++i) {
   if (pv->buf[i] == 0 && pv->buf[i-1] == '\r') {
    --pv->left;
    if (i < pv->left) {
     memmove(&pv->buf[i], &pv->buf[i+1],
      pv->left - i);
    }
   }
  }
 }

 got = min(count, pv->left);
 memcpy(buf, &pv->buf[pv->offset], got);
 pv->offset += got;
 pv->left -= got;

 spin_unlock_irqrestore(&pv->buf_lock, flags);

 return got;
}
