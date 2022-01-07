; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_internal_device_unblock_nowait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_internal_device_unblock_nowait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SDEV_CREATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_internal_device_unblock_nowait(%struct.scsi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %8 [
    i32 129, label %7
    i32 128, label %7
  ]

7:                                                ; preds = %2, %2
  br label %11

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %41

11:                                               ; preds = %7
  %12 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %35 [
    i32 133, label %15
    i32 128, label %15
    i32 131, label %19
    i32 132, label %34
    i32 130, label %34
  ]

15:                                               ; preds = %11, %11
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %38

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 128
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 130
  br i1 %24, label %25, label %29

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %28 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %33

29:                                               ; preds = %22
  %30 = load i32, i32* @SDEV_CREATED, align 4
  %31 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %32 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %25
  br label %38

34:                                               ; preds = %11, %11
  br label %38

35:                                               ; preds = %11
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %41

38:                                               ; preds = %34, %33, %15
  %39 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %40 = call i32 @scsi_start_queue(%struct.scsi_device* %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %35, %8
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @scsi_start_queue(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
