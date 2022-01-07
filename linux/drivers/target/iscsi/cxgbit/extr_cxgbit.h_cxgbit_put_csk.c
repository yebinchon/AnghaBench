
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbit_sock {int kref; } ;


 int _cxgbit_free_csk ;
 int kref_put (int *,int ) ;

__attribute__((used)) static inline void cxgbit_put_csk(struct cxgbit_sock *csk)
{
 kref_put(&csk->kref, _cxgbit_free_csk);
}
