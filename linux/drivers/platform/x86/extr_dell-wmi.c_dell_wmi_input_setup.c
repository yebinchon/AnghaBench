
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct wmi_device {int dev; } ;
struct key_entry {int code; int type; } ;
struct dell_wmi_priv {TYPE_3__* input_dev; } ;
struct dell_dmi_results {int err; int keymap_size; struct key_entry* keymap; } ;
struct TYPE_8__ {int * parent; } ;
struct TYPE_7__ {int bustype; } ;
struct TYPE_9__ {char* name; TYPE_2__ dev; TYPE_1__ id; } ;


 int ARRAY_SIZE (struct key_entry*) ;
 int BUS_HOST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KE_END ;
 struct key_entry* dell_wmi_keymap_type_0000 ;
 struct key_entry* dell_wmi_keymap_type_0010 ;
 struct key_entry* dell_wmi_keymap_type_0011 ;
 struct dell_wmi_priv* dev_get_drvdata (int *) ;
 scalar_t__ dmi_walk (int ,struct dell_dmi_results*) ;
 int handle_dmi_entry ;
 scalar_t__ have_scancode (int,struct key_entry*,int) ;
 TYPE_3__* input_allocate_device () ;
 int input_free_device (TYPE_3__*) ;
 int input_register_device (TYPE_3__*) ;
 struct key_entry* kcalloc (int,int,int ) ;
 int kfree (struct key_entry*) ;
 int pr_warn (char*) ;
 int sparse_keymap_setup (TYPE_3__*,struct key_entry*,int *) ;

__attribute__((used)) static int dell_wmi_input_setup(struct wmi_device *wdev)
{
 struct dell_wmi_priv *priv = dev_get_drvdata(&wdev->dev);
 struct dell_dmi_results dmi_results = {};
 struct key_entry *keymap;
 int err, i, pos = 0;

 priv->input_dev = input_allocate_device();
 if (!priv->input_dev)
  return -ENOMEM;

 priv->input_dev->name = "Dell WMI hotkeys";
 priv->input_dev->id.bustype = BUS_HOST;
 priv->input_dev->dev.parent = &wdev->dev;

 if (dmi_walk(handle_dmi_entry, &dmi_results)) {





  pr_warn("no DMI; using the old-style hotkey interface\n");
 }

 if (dmi_results.err) {
  err = dmi_results.err;
  goto err_free_dev;
 }

 keymap = kcalloc(dmi_results.keymap_size +
    ARRAY_SIZE(dell_wmi_keymap_type_0000) +
    ARRAY_SIZE(dell_wmi_keymap_type_0010) +
    ARRAY_SIZE(dell_wmi_keymap_type_0011) +
    1,
    sizeof(struct key_entry), GFP_KERNEL);
 if (!keymap) {
  kfree(dmi_results.keymap);
  err = -ENOMEM;
  goto err_free_dev;
 }


 for (i = 0; i < dmi_results.keymap_size; i++) {
  keymap[pos] = dmi_results.keymap[i];
  keymap[pos].code |= (0x0010 << 16);
  pos++;
 }

 kfree(dmi_results.keymap);


 for (i = 0; i < ARRAY_SIZE(dell_wmi_keymap_type_0010); i++) {
  const struct key_entry *entry = &dell_wmi_keymap_type_0010[i];






  if (dmi_results.keymap_size &&
      have_scancode(entry->code | (0x0010 << 16),
      keymap, dmi_results.keymap_size)
     )
   continue;

  keymap[pos] = *entry;
  keymap[pos].code |= (0x0010 << 16);
  pos++;
 }


 for (i = 0; i < ARRAY_SIZE(dell_wmi_keymap_type_0011); i++) {
  keymap[pos] = dell_wmi_keymap_type_0011[i];
  keymap[pos].code |= (0x0011 << 16);
  pos++;
 }





 for (i = 0; i < ARRAY_SIZE(dell_wmi_keymap_type_0000); i++) {
  keymap[pos] = dell_wmi_keymap_type_0000[i];
  pos++;
 }

 keymap[pos].type = KE_END;

 err = sparse_keymap_setup(priv->input_dev, keymap, ((void*)0));




 kfree(keymap);
 if (err)
  goto err_free_dev;

 err = input_register_device(priv->input_dev);
 if (err)
  goto err_free_dev;

 return 0;

 err_free_dev:
 input_free_device(priv->input_dev);
 return err;
}
