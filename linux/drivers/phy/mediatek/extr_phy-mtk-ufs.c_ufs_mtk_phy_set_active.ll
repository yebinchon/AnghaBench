; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-ufs.c_ufs_mtk_phy_set_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-ufs.c_ufs_mtk_phy_set_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_mtk_phy = type { i32 }

@MP_GLB_DIG_8C = common dso_local global i32 0, align 4
@PLL_PWR_ON = common dso_local global i32 0, align 4
@FRC_FRC_PWR_ON = common dso_local global i32 0, align 4
@PLL_ISO_EN = common dso_local global i32 0, align 4
@FRC_PLL_ISO_EN = common dso_local global i32 0, align 4
@MP_LN_RX_44 = common dso_local global i32 0, align 4
@CDR_PWR_ON = common dso_local global i32 0, align 4
@FRC_CDR_PWR_ON = common dso_local global i32 0, align 4
@CDR_ISO_EN = common dso_local global i32 0, align 4
@FRC_CDR_ISO_EN = common dso_local global i32 0, align 4
@MP_LN_DIG_RX_AC = common dso_local global i32 0, align 4
@RX_SQ_EN = common dso_local global i32 0, align 4
@FRC_RX_SQ_EN = common dso_local global i32 0, align 4
@MP_LN_DIG_RX_9C = common dso_local global i32 0, align 4
@FSM_DIFZ_FRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_mtk_phy*)* @ufs_mtk_phy_set_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_mtk_phy_set_active(%struct.ufs_mtk_phy* %0) #0 {
  %2 = alloca %struct.ufs_mtk_phy*, align 8
  store %struct.ufs_mtk_phy* %0, %struct.ufs_mtk_phy** %2, align 8
  %3 = load %struct.ufs_mtk_phy*, %struct.ufs_mtk_phy** %2, align 8
  %4 = load i32, i32* @MP_GLB_DIG_8C, align 4
  %5 = load i32, i32* @PLL_PWR_ON, align 4
  %6 = call i32 @mphy_set_bit(%struct.ufs_mtk_phy* %3, i32 %4, i32 %5)
  %7 = load %struct.ufs_mtk_phy*, %struct.ufs_mtk_phy** %2, align 8
  %8 = load i32, i32* @MP_GLB_DIG_8C, align 4
  %9 = load i32, i32* @FRC_FRC_PWR_ON, align 4
  %10 = call i32 @mphy_clr_bit(%struct.ufs_mtk_phy* %7, i32 %8, i32 %9)
  %11 = load %struct.ufs_mtk_phy*, %struct.ufs_mtk_phy** %2, align 8
  %12 = load i32, i32* @MP_GLB_DIG_8C, align 4
  %13 = load i32, i32* @PLL_ISO_EN, align 4
  %14 = call i32 @mphy_clr_bit(%struct.ufs_mtk_phy* %11, i32 %12, i32 %13)
  %15 = load %struct.ufs_mtk_phy*, %struct.ufs_mtk_phy** %2, align 8
  %16 = load i32, i32* @MP_GLB_DIG_8C, align 4
  %17 = load i32, i32* @FRC_PLL_ISO_EN, align 4
  %18 = call i32 @mphy_clr_bit(%struct.ufs_mtk_phy* %15, i32 %16, i32 %17)
  %19 = load %struct.ufs_mtk_phy*, %struct.ufs_mtk_phy** %2, align 8
  %20 = load i32, i32* @MP_LN_RX_44, align 4
  %21 = load i32, i32* @CDR_PWR_ON, align 4
  %22 = call i32 @mphy_set_bit(%struct.ufs_mtk_phy* %19, i32 %20, i32 %21)
  %23 = load %struct.ufs_mtk_phy*, %struct.ufs_mtk_phy** %2, align 8
  %24 = load i32, i32* @MP_LN_RX_44, align 4
  %25 = load i32, i32* @FRC_CDR_PWR_ON, align 4
  %26 = call i32 @mphy_clr_bit(%struct.ufs_mtk_phy* %23, i32 %24, i32 %25)
  %27 = load %struct.ufs_mtk_phy*, %struct.ufs_mtk_phy** %2, align 8
  %28 = load i32, i32* @MP_LN_RX_44, align 4
  %29 = load i32, i32* @CDR_ISO_EN, align 4
  %30 = call i32 @mphy_clr_bit(%struct.ufs_mtk_phy* %27, i32 %28, i32 %29)
  %31 = load %struct.ufs_mtk_phy*, %struct.ufs_mtk_phy** %2, align 8
  %32 = load i32, i32* @MP_LN_RX_44, align 4
  %33 = load i32, i32* @FRC_CDR_ISO_EN, align 4
  %34 = call i32 @mphy_clr_bit(%struct.ufs_mtk_phy* %31, i32 %32, i32 %33)
  %35 = load %struct.ufs_mtk_phy*, %struct.ufs_mtk_phy** %2, align 8
  %36 = load i32, i32* @MP_LN_DIG_RX_AC, align 4
  %37 = load i32, i32* @RX_SQ_EN, align 4
  %38 = call i32 @mphy_set_bit(%struct.ufs_mtk_phy* %35, i32 %36, i32 %37)
  %39 = load %struct.ufs_mtk_phy*, %struct.ufs_mtk_phy** %2, align 8
  %40 = load i32, i32* @MP_LN_DIG_RX_AC, align 4
  %41 = load i32, i32* @FRC_RX_SQ_EN, align 4
  %42 = call i32 @mphy_clr_bit(%struct.ufs_mtk_phy* %39, i32 %40, i32 %41)
  %43 = call i32 @udelay(i32 1)
  %44 = load %struct.ufs_mtk_phy*, %struct.ufs_mtk_phy** %2, align 8
  %45 = load i32, i32* @MP_LN_DIG_RX_9C, align 4
  %46 = load i32, i32* @FSM_DIFZ_FRC, align 4
  %47 = call i32 @mphy_clr_bit(%struct.ufs_mtk_phy* %44, i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @mphy_set_bit(%struct.ufs_mtk_phy*, i32, i32) #1

declare dso_local i32 @mphy_clr_bit(%struct.ufs_mtk_phy*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
