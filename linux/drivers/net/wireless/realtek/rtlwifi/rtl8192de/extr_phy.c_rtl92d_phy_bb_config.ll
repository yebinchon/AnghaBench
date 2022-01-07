; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_bb_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_bb_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

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
define dso_local i32 @rtl92d_phy_bb_config(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call i32 @_rtl92d_phy_init_bb_rf_register_definition(%struct.ieee80211_hw* %9)
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %12 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %13 = call i32 @rtl_read_word(%struct.rtl_priv* %11, i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %15 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @BIT(i32 13)
  %18 = or i32 %16, %17
  %19 = call i32 @BIT(i32 0)
  %20 = or i32 %18, %19
  %21 = call i32 @BIT(i32 1)
  %22 = or i32 %20, %21
  %23 = call i32 @rtl_write_word(%struct.rtl_priv* %14, i64 %15, i32 %22)
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %25 = load i64, i64* @REG_AFE_PLL_CTRL, align 8
  %26 = call i32 @rtl_write_byte(%struct.rtl_priv* %24, i64 %25, i32 131)
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %28 = load i64, i64* @REG_AFE_PLL_CTRL, align 8
  %29 = add nsw i64 %28, 1
  %30 = call i32 @rtl_write_byte(%struct.rtl_priv* %27, i64 %29, i32 219)
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %32 = load i64, i64* @REG_RF_CTRL, align 8
  %33 = call i32 @rtl_read_byte(%struct.rtl_priv* %31, i64 %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %35 = load i64, i64* @REG_RF_CTRL, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @RF_EN, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @RF_RSTB, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @RF_SDMRSTB, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @rtl_write_byte(%struct.rtl_priv* %34, i64 %35, i32 %42)
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %45 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %46 = load i32, i32* @FEN_PPLL, align 4
  %47 = load i32, i32* @FEN_PCIEA, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @FEN_DIO_PCIE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @FEN_BB_GLB_RSTN, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @FEN_BBRSTB, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @rtl_write_byte(%struct.rtl_priv* %44, i64 %45, i32 %54)
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %57 = load i64, i64* @REG_AFE_XTAL_CTRL, align 8
  %58 = add nsw i64 %57, 1
  %59 = call i32 @rtl_write_byte(%struct.rtl_priv* %56, i64 %58, i32 128)
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %61 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @IS_92D_SINGLEPHY(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %1
  %67 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %68 = load i32, i32* @REG_LEDCFG0, align 4
  %69 = call i32 @rtl_read_dword(%struct.rtl_priv* %67, i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %71 = load i32, i32* @REG_LEDCFG0, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @BIT(i32 23)
  %74 = or i32 %72, %73
  %75 = call i32 @rtl_write_dword(%struct.rtl_priv* %70, i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %66, %1
  %77 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %78 = call i32 @_rtl92d_phy_bb_config(%struct.ieee80211_hw* %77)
  ret i32 %78
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92d_phy_init_bb_rf_register_definition(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_word(%struct.rtl_priv*, i64) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i64) #1

declare dso_local i32 @IS_92D_SINGLEPHY(i32) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @_rtl92d_phy_bb_config(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
