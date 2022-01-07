; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_mac80211_hw_scan_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_mac80211_hw_scan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rsi_hw* }
%struct.rsi_hw = type { %struct.rsi_common* }
%struct.rsi_common = type { i32, i64, i32, i32, i32, %struct.cfg80211_scan_request* }
%struct.cfg80211_scan_request = type { i64 }
%struct.ieee80211_vif = type { %struct.ieee80211_bss_conf }
%struct.ieee80211_bss_conf = type { i32 }
%struct.ieee80211_scan_request = type { %struct.cfg80211_scan_request }

@INFO_ZONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"***** Hardware scan start *****\0A\00", align 1
@FSM_MAC_INIT_DONE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@RSI_WOW_ENABLED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RSI_START_BGSCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Background scan started...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_scan_request*)* @rsi_mac80211_hw_scan_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsi_mac80211_hw_scan_start(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_scan_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_scan_request*, align 8
  %8 = alloca %struct.cfg80211_scan_request*, align 8
  %9 = alloca %struct.rsi_hw*, align 8
  %10 = alloca %struct.rsi_common*, align 8
  %11 = alloca %struct.ieee80211_bss_conf*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_scan_request* %2, %struct.ieee80211_scan_request** %7, align 8
  %12 = load %struct.ieee80211_scan_request*, %struct.ieee80211_scan_request** %7, align 8
  %13 = getelementptr inbounds %struct.ieee80211_scan_request, %struct.ieee80211_scan_request* %12, i32 0, i32 0
  store %struct.cfg80211_scan_request* %13, %struct.cfg80211_scan_request** %8, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = load %struct.rsi_hw*, %struct.rsi_hw** %15, align 8
  store %struct.rsi_hw* %16, %struct.rsi_hw** %9, align 8
  %17 = load %struct.rsi_hw*, %struct.rsi_hw** %9, align 8
  %18 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %17, i32 0, i32 0
  %19 = load %struct.rsi_common*, %struct.rsi_common** %18, align 8
  store %struct.rsi_common* %19, %struct.rsi_common** %10, align 8
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %20, i32 0, i32 0
  store %struct.ieee80211_bss_conf* %21, %struct.ieee80211_bss_conf** %11, align 8
  %22 = load i32, i32* @INFO_ZONE, align 4
  %23 = call i32 @rsi_dbg(i32 %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.rsi_common*, %struct.rsi_common** %10, align 8
  %25 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.rsi_common*, %struct.rsi_common** %10, align 8
  %27 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FSM_MAC_INIT_DONE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %89

34:                                               ; preds = %3
  %35 = load %struct.rsi_common*, %struct.rsi_common** %10, align 8
  %36 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @RSI_WOW_ENABLED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %34
  %42 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %8, align 8
  %43 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41, %34
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %89

49:                                               ; preds = %41
  %50 = load %struct.rsi_common*, %struct.rsi_common** %10, align 8
  %51 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %89

57:                                               ; preds = %49
  %58 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %11, align 8
  %59 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  store i32 1, i32* %4, align 4
  br label %89

63:                                               ; preds = %57
  %64 = load %struct.rsi_common*, %struct.rsi_common** %10, align 8
  %65 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %64, i32 0, i32 4
  %66 = call i32 @mutex_lock(i32* %65)
  %67 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %8, align 8
  %68 = load %struct.rsi_common*, %struct.rsi_common** %10, align 8
  %69 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %68, i32 0, i32 5
  store %struct.cfg80211_scan_request* %67, %struct.cfg80211_scan_request** %69, align 8
  %70 = load %struct.rsi_common*, %struct.rsi_common** %10, align 8
  %71 = load i32, i32* @RSI_START_BGSCAN, align 4
  %72 = call i32 @rsi_send_bgscan_params(%struct.rsi_common* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %63
  %75 = load %struct.rsi_common*, %struct.rsi_common** %10, align 8
  %76 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %77 = call i32 @rsi_send_bgscan_probe_req(%struct.rsi_common* %75, %struct.ieee80211_vif* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @INFO_ZONE, align 4
  %81 = call i32 @rsi_dbg(i32 %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %82 = load %struct.rsi_common*, %struct.rsi_common** %10, align 8
  %83 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %82, i32 0, i32 3
  store i32 1, i32* %83, align 4
  br label %84

84:                                               ; preds = %79, %74
  br label %85

85:                                               ; preds = %84, %63
  %86 = load %struct.rsi_common*, %struct.rsi_common** %10, align 8
  %87 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %86, i32 0, i32 4
  %88 = call i32 @mutex_unlock(i32* %87)
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %85, %62, %54, %46, %31
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @rsi_dbg(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rsi_send_bgscan_params(%struct.rsi_common*, i32) #1

declare dso_local i32 @rsi_send_bgscan_probe_req(%struct.rsi_common*, %struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
