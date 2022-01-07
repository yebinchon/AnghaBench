; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_phy.c_rtl8723be_phy_bb_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_phy.c_rtl8723be_phy_bb_config.c"
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
define dso_local i32 @rtl8723be_phy_bb_config(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  store i32 1, i32* %3, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %4, align 8
  store i32 1, i32* %6, align 4
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %12 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = call i32 @rtl8723_phy_init_bb_rf_reg_def(%struct.ieee80211_hw* %15)
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %18 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %19 = call i32 @rtl_read_word(%struct.rtl_priv* %17, i64 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %21 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @BIT(i32 13)
  %24 = or i32 %22, %23
  %25 = call i32 @BIT(i32 0)
  %26 = or i32 %24, %25
  %27 = call i32 @BIT(i32 1)
  %28 = or i32 %26, %27
  %29 = call i32 @rtl_write_word(%struct.rtl_priv* %20, i64 %21, i32 %28)
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %31 = load i64, i64* @REG_RF_CTRL, align 8
  %32 = load i32, i32* @RF_EN, align 4
  %33 = load i32, i32* @RF_RSTB, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @RF_SDMRSTB, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @rtl_write_byte(%struct.rtl_priv* %30, i64 %31, i32 %36)
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %39 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %40 = load i32, i32* @FEN_PPLL, align 4
  %41 = load i32, i32* @FEN_PCIEA, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @FEN_DIO_PCIE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @FEN_BB_GLB_RSTN, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @FEN_BBRSTB, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @rtl_write_byte(%struct.rtl_priv* %38, i64 %39, i32 %48)
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %51 = call i32 @rtl_read_dword(%struct.rtl_priv* %50, i32 76)
  store i32 %51, i32* %7, align 4
  %52 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @BIT(i32 23)
  %55 = or i32 %53, %54
  %56 = call i32 @rtl_write_dword(%struct.rtl_priv* %52, i32 76, i32 %55)
  %57 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %58 = load i64, i64* @REG_AFE_XTAL_CTRL, align 8
  %59 = add nsw i64 %58, 1
  %60 = call i32 @rtl_write_byte(%struct.rtl_priv* %57, i64 %59, i32 128)
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %1
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %65 = call i32 @_rtl8723be_phy_bb8723b_config_parafile(%struct.ieee80211_hw* %64)
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %63, %1
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, 63
  store i32 %68, i32* %8, align 4
  %69 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %70 = load i32, i32* @REG_MAC_PHY_CTRL, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = shl i32 %72, 6
  %74 = or i32 %71, %73
  %75 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %69, i32 %70, i32 16773120, i32 %74)
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723_phy_init_bb_rf_reg_def(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_word(%struct.rtl_priv*, i64) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @_rtl8723be_phy_bb8723b_config_parafile(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
