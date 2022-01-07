; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_perform_cqm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_perform_cqm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_common = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }

@NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW = common dso_local global i32 0, align 4
@NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH = common dso_local global i32 0, align 4
@INFO_ZONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"CQM: Notifying event: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsi_common*, i32*, i32, %struct.ieee80211_vif*)* @rsi_perform_cqm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsi_perform_cqm(%struct.rsi_common* %0, i32* %1, i32 %2, %struct.ieee80211_vif* %3) #0 {
  %5 = alloca %struct.rsi_common*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rsi_common* %0, %struct.rsi_common** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ieee80211_vif* %3, %struct.ieee80211_vif** %8, align 8
  %13 = load %struct.rsi_common*, %struct.rsi_common** %5, align 8
  %14 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.rsi_common*, %struct.rsi_common** %5, align 8
  %18 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.rsi_common*, %struct.rsi_common** %5, align 8
  %22 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sub nsw i32 %33, %34
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31, %28
  %38 = load i32, i32* @NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW, align 4
  store i32 %38, i32* %12, align 4
  br label %56

39:                                               ; preds = %31, %4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %48, %49
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46, %43
  %53 = load i32, i32* @NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH, align 4
  store i32 %53, i32* %12, align 4
  br label %55

54:                                               ; preds = %46, %39
  br label %69

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %55, %37
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.rsi_common*, %struct.rsi_common** %5, align 8
  %59 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @INFO_ZONE, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @rsi_dbg(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i32 @ieee80211_cqm_rssi_notify(%struct.ieee80211_vif* %64, i32 %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %56, %54
  ret void
}

declare dso_local i32 @rsi_dbg(i32, i8*, i32) #1

declare dso_local i32 @ieee80211_cqm_rssi_notify(%struct.ieee80211_vif*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
