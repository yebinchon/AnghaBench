
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct np_info {int stid; struct cxgbit_np* cnp; struct np_info* next; } ;
struct cxgbit_np {int dummy; } ;
struct cxgbit_device {int np_lock; struct np_info** np_hash_tab; } ;


 int cxgbit_np_hashfn (struct cxgbit_np*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
cxgbit_np_hash_find(struct cxgbit_device *cdev, struct cxgbit_np *cnp)
{
 int stid = -1, bucket = cxgbit_np_hashfn(cnp);
 struct np_info *p;

 spin_lock(&cdev->np_lock);
 for (p = cdev->np_hash_tab[bucket]; p; p = p->next) {
  if (p->cnp == cnp) {
   stid = p->stid;
   break;
  }
 }
 spin_unlock(&cdev->np_lock);

 return stid;
}
