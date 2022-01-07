; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_mac80211_cancel_roc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_mac80211_cancel_roc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rsi_hw* }
%struct.rsi_hw = type { %struct.rsi_common* }
%struct.rsi_common = type { i32, i32 }
%struct.ieee80211_vif = type { i32 }

@INFO_ZONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Cancel remain on channel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @rsi_mac80211_cancel_roc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsi_mac80211_cancel_roc(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.rsi_hw*, align 8
  %7 = alloca %struct.rsi_common*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.rsi_hw*, %struct.rsi_hw** %9, align 8
  store %struct.rsi_hw* %10, %struct.rsi_hw** %6, align 8
  %11 = load %struct.rsi_hw*, %struct.rsi_hw** %6, align 8
  %12 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %11, i32 0, i32 0
  %13 = load %struct.rsi_common*, %struct.rsi_common** %12, align 8
  store %struct.rsi_common* %13, %struct.rsi_common** %7, align 8
  %14 = load i32, i32* @INFO_ZONE, align 4
  %15 = call i32 @rsi_dbg(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.rsi_common*, %struct.rsi_common** %7, align 8
  %17 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.rsi_common*, %struct.rsi_common** %7, align 8
  %20 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %19, i32 0, i32 1
  %21 = call i32 @timer_pending(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load %struct.rsi_common*, %struct.rsi_common** %7, align 8
  %25 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  store i32 0, i32* %3, align 4
  br label %36

27:                                               ; preds = %2
  %28 = load %struct.rsi_common*, %struct.rsi_common** %7, align 8
  %29 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %28, i32 0, i32 1
  %30 = call i32 @del_timer(i32* %29)
  %31 = load %struct.rsi_common*, %struct.rsi_common** %7, align 8
  %32 = call i32 @rsi_resume_conn_channel(%struct.rsi_common* %31)
  %33 = load %struct.rsi_common*, %struct.rsi_common** %7, align 8
  %34 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %27, %23
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @rsi_dbg(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @rsi_resume_conn_channel(%struct.rsi_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
