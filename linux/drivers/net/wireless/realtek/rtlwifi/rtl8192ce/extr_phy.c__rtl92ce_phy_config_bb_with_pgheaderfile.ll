; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_phy.c__rtl92ce_phy_config_bb_with_pgheaderfile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_phy.c__rtl92ce_phy_config_bb_with_pgheaderfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@PHY_REG_ARRAY_PGLENGTH = common dso_local global i32 0, align 4
@RTL8192CEPHY_REG_ARRAY_PG = common dso_local global i32* null, align 8
@BASEBAND_CONFIG_PHY_REG = common dso_local global i64 0, align 8
@COMP_SEND = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"configtype != BaseBand_Config_PHY_REG\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_rtl92ce_phy_config_bb_with_pgheaderfile(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %5, align 8
  %11 = load i32, i32* @PHY_REG_ARRAY_PGLENGTH, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32*, i32** @RTL8192CEPHY_REG_ARRAY_PG, align 8
  store i32* %12, i32** %7, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @BASEBAND_CONFIG_PHY_REG, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %51

16:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %47, %16
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %17
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @rtl_addr_delay(i32 %26)
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @_rtl92c_store_pwrindex_diffrate_offset(%struct.ieee80211_hw* %28, i32 %33, i32 %39, i32 %45)
  br label %47

47:                                               ; preds = %21
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 3
  store i32 %49, i32* %6, align 4
  br label %17

50:                                               ; preds = %17
  br label %56

51:                                               ; preds = %2
  %52 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %53 = load i32, i32* @COMP_SEND, align 4
  %54 = load i32, i32* @DBG_TRACE, align 4
  %55 = call i32 @RT_TRACE(%struct.rtl_priv* %52, i32 %53, i32 %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %51, %50
  ret i32 1
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_addr_delay(i32) #1

declare dso_local i32 @_rtl92c_store_pwrindex_diffrate_offset(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
