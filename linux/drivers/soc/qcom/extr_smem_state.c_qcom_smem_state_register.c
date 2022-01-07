
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_smem_state_ops {int dummy; } ;
struct qcom_smem_state {int list; void* priv; struct qcom_smem_state_ops ops; struct device_node* of_node; int refcount; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 struct qcom_smem_state* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int kref_init (int *) ;
 struct qcom_smem_state* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smem_states ;

struct qcom_smem_state *qcom_smem_state_register(struct device_node *of_node,
       const struct qcom_smem_state_ops *ops,
       void *priv)
{
 struct qcom_smem_state *state;

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (!state)
  return ERR_PTR(-ENOMEM);

 kref_init(&state->refcount);

 state->of_node = of_node;
 state->ops = *ops;
 state->priv = priv;

 mutex_lock(&list_lock);
 list_add(&state->list, &smem_states);
 mutex_unlock(&list_lock);

 return state;
}
