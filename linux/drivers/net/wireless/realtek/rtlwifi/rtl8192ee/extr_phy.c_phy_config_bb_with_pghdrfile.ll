; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c_phy_config_bb_with_pghdrfile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c_phy_config_bb_with_pghdrfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@RTL8192EE_PHY_REG_ARRAY_PG_LEN = common dso_local global i32 0, align 4
@RTL8192EE_PHY_REG_ARRAY_PG = common dso_local global i32* null, align 8
@BASEBAND_CONFIG_PHY_REG = common dso_local global i64 0, align 8
@COMP_SEND = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"configtype != BaseBand_Config_PHY_REG\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i64)* @phy_config_bb_with_pghdrfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_config_bb_with_pghdrfile(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  store %struct.rtl_priv* %16, %struct.rtl_priv** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* @RTL8192EE_PHY_REG_ARRAY_PG_LEN, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** @RTL8192EE_PHY_REG_ARRAY_PG, align 8
  store i32* %18, i32** %7, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @BASEBAND_CONFIG_PHY_REG, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %79

22:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %75, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %78

27:                                               ; preds = %23
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 3
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %12, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %13, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 5
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ult i32 %63, -842150451
  br i1 %64, label %65, label %74

65:                                               ; preds = %27
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @_rtl92ee_store_tx_power_by_rate(%struct.ieee80211_hw* %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72)
  br label %75

74:                                               ; preds = %27
  br label %75

75:                                               ; preds = %74, %65
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 6
  store i32 %77, i32* %6, align 4
  br label %23

78:                                               ; preds = %23
  br label %84

79:                                               ; preds = %2
  %80 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %81 = load i32, i32* @COMP_SEND, align 4
  %82 = load i32, i32* @DBG_TRACE, align 4
  %83 = call i32 @RT_TRACE(%struct.rtl_priv* %80, i32 %81, i32 %82, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %79, %78
  ret i32 1
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92ee_store_tx_power_by_rate(%struct.ieee80211_hw*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
