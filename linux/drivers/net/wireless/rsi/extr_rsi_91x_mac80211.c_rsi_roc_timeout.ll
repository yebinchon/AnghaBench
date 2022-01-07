; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_roc_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_roc_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_common = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }

@roc_timer = common dso_local global i32 0, align 4
@INFO_ZONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Remain on channel expired\0A\00", align 1
@common = common dso_local global %struct.rsi_common* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rsi_roc_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.rsi_common*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %5 = ptrtoint %struct.rsi_common* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @roc_timer, align 4
  %8 = call %struct.rsi_common* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.rsi_common* %8, %struct.rsi_common** %3, align 8
  %9 = load i32, i32* @INFO_ZONE, align 4
  %10 = call i32 @rsi_dbg(i32 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %12 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %15 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ieee80211_remain_on_channel_expired(i32 %18)
  %20 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %21 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %20, i32 0, i32 1
  %22 = call i64 @timer_pending(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %26 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %25, i32 0, i32 1
  %27 = call i32 @del_timer(i32* %26)
  br label %28

28:                                               ; preds = %24, %1
  %29 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %30 = call i32 @rsi_resume_conn_channel(%struct.rsi_common* %29)
  %31 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %32 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  ret void
}

declare dso_local %struct.rsi_common* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @rsi_dbg(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ieee80211_remain_on_channel_expired(i32) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @rsi_resume_conn_channel(%struct.rsi_common*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
