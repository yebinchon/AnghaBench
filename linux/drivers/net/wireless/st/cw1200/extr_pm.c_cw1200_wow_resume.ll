; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_pm.c_cw1200_wow_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_pm.c_cw1200_wow_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.cw1200_common* }
%struct.cw1200_common = type { i64, i32, i32, i32, i32, %struct.TYPE_7__, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, %struct.cw1200_pm_state }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (i32, i32)* }
%struct.cw1200_pm_state = type { %struct.cw1200_suspend_state* }
%struct.cw1200_suspend_state = type { i32, i32, i32, i32, i32, i32 }

@CW1200_JOIN_STATUS_STA = common dso_local global i64 0, align 8
@MAX_BEACON_SKIP_TIME_MS = common dso_local global i32 0, align 4
@cw1200_udp_port_filter_off = common dso_local global i32 0, align 4
@cw1200_ether_type_filter_off = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_wow_resume(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca %struct.cw1200_pm_state*, align 8
  %5 = alloca %struct.cw1200_suspend_state*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.cw1200_common*, %struct.cw1200_common** %7, align 8
  store %struct.cw1200_common* %8, %struct.cw1200_common** %3, align 8
  %9 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %10 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %9, i32 0, i32 12
  store %struct.cw1200_pm_state* %10, %struct.cw1200_pm_state** %4, align 8
  %11 = load %struct.cw1200_pm_state*, %struct.cw1200_pm_state** %4, align 8
  %12 = getelementptr inbounds %struct.cw1200_pm_state, %struct.cw1200_pm_state* %11, i32 0, i32 0
  %13 = load %struct.cw1200_suspend_state*, %struct.cw1200_suspend_state** %12, align 8
  store %struct.cw1200_suspend_state* %13, %struct.cw1200_suspend_state** %5, align 8
  %14 = load %struct.cw1200_pm_state*, %struct.cw1200_pm_state** %4, align 8
  %15 = getelementptr inbounds %struct.cw1200_pm_state, %struct.cw1200_pm_state* %14, i32 0, i32 0
  store %struct.cw1200_suspend_state* null, %struct.cw1200_suspend_state** %15, align 8
  %16 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %17 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %16, i32 0, i32 11
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32 (i32, i32)*, i32 (i32, i32)** %19, align 8
  %21 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %22 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 8
  %24 = call i32 %20(i32 %23, i32 0)
  %25 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %26 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = call i32 @up(i32* %27)
  %29 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %30 = call i32 @cw1200_bh_resume(%struct.cw1200_common* %29)
  %31 = call i32 @WARN_ON(i32 %30)
  %32 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %33 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %32, i32 0, i32 9
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %1
  %39 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %40 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CW1200_JOIN_STATUS_STA, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load %struct.cw1200_suspend_state*, %struct.cw1200_suspend_state** %5, align 8
  %46 = getelementptr inbounds %struct.cw1200_suspend_state, %struct.cw1200_suspend_state* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %49 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %48, i32 0, i32 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %52 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %53 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %52, i32 0, i32 8
  %54 = call i32 @cw1200_set_pm(%struct.cw1200_common* %51, %struct.TYPE_8__* %53)
  br label %55

55:                                               ; preds = %44, %38, %1
  %56 = load %struct.cw1200_suspend_state*, %struct.cw1200_suspend_state** %5, align 8
  %57 = getelementptr inbounds %struct.cw1200_suspend_state, %struct.cw1200_suspend_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %55
  %61 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %62 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %63 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %66 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %64, %67
  %69 = load i32, i32* @MAX_BEACON_SKIP_TIME_MS, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %76

72:                                               ; preds = %60
  %73 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %74 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  br label %76

76:                                               ; preds = %72, %71
  %77 = phi i32 [ 1, %71 ], [ %75, %72 ]
  %78 = call i32 @wsm_set_beacon_wakeup_period(%struct.cw1200_common* %61, i32 %77, i32 0)
  %79 = load %struct.cw1200_suspend_state*, %struct.cw1200_suspend_state** %5, align 8
  %80 = getelementptr inbounds %struct.cw1200_suspend_state, %struct.cw1200_suspend_state* %79, i32 0, i32 0
  store i32 0, i32* %80, align 4
  br label %81

81:                                               ; preds = %76, %55
  %82 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %83 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %84 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %83, i32 0, i32 7
  %85 = load %struct.cw1200_suspend_state*, %struct.cw1200_suspend_state** %5, align 8
  %86 = getelementptr inbounds %struct.cw1200_suspend_state, %struct.cw1200_suspend_state* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @cw1200_resume_work(%struct.cw1200_common* %82, i32* %84, i32 %87)
  %89 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %90 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %91 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %90, i32 0, i32 6
  %92 = load %struct.cw1200_suspend_state*, %struct.cw1200_suspend_state** %5, align 8
  %93 = getelementptr inbounds %struct.cw1200_suspend_state, %struct.cw1200_suspend_state* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @cw1200_resume_work(%struct.cw1200_common* %89, i32* %91, i32 %94)
  %96 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %97 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %98 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load %struct.cw1200_suspend_state*, %struct.cw1200_suspend_state** %5, align 8
  %101 = getelementptr inbounds %struct.cw1200_suspend_state, %struct.cw1200_suspend_state* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @cw1200_resume_work(%struct.cw1200_common* %96, i32* %99, i32 %102)
  %104 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %105 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %106 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %105, i32 0, i32 4
  %107 = load %struct.cw1200_suspend_state*, %struct.cw1200_suspend_state** %5, align 8
  %108 = getelementptr inbounds %struct.cw1200_suspend_state, %struct.cw1200_suspend_state* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @cw1200_resume_work(%struct.cw1200_common* %104, i32* %106, i32 %109)
  %111 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %112 = call i32 @wsm_set_udp_port_filter(%struct.cw1200_common* %111, i32* @cw1200_udp_port_filter_off)
  %113 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %114 = call i32 @wsm_set_ether_type_filter(%struct.cw1200_common* %113, i32* @cw1200_ether_type_filter_off)
  %115 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %116 = call i32 @wsm_unlock_tx(%struct.cw1200_common* %115)
  %117 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %118 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %117, i32 0, i32 3
  %119 = call i32 @mutex_unlock(i32* %118)
  %120 = load %struct.cw1200_suspend_state*, %struct.cw1200_suspend_state** %5, align 8
  %121 = call i32 @kfree(%struct.cw1200_suspend_state* %120)
  ret i32 0
}

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cw1200_bh_resume(%struct.cw1200_common*) #1

declare dso_local i32 @cw1200_set_pm(%struct.cw1200_common*, %struct.TYPE_8__*) #1

declare dso_local i32 @wsm_set_beacon_wakeup_period(%struct.cw1200_common*, i32, i32) #1

declare dso_local i32 @cw1200_resume_work(%struct.cw1200_common*, i32*, i32) #1

declare dso_local i32 @wsm_set_udp_port_filter(%struct.cw1200_common*, i32*) #1

declare dso_local i32 @wsm_set_ether_type_filter(%struct.cw1200_common*, i32*) #1

declare dso_local i32 @wsm_unlock_tx(%struct.cw1200_common*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.cw1200_suspend_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
