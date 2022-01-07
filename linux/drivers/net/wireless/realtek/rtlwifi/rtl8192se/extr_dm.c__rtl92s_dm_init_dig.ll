; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_dm.c__rtl92s_dm_init_dig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_dm.c__rtl92s_dm_init_dig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.dig_t }
%struct.TYPE_2__ = type { i64 }
%struct.dig_t = type { i32, i32, i32, i32, i8*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i32 }

@DM_TYPE_BYDRIVER = common dso_local global i64 0, align 8
@DIG_ALGO_BY_TOW_PORT = common dso_local global i32 0, align 4
@DIG_ALGO_BEFORE_CONNECT_BY_RSSI_AND_ALARM = common dso_local global i32 0, align 4
@DIG_TWO_PORT_ALGO_RSSI = common dso_local global i32 0, align 4
@DIG_EXT_PORT_STAGE_MAX = common dso_local global i32 0, align 4
@DM_DBG_OFF = common dso_local global i32 0, align 4
@DM_STA_DIG_MAX = common dso_local global i8* null, align 8
@DIG_STA_DISCONNECT = common dso_local global i8* null, align 8
@DIG_AP_DISCONNECT = common dso_local global i8* null, align 8
@DM_DIG_THRESH_LOW = common dso_local global i32 0, align 4
@DM_DIG_THRESH_HIGH = common dso_local global i32 0, align 4
@DM_FALSEALARM_THRESH_LOW = common dso_local global i32 0, align 4
@DM_FALSEALARM_THRESH_HIGH = common dso_local global i32 0, align 4
@DM_DIG_HIGH_PWR_THRESH_LOW = common dso_local global i32 0, align 4
@DM_DIG_HIGH_PWR_THRESH_HIGH = common dso_local global i32 0, align 4
@DM_DIG_BACKOFF_MAX = common dso_local global i8* null, align 8
@DM_DIG_MAX = common dso_local global i32 0, align 4
@DM_DIG_MIN = common dso_local global i32 0, align 4
@DM_DIG_BACKOFF_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92s_dm_init_dig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92s_dm_init_dig(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.dig_t*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %5)
  store %struct.rtl_priv* %6, %struct.rtl_priv** %3, align 8
  %7 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %8 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %7, i32 0, i32 1
  store %struct.dig_t* %8, %struct.dig_t** %4, align 8
  %9 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %10 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %12 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %11, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %14 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DM_TYPE_BYDRIVER, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %21 = call i32 @hal_get_firmwareversion(%struct.rtl_priv* %20)
  %22 = icmp sge i32 %21, 60
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @DIG_ALGO_BY_TOW_PORT, align 4
  %25 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %26 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %25, i32 0, i32 24
  store i32 %24, i32* %26, align 4
  br label %31

27:                                               ; preds = %19, %1
  %28 = load i32, i32* @DIG_ALGO_BEFORE_CONNECT_BY_RSSI_AND_ALARM, align 4
  %29 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %30 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %29, i32 0, i32 24
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = load i32, i32* @DIG_TWO_PORT_ALGO_RSSI, align 4
  %33 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %34 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %33, i32 0, i32 23
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @DIG_EXT_PORT_STAGE_MAX, align 4
  %36 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %37 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %36, i32 0, i32 22
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @DM_DBG_OFF, align 4
  %39 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %40 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %39, i32 0, i32 21
  store i32 %38, i32* %40, align 8
  %41 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %42 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %41, i32 0, i32 20
  store i64 0, i64* %42, align 8
  %43 = load i8*, i8** @DM_STA_DIG_MAX, align 8
  %44 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %45 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %44, i32 0, i32 19
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @DM_STA_DIG_MAX, align 8
  %47 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %48 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %47, i32 0, i32 18
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** @DIG_STA_DISCONNECT, align 8
  %50 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %51 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %50, i32 0, i32 17
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @DIG_STA_DISCONNECT, align 8
  %53 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %54 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %53, i32 0, i32 16
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** @DIG_AP_DISCONNECT, align 8
  %56 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %57 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %56, i32 0, i32 15
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** @DIG_AP_DISCONNECT, align 8
  %59 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %60 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %59, i32 0, i32 14
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* @DM_DIG_THRESH_LOW, align 4
  %62 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %63 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %62, i32 0, i32 13
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @DM_DIG_THRESH_HIGH, align 4
  %65 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %66 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %65, i32 0, i32 12
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @DM_FALSEALARM_THRESH_LOW, align 4
  %68 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %69 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %68, i32 0, i32 11
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @DM_FALSEALARM_THRESH_HIGH, align 4
  %71 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %72 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %71, i32 0, i32 10
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @DM_DIG_HIGH_PWR_THRESH_LOW, align 4
  %74 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %75 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %74, i32 0, i32 9
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @DM_DIG_HIGH_PWR_THRESH_HIGH, align 4
  %77 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %78 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %77, i32 0, i32 8
  store i32 %76, i32* %78, align 8
  %79 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %80 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %79, i32 0, i32 2
  store i32 50, i32* %80, align 8
  %81 = load i8*, i8** @DM_DIG_BACKOFF_MAX, align 8
  %82 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %83 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %82, i32 0, i32 7
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* @DM_DIG_MAX, align 4
  %85 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %86 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @DM_DIG_MIN, align 4
  %88 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %89 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 8
  %90 = load i8*, i8** @DM_DIG_BACKOFF_MAX, align 8
  %91 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %92 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %91, i32 0, i32 4
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* @DM_DIG_BACKOFF_MIN, align 4
  %94 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %95 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @hal_get_firmwareversion(%struct.rtl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
