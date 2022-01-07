; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_update_init_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_update_init_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_dm = type { i64 }
%struct.rtl_hal = type { i64 }

@COMP_POWER_TRACKING = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Get C2H Command! Rate=0x%x\0A\00", align 1
@HARDWARE_TYPE_RTL8821AE = common dso_local global i64 0, align 8
@MIX_MODE = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i64 0, align 8
@MAX_PATH_NUM_8812A = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8821ae_dm_update_init_rate(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_dm*, align 8
  %7 = alloca %struct.rtl_hal*, align 8
  %8 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %5, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_dm* @rtl_dm(%struct.rtl_priv* %12)
  store %struct.rtl_dm* %13, %struct.rtl_dm** %6, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  %16 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %15)
  store %struct.rtl_hal* %16, %struct.rtl_hal** %7, align 8
  store i64 0, i64* %8, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %18 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %19 = load i32, i32* @DBG_LOUD, align 4
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @RT_TRACE(%struct.rtl_priv* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.rtl_dm*, %struct.rtl_dm** %6, align 8
  %24 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %26 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @HARDWARE_TYPE_RTL8821AE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %32 = load i32, i32* @MIX_MODE, align 4
  %33 = load i64, i64* @RF90_PATH_A, align 8
  %34 = call i32 @rtl8821ae_dm_txpwr_track_set_pwr(%struct.ieee80211_hw* %31, i32 %32, i64 %33, i32 0)
  br label %50

35:                                               ; preds = %2
  %36 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %36, i64* %8, align 8
  br label %37

37:                                               ; preds = %46, %35
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @MAX_PATH_NUM_8812A, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %43 = load i32, i32* @MIX_MODE, align 4
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @rtl8812ae_dm_txpwr_track_set_pwr(%struct.ieee80211_hw* %42, i32 %43, i64 %44, i32 0)
  br label %46

46:                                               ; preds = %41
  %47 = load i64, i64* %8, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %8, align 8
  br label %37

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %30
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_dm* @rtl_dm(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i64) #1

declare dso_local i32 @rtl8821ae_dm_txpwr_track_set_pwr(%struct.ieee80211_hw*, i32, i64, i32) #1

declare dso_local i32 @rtl8812ae_dm_txpwr_track_set_pwr(%struct.ieee80211_hw*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
