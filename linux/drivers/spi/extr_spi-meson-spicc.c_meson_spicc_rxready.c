
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_spicc_device {scalar_t__ base; } ;


 int FIELD_GET (int,int ) ;
 int SPICC_RF_EN ;
 int SPICC_RH ;
 int SPICC_RR ;
 scalar_t__ SPICC_STATREG ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline bool meson_spicc_rxready(struct meson_spicc_device *spicc)
{
 return FIELD_GET(SPICC_RH | SPICC_RR | SPICC_RF_EN,
    readl_relaxed(spicc->base + SPICC_STATREG));
}
