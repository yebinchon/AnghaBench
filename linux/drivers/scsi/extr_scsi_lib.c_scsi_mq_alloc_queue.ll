; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_mq_alloc_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_mq_alloc_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.scsi_device* }
%struct.scsi_device = type { %struct.request_queue*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@QUEUE_FLAG_SCSI_PASSTHROUGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.request_queue* @scsi_mq_alloc_queue(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.scsi_device*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %4 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %5 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call %struct.request_queue* @blk_mq_init_queue(i32* %7)
  %9 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %9, i32 0, i32 0
  store %struct.request_queue* %8, %struct.request_queue** %10, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %11, i32 0, i32 0
  %13 = load %struct.request_queue*, %struct.request_queue** %12, align 8
  %14 = call i64 @IS_ERR(%struct.request_queue* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.request_queue* null, %struct.request_queue** %2, align 8
  br label %38

17:                                               ; preds = %1
  %18 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %19 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 0
  %21 = load %struct.request_queue*, %struct.request_queue** %20, align 8
  %22 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %21, i32 0, i32 0
  store %struct.scsi_device* %18, %struct.scsi_device** %22, align 8
  %23 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %24 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %26, i32 0, i32 0
  %28 = load %struct.request_queue*, %struct.request_queue** %27, align 8
  %29 = call i32 @__scsi_init_queue(%struct.TYPE_2__* %25, %struct.request_queue* %28)
  %30 = load i32, i32* @QUEUE_FLAG_SCSI_PASSTHROUGH, align 4
  %31 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %32 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %31, i32 0, i32 0
  %33 = load %struct.request_queue*, %struct.request_queue** %32, align 8
  %34 = call i32 @blk_queue_flag_set(i32 %30, %struct.request_queue* %33)
  %35 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %36 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %35, i32 0, i32 0
  %37 = load %struct.request_queue*, %struct.request_queue** %36, align 8
  store %struct.request_queue* %37, %struct.request_queue** %2, align 8
  br label %38

38:                                               ; preds = %17, %16
  %39 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  ret %struct.request_queue* %39
}

declare dso_local %struct.request_queue* @blk_mq_init_queue(i32*) #1

declare dso_local i64 @IS_ERR(%struct.request_queue*) #1

declare dso_local i32 @__scsi_init_queue(%struct.TYPE_2__*, %struct.request_queue*) #1

declare dso_local i32 @blk_queue_flag_set(i32, %struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
