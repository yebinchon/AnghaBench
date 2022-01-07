; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_phy.c_rtl92cu_phy_query_rf_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_phy.c_rtl92cu_phy_query_rf_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64 }

@COMP_RF = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"regaddr(%#x), rfpath(%#x), bitmask(%#x)\0A\00", align 1
@RF_OP_BY_FW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"regaddr(%#x), rfpath(%#x), bitmask(%#x), original_value(%#x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92cu_phy_query_rf_reg(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rtl_phy*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  store %struct.rtl_priv* %15, %struct.rtl_priv** %9, align 8
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %17 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %16, i32 0, i32 0
  store %struct.rtl_phy* %17, %struct.rtl_phy** %13, align 8
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %19 = load i32, i32* @COMP_RF, align 4
  %20 = load i32, i32* @DBG_TRACE, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32, ...) @RT_TRACE(%struct.rtl_priv* %18, i32 %19, i32 %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %23)
  %25 = load %struct.rtl_phy*, %struct.rtl_phy** %13, align 8
  %26 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RF_OP_BY_FW, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @_rtl92c_phy_rf_serial_read(%struct.ieee80211_hw* %31, i32 %32, i32 %33)
  store i32 %34, i32* %10, align 4
  br label %40

35:                                               ; preds = %4
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @_rtl92c_phy_fw_rf_serial_read(%struct.ieee80211_hw* %36, i32 %37, i32 %38)
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @_rtl92c_phy_calculate_bit_shift(i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %12, align 4
  %47 = ashr i32 %45, %46
  store i32 %47, i32* %11, align 4
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %49 = load i32, i32* @COMP_RF, align 4
  %50 = load i32, i32* @DBG_TRACE, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32, ...) @RT_TRACE(%struct.rtl_priv* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %11, align 4
  ret i32 %56
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @_rtl92c_phy_rf_serial_read(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @_rtl92c_phy_fw_rf_serial_read(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @_rtl92c_phy_calculate_bit_shift(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
