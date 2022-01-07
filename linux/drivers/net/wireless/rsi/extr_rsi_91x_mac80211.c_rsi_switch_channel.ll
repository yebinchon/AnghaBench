; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_switch_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_switch_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_hw = type { %struct.rsi_common* }
%struct.rsi_common = type { i64 }
%struct.ieee80211_vif = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }

@INFO_ZONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Switched to channel - %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsi_hw*, %struct.ieee80211_vif*)* @rsi_switch_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsi_switch_channel(%struct.rsi_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.rsi_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.rsi_common*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  store %struct.rsi_hw* %0, %struct.rsi_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %7 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %8 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %7, i32 0, i32 0
  %9 = load %struct.rsi_common*, %struct.rsi_common** %8, align 8
  store %struct.rsi_common* %9, %struct.rsi_common** %5, align 8
  %10 = load %struct.rsi_common*, %struct.rsi_common** %5, align 8
  %11 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %40

15:                                               ; preds = %2
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %17 = icmp ne %struct.ieee80211_vif* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %40

19:                                               ; preds = %15
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %23, align 8
  store %struct.ieee80211_channel* %24, %struct.ieee80211_channel** %6, align 8
  %25 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %26 = icmp ne %struct.ieee80211_channel* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  br label %40

28:                                               ; preds = %19
  %29 = load %struct.rsi_common*, %struct.rsi_common** %5, align 8
  %30 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %31 = call i32 @rsi_band_check(%struct.rsi_common* %29, %struct.ieee80211_channel* %30)
  %32 = load %struct.rsi_common*, %struct.rsi_common** %5, align 8
  %33 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %34 = call i32 @rsi_set_channel(%struct.rsi_common* %32, %struct.ieee80211_channel* %33)
  %35 = load i32, i32* @INFO_ZONE, align 4
  %36 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %37 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @rsi_dbg(i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %28, %27, %18, %14
  ret void
}

declare dso_local i32 @rsi_band_check(%struct.rsi_common*, %struct.ieee80211_channel*) #1

declare dso_local i32 @rsi_set_channel(%struct.rsi_common*, %struct.ieee80211_channel*) #1

declare dso_local i32 @rsi_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
