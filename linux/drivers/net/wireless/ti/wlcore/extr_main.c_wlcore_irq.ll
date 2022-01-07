; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32, i32, i32, i32, i32, i32, i32* }

@WL1271_FLAG_IRQ_RUNNING = common dso_local global i32 0, align 4
@WL1271_FLAG_SUSPENDED = common dso_local global i32 0, align 4
@WL1271_FLAG_PENDING_WORK = common dso_local global i32 0, align 4
@DEBUG_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"should not enqueue work\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@WL1271_FLAG_TX_PENDING = common dso_local global i32 0, align 4
@WL1271_FLAG_FW_TX_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wlcore_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.wl1271*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.wl1271*
  store %struct.wl1271* %10, %struct.wl1271** %8, align 8
  %11 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %12 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %11, i32 0, i32 1
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i32, i32* @WL1271_FLAG_IRQ_RUNNING, align 4
  %16 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %17 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %16, i32 0, i32 4
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  %19 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %20 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %25 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %24, i32 0, i32 7
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @complete(i32* %26)
  %28 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %29 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %28, i32 0, i32 7
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %23, %2
  %31 = load i32, i32* @WL1271_FLAG_SUSPENDED, align 4
  %32 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %33 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %32, i32 0, i32 4
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %30
  %37 = load i32, i32* @WL1271_FLAG_PENDING_WORK, align 4
  %38 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %39 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %38, i32 0, i32 4
  %40 = call i32 @set_bit(i32 %37, i32* %39)
  %41 = load i32, i32* @DEBUG_IRQ, align 4
  %42 = call i32 @wl1271_debug(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %44 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @disable_irq_nosync(i32 %45)
  %47 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %48 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pm_wakeup_event(i32 %49, i32 0)
  %51 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %52 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %51, i32 0, i32 1
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %55, i32* %3, align 4
  br label %112

56:                                               ; preds = %30
  %57 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %58 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %57, i32 0, i32 1
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load i32, i32* @WL1271_FLAG_TX_PENDING, align 4
  %62 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %63 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %62, i32 0, i32 4
  %64 = call i32 @set_bit(i32 %61, i32* %63)
  %65 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %66 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %65, i32 0, i32 2
  %67 = call i32 @cancel_work_sync(i32* %66)
  %68 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %69 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %68, i32 0, i32 0
  %70 = call i32 @mutex_lock(i32* %69)
  %71 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %72 = call i32 @wlcore_irq_locked(%struct.wl1271* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %56
  %76 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %77 = call i32 @wl12xx_queue_recovery_work(%struct.wl1271* %76)
  br label %78

78:                                               ; preds = %75, %56
  %79 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %80 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %79, i32 0, i32 1
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @spin_lock_irqsave(i32* %80, i64 %81)
  %83 = load i32, i32* @WL1271_FLAG_TX_PENDING, align 4
  %84 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %85 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %84, i32 0, i32 4
  %86 = call i32 @clear_bit(i32 %83, i32* %85)
  %87 = load i32, i32* @WL1271_FLAG_FW_TX_BUSY, align 4
  %88 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %89 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %88, i32 0, i32 4
  %90 = call i64 @test_bit(i32 %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %78
  %93 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %94 = call i64 @wl1271_tx_total_queue_count(%struct.wl1271* %93)
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %98 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %101 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %100, i32 0, i32 2
  %102 = call i32 @ieee80211_queue_work(i32 %99, i32* %101)
  br label %103

103:                                              ; preds = %96, %92, %78
  %104 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %105 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %104, i32 0, i32 1
  %106 = load i64, i64* %7, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  %108 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %109 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %108, i32 0, i32 0
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %103, %36
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @pm_wakeup_event(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wlcore_irq_locked(%struct.wl1271*) #1

declare dso_local i32 @wl12xx_queue_recovery_work(%struct.wl1271*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @wl1271_tx_total_queue_count(%struct.wl1271*) #1

declare dso_local i32 @ieee80211_queue_work(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
