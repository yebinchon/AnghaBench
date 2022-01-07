; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_resume_conn_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_resume_conn_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_common = type { %struct.rsi_hw* }
%struct.rsi_hw = type { %struct.ieee80211_vif** }
%struct.ieee80211_vif = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@RSI_MAX_VIFS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_GO = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsi_common*)* @rsi_resume_conn_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsi_resume_conn_channel(%struct.rsi_common* %0) #0 {
  %2 = alloca %struct.rsi_common*, align 8
  %3 = alloca %struct.rsi_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca i32, align 4
  store %struct.rsi_common* %0, %struct.rsi_common** %2, align 8
  %6 = load %struct.rsi_common*, %struct.rsi_common** %2, align 8
  %7 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %6, i32 0, i32 0
  %8 = load %struct.rsi_hw*, %struct.rsi_hw** %7, align 8
  store %struct.rsi_hw* %8, %struct.rsi_hw** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %63, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @RSI_MAX_VIFS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %66

13:                                               ; preds = %9
  %14 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %15 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %14, i32 0, i32 0
  %16 = load %struct.ieee80211_vif**, %struct.ieee80211_vif*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ieee80211_vif*, %struct.ieee80211_vif** %16, i64 %18
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %19, align 8
  store %struct.ieee80211_vif* %20, %struct.ieee80211_vif** %4, align 8
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %22 = icmp ne %struct.ieee80211_vif* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  br label %63

24:                                               ; preds = %13
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %26 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %32 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NL80211_IFTYPE_P2P_GO, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30, %24
  %37 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %38 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %39 = call i32 @rsi_switch_channel(%struct.rsi_hw* %37, %struct.ieee80211_vif* %38)
  br label %66

40:                                               ; preds = %30
  %41 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %42 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %48 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NL80211_IFTYPE_P2P_CLIENT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %46, %40
  %53 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %54 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.rsi_hw*, %struct.rsi_hw** %3, align 8
  %60 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %61 = call i32 @rsi_switch_channel(%struct.rsi_hw* %59, %struct.ieee80211_vif* %60)
  br label %66

62:                                               ; preds = %52, %46
  br label %63

63:                                               ; preds = %62, %23
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %9

66:                                               ; preds = %58, %36, %9
  ret void
}

declare dso_local i32 @rsi_switch_channel(%struct.rsi_hw*, %struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
