; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_device_quiesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_device_quiesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i32, %struct.request_queue* }
%struct.request_queue = type { i32 }

@current = common dso_local global i64 0, align 8
@SDEV_QUIESCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_device_quiesce(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %6 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %7 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %6, i32 0, i32 2
  %8 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  store %struct.request_queue* %8, %struct.request_queue** %4, align 8
  %9 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @current, align 8
  %18 = icmp ne i64 %16, %17
  br label %19

19:                                               ; preds = %13, %1
  %20 = phi i1 [ false, %1 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON_ONCE(i32 %21)
  %23 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %24 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @current, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %57

29:                                               ; preds = %19
  %30 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %31 = call i32 @blk_set_pm_only(%struct.request_queue* %30)
  %32 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %33 = call i32 @blk_mq_freeze_queue(%struct.request_queue* %32)
  %34 = call i32 (...) @synchronize_rcu()
  %35 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %36 = call i32 @blk_mq_unfreeze_queue(%struct.request_queue* %35)
  %37 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %38 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %37, i32 0, i32 1
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %41 = load i32, i32* @SDEV_QUIESCE, align 4
  %42 = call i32 @scsi_device_set_state(%struct.scsi_device* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %29
  %46 = load i64, i64* @current, align 8
  %47 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %48 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %52

49:                                               ; preds = %29
  %50 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %51 = call i32 @blk_clear_pm_only(%struct.request_queue* %50)
  br label %52

52:                                               ; preds = %49, %45
  %53 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %54 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %52, %28
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @blk_set_pm_only(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_freeze_queue(%struct.request_queue*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @blk_mq_unfreeze_queue(%struct.request_queue*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @scsi_device_set_state(%struct.scsi_device*, i32) #1

declare dso_local i32 @blk_clear_pm_only(%struct.request_queue*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
