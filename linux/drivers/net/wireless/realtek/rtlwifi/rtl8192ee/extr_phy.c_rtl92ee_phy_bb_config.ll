; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c_rtl92ee_phy_bb_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c_rtl92ee_phy_bb_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@REG_SYS_FUNC_EN = common dso_local global i64 0, align 8
@REG_RF_CTRL = common dso_local global i64 0, align 8
@RF_EN = common dso_local global i32 0, align 4
@RF_RSTB = common dso_local global i32 0, align 4
@RF_SDMRSTB = common dso_local global i32 0, align 4
@FEN_PPLL = common dso_local global i32 0, align 4
@FEN_PCIEA = common dso_local global i32 0, align 4
@FEN_DIO_PCIE = common dso_local global i32 0, align 4
@FEN_BB_GLB_RSTN = common dso_local global i32 0, align 4
@FEN_BBRSTB = common dso_local global i32 0, align 4
@REG_AFE_XTAL_CTRL = common dso_local global i64 0, align 8
@REG_MAC_PHY_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92ee_phy_bb_config(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %3, align 8
  store i32 1, i32* %4, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call i32 @phy_init_bb_rf_register_def(%struct.ieee80211_hw* %10)
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %13 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %14 = call i32 @rtl_read_word(%struct.rtl_priv* %12, i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %16 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @BIT(i32 13)
  %19 = or i32 %17, %18
  %20 = call i32 @BIT(i32 0)
  %21 = or i32 %19, %20
  %22 = call i32 @BIT(i32 1)
  %23 = or i32 %21, %22
  %24 = call i32 @rtl_write_word(%struct.rtl_priv* %15, i64 %16, i32 %23)
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %26 = load i64, i64* @REG_RF_CTRL, align 8
  %27 = load i32, i32* @RF_EN, align 4
  %28 = load i32, i32* @RF_RSTB, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @RF_SDMRSTB, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @rtl_write_byte(%struct.rtl_priv* %25, i64 %26, i32 %31)
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %34 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %35 = load i32, i32* @FEN_PPLL, align 4
  %36 = load i32, i32* @FEN_PCIEA, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @FEN_DIO_PCIE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @FEN_BB_GLB_RSTN, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @FEN_BBRSTB, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @rtl_write_byte(%struct.rtl_priv* %33, i64 %34, i32 %43)
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %46 = load i64, i64* @REG_AFE_XTAL_CTRL, align 8
  %47 = add nsw i64 %46, 1
  %48 = call i32 @rtl_write_byte(%struct.rtl_priv* %45, i64 %47, i32 128)
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %50 = call i32 @rtl_read_dword(%struct.rtl_priv* %49, i32 76)
  store i32 %50, i32* %6, align 4
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @BIT(i32 23)
  %54 = or i32 %52, %53
  %55 = call i32 @rtl_write_dword(%struct.rtl_priv* %51, i32 76, i32 %54)
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %57 = call i32 @_rtl92ee_phy_bb8192ee_config_parafile(%struct.ieee80211_hw* %56)
  store i32 %57, i32* %4, align 4
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %59 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 63
  store i32 %62, i32* %7, align 4
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %64 = load i32, i32* @REG_MAC_PHY_CTRL, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = shl i32 %66, 6
  %68 = or i32 %65, %67
  %69 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %63, i32 %64, i32 16773120, i32 %68)
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @phy_init_bb_rf_register_def(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_word(%struct.rtl_priv*, i64) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @_rtl92ee_phy_bb8192ee_config_parafile(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
