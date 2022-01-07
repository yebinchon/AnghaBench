
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_spicc_device {scalar_t__ base; } ;


 int FIELD_GET (int ,int ) ;
 scalar_t__ SPICC_STATREG ;
 int SPICC_TF ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline bool meson_spicc_txfull(struct meson_spicc_device *spicc)
{
 return !!FIELD_GET(SPICC_TF,
      readl_relaxed(spicc->base + SPICC_STATREG));
}
