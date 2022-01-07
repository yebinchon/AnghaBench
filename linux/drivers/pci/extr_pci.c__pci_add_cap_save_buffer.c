
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int cap_extended; unsigned int size; int cap_nr; } ;
struct pci_cap_saved_state {TYPE_1__ cap; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct pci_cap_saved_state* kzalloc (int,int ) ;
 int pci_add_saved_cap (struct pci_dev*,struct pci_cap_saved_state*) ;
 int pci_find_capability (struct pci_dev*,int ) ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;

__attribute__((used)) static int _pci_add_cap_save_buffer(struct pci_dev *dev, u16 cap,
        bool extended, unsigned int size)
{
 int pos;
 struct pci_cap_saved_state *save_state;

 if (extended)
  pos = pci_find_ext_capability(dev, cap);
 else
  pos = pci_find_capability(dev, cap);

 if (!pos)
  return 0;

 save_state = kzalloc(sizeof(*save_state) + size, GFP_KERNEL);
 if (!save_state)
  return -ENOMEM;

 save_state->cap.cap_nr = cap;
 save_state->cap.cap_extended = extended;
 save_state->cap.size = size;
 pci_add_saved_cap(dev, save_state);

 return 0;
}
