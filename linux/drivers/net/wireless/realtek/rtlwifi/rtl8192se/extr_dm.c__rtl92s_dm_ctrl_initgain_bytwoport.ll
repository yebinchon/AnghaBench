; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_dm.c__rtl92s_dm_ctrl_initgain_bytwoport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_dm.c__rtl92s_dm_ctrl_initgain_bytwoport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.dig_t }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.dig_t = type { i64, i64, i64, i32 }

@MAC80211_LINKED = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@DIG_STA_CONNECT = common dso_local global i64 0, align 8
@DIG_STA_DISCONNECT = common dso_local global i64 0, align 8
@DIG_TWO_PORT_ALGO_FALSE_ALARM = common dso_local global i64 0, align 8
@DIG_TWO_PORT_ALGO_RSSI = common dso_local global i64 0, align 8
@FW_CMD_DIG_MODE_SS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92s_dm_ctrl_initgain_bytwoport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92s_dm_ctrl_initgain_bytwoport(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.dig_t*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %5)
  store %struct.rtl_priv* %6, %struct.rtl_priv** %3, align 8
  %7 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %8 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %7, i32 0, i32 2
  store %struct.dig_t* %8, %struct.dig_t** %4, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %10 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %73

15:                                               ; preds = %1
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %17 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MAC80211_LINKED, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %24 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22, %15
  %30 = load i64, i64* @DIG_STA_CONNECT, align 8
  %31 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %32 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %37

33:                                               ; preds = %22
  %34 = load i64, i64* @DIG_STA_DISCONNECT, align 8
  %35 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %36 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %39 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %43 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %45 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DIG_STA_DISCONNECT, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %37
  %50 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %51 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DIG_TWO_PORT_ALGO_FALSE_ALARM, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load i64, i64* @DIG_TWO_PORT_ALGO_RSSI, align 8
  %57 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %58 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %60 = load i32, i32* @FW_CMD_DIG_MODE_SS, align 4
  %61 = call i32 @rtl92s_phy_set_fw_cmd(%struct.ieee80211_hw* %59, i32 %60)
  br label %62

62:                                               ; preds = %55, %49
  br label %63

63:                                               ; preds = %62, %37
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %65 = call i32 @_rtl92s_dm_false_alarm_counter_statistics(%struct.ieee80211_hw* %64)
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %67 = call i32 @_rtl92s_dm_initial_gain_sta_beforeconnect(%struct.ieee80211_hw* %66)
  %68 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %69 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %72 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %63, %14
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92s_phy_set_fw_cmd(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @_rtl92s_dm_false_alarm_counter_statistics(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92s_dm_initial_gain_sta_beforeconnect(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
