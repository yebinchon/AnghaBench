; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mgmt.c_rsi_inform_bss_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mgmt.c_rsi_inform_bss_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_common = type { i32, i32, i32 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_vif = type { i32 }

@RSI_OPMODE_STA = common dso_local global i32 0, align 4
@STA_CONNECTED = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_PRIVACY = common dso_local global i32 0, align 4
@RSI_WOW_ENABLED = common dso_local global i32 0, align 4
@STA_DISCONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rsi_inform_bss_status(%struct.rsi_common* %0, i32 %1, i64 %2, i64* %3, i64 %4, i32 %5, %struct.ieee80211_sta* %6, i32 %7, i32 %8, %struct.ieee80211_vif* %9) #0 {
  %11 = alloca %struct.rsi_common*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ieee80211_sta*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ieee80211_vif*, align 8
  store %struct.rsi_common* %0, %struct.rsi_common** %11, align 8
  store i32 %1, i32* %12, align 4
  store i64 %2, i64* %13, align 8
  store i64* %3, i64** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store %struct.ieee80211_sta* %6, %struct.ieee80211_sta** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store %struct.ieee80211_vif* %9, %struct.ieee80211_vif** %20, align 8
  %21 = load i64, i64* %13, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %67

23:                                               ; preds = %10
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @RSI_OPMODE_STA, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.rsi_common*, %struct.rsi_common** %11, align 8
  %29 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %23
  %31 = load %struct.rsi_common*, %struct.rsi_common** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @STA_CONNECTED, align 4
  %34 = load i64*, i64** %14, align 8
  %35 = load i64, i64* %15, align 8
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %18, align 4
  %38 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %20, align 8
  %39 = call i32 @rsi_hal_send_sta_notify_frame(%struct.rsi_common* %31, i32 %32, i32 %33, i64* %34, i64 %35, i32 %36, i32 %37, %struct.ieee80211_vif* %38)
  %40 = load %struct.rsi_common*, %struct.rsi_common** %11, align 8
  %41 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 65535
  br i1 %43, label %44, label %50

44:                                               ; preds = %30
  %45 = load %struct.rsi_common*, %struct.rsi_common** %11, align 8
  %46 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %17, align 8
  %47 = load i32, i32* %18, align 4
  %48 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %20, align 8
  %49 = call i32 @rsi_send_auto_rate_request(%struct.rsi_common* %45, %struct.ieee80211_sta* %46, i32 %47, %struct.ieee80211_vif* %48)
  br label %50

50:                                               ; preds = %44, %30
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @RSI_OPMODE_STA, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load i32, i32* %19, align 4
  %56 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %54
  %60 = load %struct.rsi_common*, %struct.rsi_common** %11, align 8
  %61 = call i32 @rsi_send_block_unblock_frame(%struct.rsi_common* %60, i32 0)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load %struct.rsi_common*, %struct.rsi_common** %11, align 8
  %65 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %59, %54, %50
  br label %99

67:                                               ; preds = %10
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @RSI_OPMODE_STA, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %struct.rsi_common*, %struct.rsi_common** %11, align 8
  %73 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %67
  %75 = load %struct.rsi_common*, %struct.rsi_common** %11, align 8
  %76 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @RSI_WOW_ENABLED, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %74
  %82 = load %struct.rsi_common*, %struct.rsi_common** %11, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @STA_DISCONNECTED, align 4
  %85 = load i64*, i64** %14, align 8
  %86 = load i64, i64* %15, align 8
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %18, align 4
  %89 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %20, align 8
  %90 = call i32 @rsi_hal_send_sta_notify_frame(%struct.rsi_common* %82, i32 %83, i32 %84, i64* %85, i64 %86, i32 %87, i32 %88, %struct.ieee80211_vif* %89)
  br label %91

91:                                               ; preds = %81, %74
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @RSI_OPMODE_STA, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load %struct.rsi_common*, %struct.rsi_common** %11, align 8
  %97 = call i32 @rsi_send_block_unblock_frame(%struct.rsi_common* %96, i32 1)
  br label %98

98:                                               ; preds = %95, %91
  br label %99

99:                                               ; preds = %98, %66
  ret void
}

declare dso_local i32 @rsi_hal_send_sta_notify_frame(%struct.rsi_common*, i32, i32, i64*, i64, i32, i32, %struct.ieee80211_vif*) #1

declare dso_local i32 @rsi_send_auto_rate_request(%struct.rsi_common*, %struct.ieee80211_sta*, i32, %struct.ieee80211_vif*) #1

declare dso_local i32 @rsi_send_block_unblock_frame(%struct.rsi_common*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
