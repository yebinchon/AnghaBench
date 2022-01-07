; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_mq_get_budget.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_mq_get_budget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.request_queue* }
%struct.request_queue = type { %struct.scsi_device* }
%struct.scsi_device = type { i32 }

@SCSI_QUEUE_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*)* @scsi_mq_get_budget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_mq_get_budget(%struct.blk_mq_hw_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.blk_mq_hw_ctx*, align 8
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %3, align 8
  %6 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %6, i32 0, i32 0
  %8 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  store %struct.request_queue* %8, %struct.request_queue** %4, align 8
  %9 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %10 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %9, i32 0, i32 0
  %11 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  store %struct.scsi_device* %11, %struct.scsi_device** %5, align 8
  %12 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %13 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %14 = call i64 @scsi_dev_queue_ready(%struct.request_queue* %12, %struct.scsi_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %31

17:                                               ; preds = %1
  %18 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %19 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %18, i32 0, i32 0
  %20 = call i64 @atomic_read(i32* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %24 = call i32 @scsi_device_blocked(%struct.scsi_device* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %3, align 8
  %28 = load i32, i32* @SCSI_QUEUE_DELAY, align 4
  %29 = call i32 @blk_mq_delay_run_hw_queue(%struct.blk_mq_hw_ctx* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %22, %17
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %16
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @scsi_dev_queue_ready(%struct.request_queue*, %struct.scsi_device*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @scsi_device_blocked(%struct.scsi_device*) #1

declare dso_local i32 @blk_mq_delay_run_hw_queue(%struct.blk_mq_hw_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
