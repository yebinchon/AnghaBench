
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kset {int dummy; } ;
struct gb_audio_manager_module_descriptor {int dummy; } ;
struct TYPE_3__ {struct kset* kset; } ;
struct gb_audio_manager_module {int id; TYPE_1__ kobj; int desc; int list; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int gb_audio_module_type ;
 int kobject_init_and_add (TYPE_1__*,int *,int *,char*,int) ;
 int kobject_put (TYPE_1__*) ;
 struct gb_audio_manager_module* kzalloc (int,int ) ;
 int memcpy (int *,struct gb_audio_manager_module_descriptor*,int) ;
 int pr_err (char*,int) ;
 int pr_info (char*,int) ;
 int send_add_uevent (struct gb_audio_manager_module*) ;

int gb_audio_manager_module_create(
 struct gb_audio_manager_module **module,
 struct kset *manager_kset,
 int id, struct gb_audio_manager_module_descriptor *desc)
{
 int err;
 struct gb_audio_manager_module *m;

 m = kzalloc(sizeof(*m), GFP_ATOMIC);
 if (!m)
  return -ENOMEM;


 INIT_LIST_HEAD(&m->list);


 m->id = id;


 memcpy(&m->desc, desc, sizeof(*desc));


 m->kobj.kset = manager_kset;







 err = kobject_init_and_add(&m->kobj, &gb_audio_module_type, ((void*)0), "%d",
       id);
 if (err) {
  pr_err("failed initializing kobject for audio module #%d\n",
         id);
  kobject_put(&m->kobj);
  return err;
 }




 send_add_uevent(m);

 *module = m;
 pr_info("Created audio module #%d\n", id);
 return 0;
}
