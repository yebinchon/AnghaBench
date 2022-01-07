; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_phy.c_rtl92cu_phy_set_rf_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_phy.c_rtl92cu_phy_set_rf_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64 }

@COMP_RF = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"regaddr(%#x), bitmask(%#x), data(%#x), rfpath(%#x)\0A\00", align 1
@RF_OP_BY_FW = common dso_local global i64 0, align 8
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92cu_phy_set_rf_reg(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 0
  store %struct.rtl_phy* %18, %struct.rtl_phy** %12, align 8
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %20 = load i32, i32* @COMP_RF, align 4
  %21 = load i32, i32* @DBG_TRACE, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @RT_TRACE(%struct.rtl_priv* %19, i32 %20, i32 %21, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.rtl_phy*, %struct.rtl_phy** %12, align 8
  %28 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RF_OP_BY_FW, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %57

32:                                               ; preds = %5
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @_rtl92c_phy_rf_serial_read(%struct.ieee80211_hw* %37, i32 %38, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @_rtl92c_phy_calculate_bit_shift(i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %9, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %14, align 4
  %49 = shl i32 %47, %48
  %50 = or i32 %46, %49
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %36, %32
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @_rtl92c_phy_rf_serial_write(%struct.ieee80211_hw* %52, i32 %53, i32 %54, i32 %55)
  br label %82

57:                                               ; preds = %5
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %57
  %62 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @_rtl92c_phy_fw_rf_serial_read(%struct.ieee80211_hw* %62, i32 %63, i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @_rtl92c_phy_calculate_bit_shift(i32 %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %9, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %14, align 4
  %74 = shl i32 %72, %73
  %75 = or i32 %71, %74
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %61, %57
  %77 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @_rtl92c_phy_fw_rf_serial_write(%struct.ieee80211_hw* %77, i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %76, %51
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %84 = load i32, i32* @COMP_RF, align 4
  %85 = load i32, i32* @DBG_TRACE, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @RT_TRACE(%struct.rtl_priv* %83, i32 %84, i32 %85, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87, i32 %88, i32 %89)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @_rtl92c_phy_rf_serial_read(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @_rtl92c_phy_calculate_bit_shift(i32) #1

declare dso_local i32 @_rtl92c_phy_rf_serial_write(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @_rtl92c_phy_fw_rf_serial_read(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @_rtl92c_phy_fw_rf_serial_write(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
