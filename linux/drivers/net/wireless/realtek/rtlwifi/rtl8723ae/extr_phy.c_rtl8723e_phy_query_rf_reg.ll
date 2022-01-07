; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_phy.c_rtl8723e_phy_query_rf_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_phy.c_rtl8723e_phy_query_rf_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.rtl_phy }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_phy = type { i64 }

@COMP_RF = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"regaddr(%#x), rfpath(%#x), bitmask(%#x)\0A\00", align 1
@RF_OP_BY_FW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"regaddr(%#x), rfpath(%#x), bitmask(%#x), original_value(%#x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8723e_phy_query_rf_reg(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rtl_phy*, align 8
  %14 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  store %struct.rtl_priv* %16, %struct.rtl_priv** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 1
  store %struct.rtl_phy* %18, %struct.rtl_phy** %13, align 8
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %20 = load i32, i32* @COMP_RF, align 4
  %21 = load i32, i32* @DBG_TRACE, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32, ...) @RT_TRACE(%struct.rtl_priv* %19, i32 %20, i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24)
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %27 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %14, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.rtl_phy*, %struct.rtl_phy** %13, align 8
  %32 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RF_OP_BY_FW, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %4
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @rtl8723_phy_rf_serial_read(%struct.ieee80211_hw* %37, i32 %38, i32 %39)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %36, %4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @rtl8723_phy_calculate_bit_shift(i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* %12, align 4
  %48 = ashr i32 %46, %47
  store i32 %48, i32* %11, align 4
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %50 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %14, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %55 = load i32, i32* @COMP_RF, align 4
  %56 = load i32, i32* @DBG_TRACE, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32, ...) @RT_TRACE(%struct.rtl_priv* %54, i32 %55, i32 %56, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %11, align 4
  ret i32 %62
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rtl8723_phy_rf_serial_read(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl8723_phy_calculate_bit_shift(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
