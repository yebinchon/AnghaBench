; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c_rtl8821ae_phy_bb_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c_rtl8821ae_phy_bb_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i8* }
%struct.rtl_efuse = type { i32 }
%struct.rtl_hal = type { i64 }

@REG_SYS_FUNC_EN = common dso_local global i32 0, align 4
@FEN_PCIEA = common dso_local global i32 0, align 4
@FEN_BB_GLB_RSTN = common dso_local global i32 0, align 4
@FEN_BBRSTB = common dso_local global i32 0, align 4
@REG_RF_CTRL = common dso_local global i32 0, align 4
@REG_OPT_CTRL = common dso_local global i32 0, align 4
@HARDWARE_TYPE_RTL8812AE = common dso_local global i64 0, align 8
@REG_MAC_PHY_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8821ae_phy_bb_config(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.rtl_efuse*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca %struct.rtl_hal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  store i32 1, i32* %3, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %4, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %13)
  store %struct.rtl_efuse* %14, %struct.rtl_efuse** %5, align 8
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %16 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %15, i32 0, i32 0
  store %struct.rtl_phy* %16, %struct.rtl_phy** %6, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %18 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %17)
  %19 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %18)
  store %struct.rtl_hal* %19, %struct.rtl_hal** %7, align 8
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %21 = call i32 @phy_init_bb_rf_register_definition(%struct.ieee80211_hw* %20)
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %23 = load i32, i32* @REG_SYS_FUNC_EN, align 4
  %24 = call i8* @rtl_read_byte(%struct.rtl_priv* %22, i32 %23)
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @FEN_PCIEA, align 4
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %30 = load i32, i32* @REG_SYS_FUNC_EN, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @rtl_write_byte(%struct.rtl_priv* %29, i32 %30, i32 %31)
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %34 = load i32, i32* @REG_SYS_FUNC_EN, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @FEN_BB_GLB_RSTN, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @FEN_BBRSTB, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @rtl_write_byte(%struct.rtl_priv* %33, i32 %34, i32 %39)
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %42 = load i32, i32* @REG_RF_CTRL, align 4
  %43 = call i32 @rtl_write_byte(%struct.rtl_priv* %41, i32 %42, i32 7)
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %45 = load i32, i32* @REG_OPT_CTRL, align 4
  %46 = add nsw i32 %45, 2
  %47 = call i32 @rtl_write_byte(%struct.rtl_priv* %44, i32 %46, i32 7)
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %49 = call i32 @_rtl8821ae_phy_bb8821a_config_parafile(%struct.ieee80211_hw* %48)
  store i32 %49, i32* %3, align 4
  %50 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %51 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %1
  %56 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %57 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 63
  store i32 %59, i32* %9, align 4
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %61 = load i32, i32* @REG_MAC_PHY_CTRL, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = shl i32 %63, 6
  %65 = or i32 %62, %64
  %66 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %60, i32 %61, i32 2146959360, i32 %65)
  br label %79

67:                                               ; preds = %1
  %68 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %69 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 63
  store i32 %71, i32* %9, align 4
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %73 = load i32, i32* @REG_MAC_PHY_CTRL, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = shl i32 %75, 6
  %77 = or i32 %74, %76
  %78 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %72, i32 %73, i32 16773120, i32 %77)
  br label %79

79:                                               ; preds = %67, %55
  %80 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %81 = call i8* @rtl_read_byte(%struct.rtl_priv* %80, i32 2103)
  %82 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %83 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @phy_init_bb_rf_register_definition(%struct.ieee80211_hw*) #1

declare dso_local i8* @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @_rtl8821ae_phy_bb8821a_config_parafile(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
