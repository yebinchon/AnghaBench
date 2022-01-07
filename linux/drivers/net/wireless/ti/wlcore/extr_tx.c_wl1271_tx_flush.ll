; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_tx.c_wl1271_tx_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_tx.c_wl1271_tx_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, i32, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@WL1271_TX_FLUSH_TIMEOUT = common dso_local global i32 0, align 4
@WLCORE_QUEUE_STOP_REASON_FLUSH = common dso_local global i32 0, align 4
@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"flushing tx buffer: %d %d\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"tx flush took %d ms\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Unable to flush all TX buffers, timed out (timeout %d ms\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wl1271_tx_flush(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %6 = load i64, i64* @jiffies, align 8
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i32, i32* @WL1271_TX_FLUSH_TIMEOUT, align 4
  %9 = call i64 @usecs_to_jiffies(i32 %8)
  %10 = add i64 %7, %9
  store i64 %10, i64* %3, align 8
  %11 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %12 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %11, i32 0, i32 2
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %15 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %14, i32 0, i32 3
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %18 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %23 = call i64 @wl1271_tx_total_queue_count(%struct.wl1271* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %27 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %26, i32 0, i32 3
  %28 = call i32 @mutex_unlock(i32* %27)
  br label %104

29:                                               ; preds = %21, %1
  %30 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %31 = load i32, i32* @WLCORE_QUEUE_STOP_REASON_FLUSH, align 4
  %32 = call i32 @wlcore_stop_queues(%struct.wl1271* %30, i32 %31)
  br label %33

33:                                               ; preds = %78, %29
  %34 = load i64, i64* @jiffies, align 8
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @time_after(i64 %34, i64 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %79

39:                                               ; preds = %33
  %40 = load i32, i32* @DEBUG_MAC80211, align 4
  %41 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %42 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %45 = call i64 @wl1271_tx_total_queue_count(%struct.wl1271* %44)
  %46 = call i32 (i32, i8*, i64, ...) @wl1271_debug(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %45)
  %47 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %48 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %47, i32 0, i32 3
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %51 = call i64 @wl1271_tx_total_queue_count(%struct.wl1271* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %39
  %54 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %55 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %54, i32 0, i32 4
  %56 = call i32 @wl1271_tx_work(i32* %55)
  br label %57

57:                                               ; preds = %53, %39
  %58 = call i32 @msleep(i32 20)
  %59 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %60 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %59, i32 0, i32 3
  %61 = call i32 @mutex_lock(i32* %60)
  %62 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %63 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %57
  %67 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %68 = call i64 @wl1271_tx_total_queue_count(%struct.wl1271* %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i32, i32* @DEBUG_MAC80211, align 4
  %72 = load i64, i64* @jiffies, align 8
  %73 = load i64, i64* %4, align 8
  %74 = sub i64 %72, %73
  %75 = call i32 @jiffies_to_msecs(i64 %74)
  %76 = sext i32 %75 to i64
  %77 = call i32 (i32, i8*, i64, ...) @wl1271_debug(i32 %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %76)
  br label %97

78:                                               ; preds = %66, %57
  br label %33

79:                                               ; preds = %33
  %80 = load i32, i32* @WL1271_TX_FLUSH_TIMEOUT, align 4
  %81 = sdiv i32 %80, 1000
  %82 = call i32 @wl1271_warning(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %93, %79
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %86 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @wl1271_tx_reset_link_queues(%struct.wl1271* %90, i32 %91)
  br label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %83

96:                                               ; preds = %83
  br label %97

97:                                               ; preds = %96, %70
  %98 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %99 = load i32, i32* @WLCORE_QUEUE_STOP_REASON_FLUSH, align 4
  %100 = call i32 @wlcore_wake_queues(%struct.wl1271* %98, i32 %99)
  %101 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %102 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %101, i32 0, i32 3
  %103 = call i32 @mutex_unlock(i32* %102)
  br label %104

104:                                              ; preds = %97, %25
  %105 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %106 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %105, i32 0, i32 2
  %107 = call i32 @mutex_unlock(i32* %106)
  ret void
}

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @wl1271_tx_total_queue_count(%struct.wl1271*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wlcore_stop_queues(%struct.wl1271*, i32) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i64, ...) #1

declare dso_local i32 @wl1271_tx_work(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @wl1271_tx_reset_link_queues(%struct.wl1271*, i32) #1

declare dso_local i32 @wlcore_wake_queues(%struct.wl1271*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
