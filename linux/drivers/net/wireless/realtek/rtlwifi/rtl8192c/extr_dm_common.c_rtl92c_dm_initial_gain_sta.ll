; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_dm_initial_gain_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_dm_initial_gain_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.dig_t }
%struct.dig_t = type { i64, i64, i32, i32, i64, i32, i32 }

@COMP_DIG = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"presta_cstate = %x, cursta_cstate = %x\0A\00", align 1
@DIG_STA_BEFORE_CONNECT = common dso_local global i64 0, align 8
@DIG_STA_CONNECT = common dso_local global i64 0, align 8
@DIG_STA_DISCONNECT = common dso_local global i64 0, align 8
@DIG_EXT_PORT_STAGE_MAX = common dso_local global i32 0, align 4
@DM_DIG_BACKOFF_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl92c_dm_initial_gain_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92c_dm_initial_gain_sta(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.dig_t*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %5)
  store %struct.rtl_priv* %6, %struct.rtl_priv** %3, align 8
  %7 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %8 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %7, i32 0, i32 0
  store %struct.dig_t* %8, %struct.dig_t** %4, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %10 = load i32, i32* @COMP_DIG, align 4
  %11 = load i32, i32* @DBG_TRACE, align 4
  %12 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %13 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %16 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @RT_TRACE(%struct.rtl_priv* %9, i32 %10, i32 %11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %14, i64 %17)
  %19 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %20 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %23 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %1
  %27 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %28 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DIG_STA_BEFORE_CONNECT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %34 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DIG_STA_CONNECT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %32, %26, %1
  %39 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %40 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DIG_STA_DISCONNECT, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %46 = call i32 @rtl92c_dm_initial_gain_min_pwdb(%struct.ieee80211_hw* %45)
  %47 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %48 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %50 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 100
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %55 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %54, i32 0, i32 2
  store i32 100, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %44
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %58 = call i32 @rtl92c_dm_ctrl_initgain_by_rssi(%struct.ieee80211_hw* %57)
  br label %59

59:                                               ; preds = %56, %38
  br label %75

60:                                               ; preds = %32
  %61 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %62 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %61, i32 0, i32 2
  store i32 0, i32* %62, align 8
  %63 = load i32, i32* @DIG_EXT_PORT_STAGE_MAX, align 4
  %64 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %65 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @DM_DIG_BACKOFF_DEFAULT, align 4
  %67 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %68 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 8
  %69 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %70 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %69, i32 0, i32 3
  store i32 32, i32* %70, align 4
  %71 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %72 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %71, i32 0, i32 4
  store i64 0, i64* %72, align 8
  %73 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %74 = call i32 @rtl92c_dm_write_dig(%struct.ieee80211_hw* %73)
  br label %75

75:                                               ; preds = %60, %59
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i64, i64) #1

declare dso_local i32 @rtl92c_dm_initial_gain_min_pwdb(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_dm_ctrl_initgain_by_rssi(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_dm_write_dig(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
