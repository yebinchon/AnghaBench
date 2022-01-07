; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_ioctl.c_scsi_ioctl_block_when_processing_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_ioctl.c_scsi_ioctl_block_when_processing_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }

@SG_SCSI_RESET = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_ioctl_block_when_processing_errors(%struct.scsi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @SG_SCSI_RESET, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %16 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @scsi_host_in_recovery(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @EAGAIN, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %33

23:                                               ; preds = %14
  br label %32

24:                                               ; preds = %11, %3
  %25 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %26 = call i32 @scsi_block_when_processing_errors(%struct.scsi_device* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %33

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %23
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %28, %20
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i64 @scsi_host_in_recovery(i32) #1

declare dso_local i32 @scsi_block_when_processing_errors(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
