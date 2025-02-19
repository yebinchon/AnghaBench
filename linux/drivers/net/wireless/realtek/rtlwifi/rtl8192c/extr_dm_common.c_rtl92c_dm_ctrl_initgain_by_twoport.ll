; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_dm_ctrl_initgain_by_twoport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_dm_ctrl_initgain_by_twoport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.dig_t }
%struct.dig_t = type { i32, i32, i32 }
%struct.rtl_mac = type { i64, i64 }

@MAC80211_LINKED = common dso_local global i64 0, align 8
@DIG_STA_CONNECT = common dso_local global i32 0, align 4
@DIG_STA_DISCONNECT = common dso_local global i32 0, align 4
@DIG_MULTISTA_DISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl92c_dm_ctrl_initgain_by_twoport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92c_dm_ctrl_initgain_by_twoport(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.dig_t*, align 8
  %5 = alloca %struct.rtl_mac*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %9 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %8, i32 0, i32 0
  store %struct.dig_t* %9, %struct.dig_t** %4, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %11)
  store %struct.rtl_mac* %12, %struct.rtl_mac** %5, align 8
  %13 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %14 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %47

18:                                               ; preds = %1
  %19 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %20 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MAC80211_LINKED, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @DIG_STA_CONNECT, align 4
  %26 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %27 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %32

28:                                               ; preds = %18
  %29 = load i32, i32* @DIG_STA_DISCONNECT, align 4
  %30 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %31 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* @DIG_MULTISTA_DISCONNECT, align 4
  %34 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %35 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %37 = call i32 @rtl92c_dm_initial_gain_sta(%struct.ieee80211_hw* %36)
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %39 = call i32 @rtl92c_dm_initial_gain_multi_sta(%struct.ieee80211_hw* %38)
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %41 = call i32 @rtl92c_dm_cck_packet_detection_thresh(%struct.ieee80211_hw* %40)
  %42 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %43 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %46 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %32, %17
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @rtl92c_dm_initial_gain_sta(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_dm_initial_gain_multi_sta(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_dm_cck_packet_detection_thresh(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
