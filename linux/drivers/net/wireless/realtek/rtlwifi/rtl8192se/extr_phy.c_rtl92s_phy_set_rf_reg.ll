; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c_rtl92s_phy_set_rf_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c_rtl92s_phy_set_rf_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.rtl_phy }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_phy = type { i32 }

@COMP_RF = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"regaddr(%#x), bitmask(%#x), data(%#x), rfpath(%#x)\0A\00", align 1
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92s_phy_set_rf_reg(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rtl_priv*, align 8
  %12 = alloca %struct.rtl_phy*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  store %struct.rtl_priv* %16, %struct.rtl_priv** %11, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 1
  store %struct.rtl_phy* %18, %struct.rtl_phy** %12, align 8
  %19 = load %struct.rtl_phy*, %struct.rtl_phy** %12, align 8
  %20 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %21, %22
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %5
  br label %76

27:                                               ; preds = %5
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %29 = load i32, i32* @COMP_RF, align 4
  %30 = load i32, i32* @DBG_TRACE, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @RT_TRACE(%struct.rtl_priv* %28, i32 %29, i32 %30, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %37 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %27
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @_rtl92s_phy_rf_serial_read(%struct.ieee80211_hw* %44, i32 %45, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @_rtl92s_phy_calculate_bit_shift(i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %9, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %14, align 4
  %56 = shl i32 %54, %55
  %57 = or i32 %53, %56
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %43, %27
  %59 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @_rtl92s_phy_rf_serial_write(%struct.ieee80211_hw* %59, i32 %60, i32 %61, i32 %62)
  %64 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %65 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock(i32* %66)
  %68 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %69 = load i32, i32* @COMP_RF, align 4
  %70 = load i32, i32* @DBG_TRACE, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @RT_TRACE(%struct.rtl_priv* %68, i32 %69, i32 %70, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %58, %26
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @_rtl92s_phy_rf_serial_read(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @_rtl92s_phy_calculate_bit_shift(i32) #1

declare dso_local i32 @_rtl92s_phy_rf_serial_write(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
