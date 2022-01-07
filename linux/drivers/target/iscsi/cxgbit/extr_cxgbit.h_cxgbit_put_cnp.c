
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbit_np {int kref; } ;


 int _cxgbit_free_cnp ;
 int kref_put (int *,int ) ;

__attribute__((used)) static inline void cxgbit_put_cnp(struct cxgbit_np *cnp)
{
 kref_put(&cnp->kref, _cxgbit_free_cnp);
}
