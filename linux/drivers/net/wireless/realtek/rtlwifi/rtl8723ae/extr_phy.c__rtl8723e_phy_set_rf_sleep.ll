; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_phy.c__rtl8723e_phy_set_rf_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_phy.c__rtl8723e_phy_set_rf_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@REG_TXPAUSE = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i32 0, align 4
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4
@REG_APSD_CTRL = common dso_local global i32 0, align 4
@REG_SYS_FUNC_EN = common dso_local global i32 0, align 4
@COMP_POWER = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Switch RF timeout !!!.\0A\00", align 1
@REG_SPS0_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl8723e_phy_set_rf_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8723e_phy_set_rf_sleep(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  store i64 5, i64* %4, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %5, align 8
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %9 = load i32, i32* @REG_TXPAUSE, align 4
  %10 = call i32 @rtl_write_byte(%struct.rtl_priv* %8, i32 %9, i32 255)
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = load i32, i32* @RF90_PATH_A, align 4
  %13 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %14 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %11, i32 %12, i32 0, i32 %13, i32 0)
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %16 = load i32, i32* @REG_APSD_CTRL, align 4
  %17 = call i32 @rtl_write_byte(%struct.rtl_priv* %15, i32 %16, i32 64)
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %19 = load i32, i32* @RF90_PATH_A, align 4
  %20 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %21 = call i64 @rtl_get_rfreg(%struct.ieee80211_hw* %18, i32 %19, i32 0, i32 %20)
  store i64 %21, i64* %3, align 8
  br label %22

22:                                               ; preds = %30, %1
  %23 = load i64, i64* %3, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i64, i64* %4, align 8
  %27 = icmp sgt i64 %26, 0
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i1 [ false, %22 ], [ %27, %25 ]
  br i1 %29, label %30, label %47

30:                                               ; preds = %28
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %32 = load i32, i32* @REG_APSD_CTRL, align 4
  %33 = call i32 @rtl_write_byte(%struct.rtl_priv* %31, i32 %32, i32 0)
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %35 = load i32, i32* @RF90_PATH_A, align 4
  %36 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %37 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %34, i32 %35, i32 0, i32 %36, i32 0)
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %39 = load i32, i32* @REG_APSD_CTRL, align 4
  %40 = call i32 @rtl_write_byte(%struct.rtl_priv* %38, i32 %39, i32 64)
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %42 = load i32, i32* @RF90_PATH_A, align 4
  %43 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %44 = call i64 @rtl_get_rfreg(%struct.ieee80211_hw* %41, i32 %42, i32 0, i32 %43)
  store i64 %44, i64* %3, align 8
  %45 = load i64, i64* %4, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %4, align 8
  br label %22

47:                                               ; preds = %28
  %48 = load i64, i64* %4, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %52 = load i32, i32* @REG_APSD_CTRL, align 4
  %53 = call i32 @rtl_write_byte(%struct.rtl_priv* %51, i32 %52, i32 0)
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %55 = load i32, i32* @REG_SYS_FUNC_EN, align 4
  %56 = call i32 @rtl_write_byte(%struct.rtl_priv* %54, i32 %55, i32 226)
  %57 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %58 = load i32, i32* @REG_SYS_FUNC_EN, align 4
  %59 = call i32 @rtl_write_byte(%struct.rtl_priv* %57, i32 %58, i32 227)
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %61 = load i32, i32* @REG_TXPAUSE, align 4
  %62 = call i32 @rtl_write_byte(%struct.rtl_priv* %60, i32 %61, i32 0)
  %63 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %64 = load i32, i32* @COMP_POWER, align 4
  %65 = load i32, i32* @DBG_TRACE, align 4
  %66 = call i32 @RT_TRACE(%struct.rtl_priv* %63, i32 %64, i32 %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %74

67:                                               ; preds = %47
  %68 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %69 = load i32, i32* @REG_SYS_FUNC_EN, align 4
  %70 = call i32 @rtl_write_byte(%struct.rtl_priv* %68, i32 %69, i32 226)
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %72 = load i32, i32* @REG_SPS0_CTRL, align 4
  %73 = call i32 @rtl_write_byte(%struct.rtl_priv* %71, i32 %72, i32 34)
  br label %74

74:                                               ; preds = %67, %50
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_set_rfreg(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i64 @rtl_get_rfreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
