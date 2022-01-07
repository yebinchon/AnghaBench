
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_smd_edge {int dummy; } ;
struct device {int dummy; } ;


 int qcom_smd_unregister_edge (struct qcom_smd_edge*) ;
 struct qcom_smd_edge* to_smd_edge (struct device*) ;

__attribute__((used)) static int qcom_smd_remove_edge(struct device *dev, void *data)
{
 struct qcom_smd_edge *edge = to_smd_edge(dev);

 return qcom_smd_unregister_edge(edge);
}
