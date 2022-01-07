; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_dh.c_scsi_dh_handler_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_dh.c_scsi_dh_handler_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.scsi_device_handler* }
%struct.scsi_device_handler = type { i32 (%struct.scsi_device.0*)*, i32, i32 }
%struct.scsi_device.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@SCSI_DH_OK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: Attach failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.scsi_device_handler*)* @scsi_dh_handler_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_dh_handler_attach(%struct.scsi_device* %0, %struct.scsi_device_handler* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.scsi_device_handler*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store %struct.scsi_device_handler* %1, %struct.scsi_device_handler** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %5, align 8
  %9 = getelementptr inbounds %struct.scsi_device_handler, %struct.scsi_device_handler* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @try_module_get(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %64

16:                                               ; preds = %2
  %17 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %5, align 8
  %18 = getelementptr inbounds %struct.scsi_device_handler, %struct.scsi_device_handler* %17, i32 0, i32 0
  %19 = load i32 (%struct.scsi_device.0*)*, i32 (%struct.scsi_device.0*)** %18, align 8
  %20 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %21 = bitcast %struct.scsi_device* %20 to %struct.scsi_device.0*
  %22 = call i32 %19(%struct.scsi_device.0* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @SCSI_DH_OK, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %16
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %37 [
    i32 130, label %28
    i32 128, label %31
    i32 131, label %34
    i32 129, label %34
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %40

31:                                               ; preds = %26
  %32 = load i32, i32* @EAGAIN, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %40

34:                                               ; preds = %26, %26
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %40

37:                                               ; preds = %26
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %37, %34, %31, %28
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i32, i32* @KERN_ERR, align 4
  %47 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %48 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %5, align 8
  %49 = getelementptr inbounds %struct.scsi_device_handler, %struct.scsi_device_handler* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @sdev_printk(i32 %46, %struct.scsi_device* %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %45, %40
  %54 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %5, align 8
  %55 = getelementptr inbounds %struct.scsi_device_handler, %struct.scsi_device_handler* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @module_put(i32 %56)
  br label %62

58:                                               ; preds = %16
  %59 = load %struct.scsi_device_handler*, %struct.scsi_device_handler** %5, align 8
  %60 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %61 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %60, i32 0, i32 0
  store %struct.scsi_device_handler* %59, %struct.scsi_device_handler** %61, align 8
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %13
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
