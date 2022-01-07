; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_block_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_block_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32 }
%struct.dasd_block = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@timer = common dso_local global i32 0, align 4
@DASD_STOPPED_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @dasd_block_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_block_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.dasd_block*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @timer, align 4
  %8 = call %struct.dasd_block* @from_timer(%struct.dasd_block* %5, %struct.timer_list* %6, i32 %7)
  store %struct.dasd_block* %8, %struct.dasd_block** %4, align 8
  %9 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %10 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @get_ccwdev_lock(i32 %13)
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_lock_irqsave(i32 %14, i64 %15)
  %17 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %18 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* @DASD_STOPPED_PENDING, align 4
  %21 = call i32 @dasd_device_remove_stop_bits(%struct.TYPE_2__* %19, i32 %20)
  %22 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %23 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @get_ccwdev_lock(i32 %26)
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32 %27, i64 %28)
  %30 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %31 = call i32 @dasd_schedule_block_bh(%struct.dasd_block* %30)
  %32 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %33 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @blk_mq_run_hw_queues(i32 %34, i32 1)
  ret void
}

declare dso_local %struct.dasd_block* @from_timer(%struct.dasd_block*, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @dasd_device_remove_stop_bits(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @dasd_schedule_block_bh(%struct.dasd_block*) #1

declare dso_local i32 @blk_mq_run_hw_queues(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
