; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_phy.c_rtl92ce_phy_set_rf_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_phy.c_rtl92ce_phy_set_rf_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.rtl_phy }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_phy = type { i64 }

@COMP_RF = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"regaddr(%#x), bitmask(%#x), data(%#x), rfpath(%#x)\0A\00", align 1
@RF_OP_BY_FW = common dso_local global i64 0, align 8
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92ce_phy_set_rf_reg(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %20 = load i32, i32* @COMP_RF, align 4
  %21 = load i32, i32* @DBG_TRACE, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @RT_TRACE(%struct.rtl_priv* %19, i32 %20, i32 %21, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %28 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.rtl_phy*, %struct.rtl_phy** %12, align 8
  %32 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RF_OP_BY_FW, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %5
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @_rtl92c_phy_rf_serial_read(%struct.ieee80211_hw* %41, i32 %42, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @_rtl92c_phy_calculate_bit_shift(i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %9, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %14, align 4
  %53 = shl i32 %51, %52
  %54 = or i32 %50, %53
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %40, %36
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @_rtl92c_phy_rf_serial_write(%struct.ieee80211_hw* %56, i32 %57, i32 %58, i32 %59)
  br label %86

61:                                               ; preds = %5
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @_rtl92c_phy_fw_rf_serial_read(%struct.ieee80211_hw* %66, i32 %67, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @_rtl92c_phy_calculate_bit_shift(i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %9, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %14, align 4
  %78 = shl i32 %76, %77
  %79 = or i32 %75, %78
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %65, %61
  %81 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @_rtl92c_phy_fw_rf_serial_write(%struct.ieee80211_hw* %81, i32 %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %80, %55
  %87 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %88 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i32 @spin_unlock(i32* %89)
  %91 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %92 = load i32, i32* @COMP_RF, align 4
  %93 = load i32, i32* @DBG_TRACE, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @RT_TRACE(%struct.rtl_priv* %91, i32 %92, i32 %93, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %95, i32 %96, i32 %97)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @_rtl92c_phy_rf_serial_read(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @_rtl92c_phy_calculate_bit_shift(i32) #1

declare dso_local i32 @_rtl92c_phy_rf_serial_write(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @_rtl92c_phy_fw_rf_serial_read(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @_rtl92c_phy_fw_rf_serial_write(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
