; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_device_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_device_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i32, i32, i32* }

@SDEV_QUIESCE = common dso_local global i64 0, align 8
@SDEV_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_device_resume(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %3 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %4 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %12 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %11, i32 0, i32 3
  store i32* null, i32** %12, align 8
  %13 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %14 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @blk_clear_pm_only(i32 %15)
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %19 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SDEV_QUIESCE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %25 = load i32, i32* @SDEV_RUNNING, align 4
  %26 = call i32 @scsi_device_set_state(%struct.scsi_device* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %17
  %28 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %29 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %28, i32 0, i32 1
  %30 = call i32 @mutex_unlock(i32* %29)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @blk_clear_pm_only(i32) #1

declare dso_local i32 @scsi_device_set_state(%struct.scsi_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
