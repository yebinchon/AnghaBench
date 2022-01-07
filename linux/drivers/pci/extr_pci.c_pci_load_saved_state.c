
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_saved_state {struct pci_cap_saved_data* cap; int config_space; } ;
struct pci_dev {int state_saved; int saved_config_space; } ;
struct TYPE_2__ {int size; int data; } ;
struct pci_cap_saved_state {TYPE_1__ cap; } ;
struct pci_cap_saved_data {int size; int data; int cap_extended; int cap_nr; } ;


 int EINVAL ;
 struct pci_cap_saved_state* _pci_find_saved_cap (struct pci_dev*,int ,int ) ;
 int memcpy (int ,int ,int) ;

int pci_load_saved_state(struct pci_dev *dev,
    struct pci_saved_state *state)
{
 struct pci_cap_saved_data *cap;

 dev->state_saved = 0;

 if (!state)
  return 0;

 memcpy(dev->saved_config_space, state->config_space,
        sizeof(state->config_space));

 cap = state->cap;
 while (cap->size) {
  struct pci_cap_saved_state *tmp;

  tmp = _pci_find_saved_cap(dev, cap->cap_nr, cap->cap_extended);
  if (!tmp || tmp->cap.size != cap->size)
   return -EINVAL;

  memcpy(tmp->cap.data, cap->data, tmp->cap.size);
  cap = (struct pci_cap_saved_data *)((u8 *)cap +
         sizeof(struct pci_cap_saved_data) + cap->size);
 }

 dev->state_saved = 1;
 return 0;
}
