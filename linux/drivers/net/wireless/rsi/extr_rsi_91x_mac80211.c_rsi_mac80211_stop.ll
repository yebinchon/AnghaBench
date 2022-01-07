; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_mac80211_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_mac80211_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.rsi_hw* }
%struct.rsi_hw = type { %struct.rsi_common* }
%struct.rsi_common = type { i32, i32 }

@ERR_ZONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"===> Interface DOWN <===\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rsi_mac80211_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsi_mac80211_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rsi_hw*, align 8
  %4 = alloca %struct.rsi_common*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %5, i32 0, i32 1
  %7 = load %struct.rsi_hw*, %struct.rsi_hw** %6, align 8
  store %struct.rsi_hw* %7, %struct.rsi_hw** %3, align 8
  %8 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %9 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %8, i32 0, i32 0
  %10 = load %struct.rsi_common*, %struct.rsi_common** %9, align 8
  store %struct.rsi_common* %10, %struct.rsi_common** %4, align 8
  %11 = load i32, i32* @ERR_ZONE, align 4
  %12 = call i32 @rsi_dbg(i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %14 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %17 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @wiphy_rfkill_stop_polling(i32 %20)
  %22 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %23 = call i32 @rsi_send_rx_filter_frame(%struct.rsi_common* %22, i32 65535)
  %24 = load %struct.rsi_common*, %struct.rsi_common** %4, align 8
  %25 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %24, i32 0, i32 1
  %26 = call i32 @mutex_unlock(i32* %25)
  ret void
}

declare dso_local i32 @rsi_dbg(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wiphy_rfkill_stop_polling(i32) #1

declare dso_local i32 @rsi_send_rx_filter_frame(%struct.rsi_common*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
