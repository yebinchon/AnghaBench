; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_mac80211_cancel_hw_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_mac80211_cancel_hw_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rsi_hw* }
%struct.rsi_hw = type { i32, %struct.rsi_common* }
%struct.rsi_common = type { i32, i32, i32* }
%struct.ieee80211_vif = type { i32 }
%struct.cfg80211_scan_info = type { i32 }

@INFO_ZONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"***** Hardware scan stop *****\0A\00", align 1
@RSI_STOP_BGSCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Back ground scan cancelled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @rsi_mac80211_cancel_hw_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsi_mac80211_cancel_hw_scan(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.rsi_hw*, align 8
  %6 = alloca %struct.rsi_common*, align 8
  %7 = alloca %struct.cfg80211_scan_info, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.rsi_hw*, %struct.rsi_hw** %9, align 8
  store %struct.rsi_hw* %10, %struct.rsi_hw** %5, align 8
  %11 = load %struct.rsi_hw*, %struct.rsi_hw** %5, align 8
  %12 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %11, i32 0, i32 1
  %13 = load %struct.rsi_common*, %struct.rsi_common** %12, align 8
  store %struct.rsi_common* %13, %struct.rsi_common** %6, align 8
  %14 = load i32, i32* @INFO_ZONE, align 4
  %15 = call i32 @rsi_dbg(i32 %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.rsi_common*, %struct.rsi_common** %6, align 8
  %17 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.rsi_common*, %struct.rsi_common** %6, align 8
  %20 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %2
  %24 = load %struct.rsi_common*, %struct.rsi_common** %6, align 8
  %25 = load i32, i32* @RSI_STOP_BGSCAN, align 4
  %26 = call i32 @rsi_send_bgscan_params(%struct.rsi_common* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load %struct.rsi_common*, %struct.rsi_common** %6, align 8
  %30 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  br label %31

31:                                               ; preds = %28, %23
  %32 = getelementptr inbounds %struct.cfg80211_scan_info, %struct.cfg80211_scan_info* %7, i32 0, i32 0
  store i32 0, i32* %32, align 4
  %33 = load %struct.rsi_hw*, %struct.rsi_hw** %5, align 8
  %34 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ieee80211_scan_completed(i32 %35, %struct.cfg80211_scan_info* %7)
  %37 = load i32, i32* @INFO_ZONE, align 4
  %38 = call i32 @rsi_dbg(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %31, %2
  %40 = load %struct.rsi_common*, %struct.rsi_common** %6, align 8
  %41 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  %42 = load %struct.rsi_common*, %struct.rsi_common** %6, align 8
  %43 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %42, i32 0, i32 1
  %44 = call i32 @mutex_unlock(i32* %43)
  ret void
}

declare dso_local i32 @rsi_dbg(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rsi_send_bgscan_params(%struct.rsi_common*, i32) #1

declare dso_local i32 @ieee80211_scan_completed(i32, %struct.cfg80211_scan_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
