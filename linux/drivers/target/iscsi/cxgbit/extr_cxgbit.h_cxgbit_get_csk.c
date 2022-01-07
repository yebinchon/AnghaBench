
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbit_sock {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void cxgbit_get_csk(struct cxgbit_sock *csk)
{
 kref_get(&csk->kref);
}
