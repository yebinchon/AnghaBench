; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_check_tpgs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_check_tpgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64 }

@TYPE_DISK = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s: disable for non-disk devices\0A\00", align 1
@ALUA_DH_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: supports implicit and explicit TPGS\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: supports explicit TPGS\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%s: supports implicit TPGS\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%s: not supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"%s: unsupported TPGS setting %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @alua_check_tpgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alua_check_tpgs(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i32 128, i32* %4, align 4
  %5 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %6 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @TYPE_DISK, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* @KERN_INFO, align 4
  %12 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %13 = load i32, i32* @ALUA_DH_NAME, align 4
  %14 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %11, %struct.scsi_device* %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %48

16:                                               ; preds = %1
  %17 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %18 = call i32 @scsi_device_tpgs(%struct.scsi_device* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %40 [
    i32 131, label %20
    i32 130, label %25
    i32 129, label %30
    i32 128, label %35
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* @KERN_INFO, align 4
  %22 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %23 = load i32, i32* @ALUA_DH_NAME, align 4
  %24 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %21, %struct.scsi_device* %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %46

25:                                               ; preds = %16
  %26 = load i32, i32* @KERN_INFO, align 4
  %27 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %28 = load i32, i32* @ALUA_DH_NAME, align 4
  %29 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %26, %struct.scsi_device* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  br label %46

30:                                               ; preds = %16
  %31 = load i32, i32* @KERN_INFO, align 4
  %32 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %33 = load i32, i32* @ALUA_DH_NAME, align 4
  %34 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %31, %struct.scsi_device* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  br label %46

35:                                               ; preds = %16
  %36 = load i32, i32* @KERN_INFO, align 4
  %37 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %38 = load i32, i32* @ALUA_DH_NAME, align 4
  %39 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %36, %struct.scsi_device* %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %38)
  br label %46

40:                                               ; preds = %16
  %41 = load i32, i32* @KERN_INFO, align 4
  %42 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %43 = load i32, i32* @ALUA_DH_NAME, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %41, %struct.scsi_device* %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %43, i32 %44)
  store i32 128, i32* %4, align 4
  br label %46

46:                                               ; preds = %40, %35, %30, %25, %20
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %10
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, ...) #1

declare dso_local i32 @scsi_device_tpgs(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
