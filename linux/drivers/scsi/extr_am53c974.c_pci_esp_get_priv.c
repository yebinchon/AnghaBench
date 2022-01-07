
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_esp_priv {int dummy; } ;
struct esp {int dev; } ;


 struct pci_esp_priv* dev_get_drvdata (int ) ;

__attribute__((used)) static inline struct pci_esp_priv *pci_esp_get_priv(struct esp *esp)
{
 return dev_get_drvdata(esp->dev);
}
