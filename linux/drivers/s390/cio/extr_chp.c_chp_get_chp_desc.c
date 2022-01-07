
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chp_id {int dummy; } ;
struct channel_path_desc_fmt0 {int dummy; } ;
struct channel_path {int lock; int desc; } ;


 int GFP_KERNEL ;
 struct channel_path* chpid_to_chp (struct chp_id) ;
 struct channel_path_desc_fmt0* kmalloc (int,int ) ;
 int memcpy (struct channel_path_desc_fmt0*,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct channel_path_desc_fmt0 *chp_get_chp_desc(struct chp_id chpid)
{
 struct channel_path *chp;
 struct channel_path_desc_fmt0 *desc;

 chp = chpid_to_chp(chpid);
 if (!chp)
  return ((void*)0);
 desc = kmalloc(sizeof(*desc), GFP_KERNEL);
 if (!desc)
  return ((void*)0);

 mutex_lock(&chp->lock);
 memcpy(desc, &chp->desc, sizeof(*desc));
 mutex_unlock(&chp->lock);
 return desc;
}
