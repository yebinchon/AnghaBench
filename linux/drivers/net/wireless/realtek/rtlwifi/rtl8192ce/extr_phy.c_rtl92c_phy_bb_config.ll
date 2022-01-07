; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_phy.c_rtl92c_phy_bb_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_phy.c_rtl92c_phy_bb_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@REG_SYS_FUNC_EN = common dso_local global i64 0, align 8
@REG_AFE_PLL_CTRL = common dso_local global i64 0, align 8
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
@REG_LEDCFG0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92c_phy_bb_config(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  store i32 1, i32* %3, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %4, align 8
  store i32 1, i32* %7, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call i32 @_rtl92c_phy_init_bb_rf_register_definition(%struct.ieee80211_hw* %10)
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %13 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %14 = call i32 @rtl_read_word(%struct.rtl_priv* %12, i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %16 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @BIT(i32 13)
  %19 = or i32 %17, %18
  %20 = call i32 @BIT(i32 0)
  %21 = or i32 %19, %20
  %22 = call i32 @BIT(i32 1)
  %23 = or i32 %21, %22
  %24 = call i32 @rtl_write_word(%struct.rtl_priv* %15, i64 %16, i32 %23)
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %26 = load i64, i64* @REG_AFE_PLL_CTRL, align 8
  %27 = call i32 @rtl_write_byte(%struct.rtl_priv* %25, i64 %26, i32 131)
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %29 = load i64, i64* @REG_AFE_PLL_CTRL, align 8
  %30 = add nsw i64 %29, 1
  %31 = call i32 @rtl_write_byte(%struct.rtl_priv* %28, i64 %30, i32 219)
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %33 = load i64, i64* @REG_RF_CTRL, align 8
  %34 = load i32, i32* @RF_EN, align 4
  %35 = load i32, i32* @RF_RSTB, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @RF_SDMRSTB, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @rtl_write_byte(%struct.rtl_priv* %32, i64 %33, i32 %38)
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %41 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %42 = load i32, i32* @FEN_PPLL, align 4
  %43 = load i32, i32* @FEN_PCIEA, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @FEN_DIO_PCIE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @FEN_BB_GLB_RSTN, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @FEN_BBRSTB, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @rtl_write_byte(%struct.rtl_priv* %40, i64 %41, i32 %50)
  %52 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %53 = load i64, i64* @REG_AFE_XTAL_CTRL, align 8
  %54 = add nsw i64 %53, 1
  %55 = call i32 @rtl_write_byte(%struct.rtl_priv* %52, i64 %54, i32 128)
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %57 = load i32, i32* @REG_LEDCFG0, align 4
  %58 = call i32 @rtl_read_dword(%struct.rtl_priv* %56, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %60 = load i32, i32* @REG_LEDCFG0, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @BIT(i32 23)
  %63 = or i32 %61, %62
  %64 = call i32 @rtl_write_dword(%struct.rtl_priv* %59, i32 %60, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %70

67:                                               ; preds = %1
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %69 = call i32 @_rtl92c_phy_bb8192c_config_parafile(%struct.ieee80211_hw* %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %1
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92c_phy_init_bb_rf_register_definition(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_word(%struct.rtl_priv*, i64) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @_rtl92c_phy_bb8192c_config_parafile(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
