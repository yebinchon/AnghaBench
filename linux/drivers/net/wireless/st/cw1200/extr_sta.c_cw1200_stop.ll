; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.cw1200_common* }
%struct.cw1200_common = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }

@list = common dso_local global i32 0, align 4
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i32 0, align 4
@CW1200_JOIN_STATUS_PASSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"[STA] TX is force-unlocked due to stop request.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cw1200_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %5, i32 0, i32 0
  %7 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  store %struct.cw1200_common* %7, %struct.cw1200_common** %3, align 8
  %8 = load i32, i32* @list, align 4
  %9 = call i32 @LIST_HEAD(i32 %8)
  %10 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %11 = call i32 @wsm_lock_tx(%struct.cw1200_common* %10)
  br label %12

12:                                               ; preds = %18, %1
  %13 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %14 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %13, i32 0, i32 15
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = call i64 @down_trylock(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %20 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %19, i32 0, i32 15
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  store i32* null, i32** %21, align 8
  %22 = call i32 (...) @schedule()
  br label %12

23:                                               ; preds = %12
  %24 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %25 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %24, i32 0, i32 15
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = call i32 @up(i32* %26)
  %28 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %29 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %28, i32 0, i32 15
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = call i32 @cancel_delayed_work_sync(i32* %30)
  %32 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %33 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %32, i32 0, i32 15
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @cancel_delayed_work_sync(i32* %34)
  %36 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %37 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %36, i32 0, i32 14
  %38 = call i32 @cancel_delayed_work_sync(i32* %37)
  %39 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %40 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %39, i32 0, i32 13
  %41 = call i32 @cancel_delayed_work_sync(i32* %40)
  %42 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %43 = call i32 @cw1200_cqm_bssloss_sm(%struct.cw1200_common* %42, i32 0, i32 0, i32 0)
  %44 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %45 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %44, i32 0, i32 12
  %46 = call i32 @cancel_work_sync(i32* %45)
  %47 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %48 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %47, i32 0, i32 11
  %49 = call i32 @cancel_delayed_work_sync(i32* %48)
  %50 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %51 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %50, i32 0, i32 10
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @flush_workqueue(i32 %52)
  %54 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %55 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %54, i32 0, i32 9
  %56 = call i32 @del_timer_sync(i32* %55)
  %57 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %58 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %57, i32 0, i32 3
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load i32, i32* @NL80211_IFTYPE_UNSPECIFIED, align 4
  %61 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %62 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %61, i32 0, i32 8
  store i32 %60, i32* %62, align 4
  %63 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %64 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %66 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %65, i32 0, i32 6
  %67 = call i32 @spin_lock(i32* %66)
  %68 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %69 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %68, i32 0, i32 7
  %70 = call i32 @list_splice_init(i32* %69, i32* @list)
  %71 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %72 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %71, i32 0, i32 6
  %73 = call i32 @spin_unlock(i32* %72)
  %74 = call i32 @__cw1200_free_event_queue(i32* @list)
  %75 = load i32, i32* @CW1200_JOIN_STATUS_PASSIVE, align 4
  %76 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %77 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  %78 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %79 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %78, i32 0, i32 1
  store i32 0, i32* %79, align 4
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %91, %23
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 %81, 4
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %85 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = call i32 @cw1200_queue_clear(i32* %89)
  br label %91

91:                                               ; preds = %83
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  br label %80

94:                                               ; preds = %80
  %95 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %96 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %95, i32 0, i32 3
  %97 = call i32 @mutex_unlock(i32* %96)
  %98 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %99 = call i32 @tx_policy_clean(%struct.cw1200_common* %98)
  %100 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %101 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %100, i32 0, i32 2
  %102 = call i32 @atomic_xchg(i32* %101, i32 1)
  %103 = icmp ne i32 %102, 1
  br i1 %103, label %104, label %106

104:                                              ; preds = %94
  %105 = call i32 @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %94
  %107 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %108 = call i32 @wsm_unlock_tx(%struct.cw1200_common* %107)
  %109 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %110 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %109, i32 0, i32 2
  %111 = call i32 @atomic_xchg(i32* %110, i32 0)
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @wsm_lock_tx(%struct.cw1200_common*) #1

declare dso_local i64 @down_trylock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cw1200_cqm_bssloss_sm(%struct.cw1200_common*, i32, i32, i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__cw1200_free_event_queue(i32*) #1

declare dso_local i32 @cw1200_queue_clear(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tx_policy_clean(%struct.cw1200_common*) #1

declare dso_local i32 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @wsm_unlock_tx(%struct.cw1200_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
