
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_wcnss {int use_48mhz_xo; int iris_lock; struct qcom_iris* iris; } ;
struct qcom_iris {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void qcom_wcnss_assign_iris(struct qcom_wcnss *wcnss,
       struct qcom_iris *iris,
       bool use_48mhz_xo)
{
 mutex_lock(&wcnss->iris_lock);

 wcnss->iris = iris;
 wcnss->use_48mhz_xo = use_48mhz_xo;

 mutex_unlock(&wcnss->iris_lock);
}
