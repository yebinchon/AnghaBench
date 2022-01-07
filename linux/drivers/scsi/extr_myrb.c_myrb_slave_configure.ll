; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_slave_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrb.c_myrb_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i32, i64, i32, %struct.myrb_ldev_info*, i32 }
%struct.myrb_ldev_info = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@MYRB_DEVICE_ONLINE = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Logical drive is %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @myrb_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myrb_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.myrb_ldev_info*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %6 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @myrb_logical_channel(i32 %10)
  %12 = icmp sgt i64 %7, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENXIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %62

16:                                               ; preds = %1
  %17 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %21 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @myrb_logical_channel(i32 %22)
  %24 = icmp slt i64 %19, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %26, i32 0, i32 1
  store i32 1, i32* %27, align 8
  store i32 0, i32* %2, align 4
  br label %62

28:                                               ; preds = %16
  %29 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %30 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @ENXIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %62

36:                                               ; preds = %28
  %37 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %38 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %37, i32 0, i32 4
  %39 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %38, align 8
  store %struct.myrb_ldev_info* %39, %struct.myrb_ldev_info** %4, align 8
  %40 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %4, align 8
  %41 = icmp ne %struct.myrb_ldev_info* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENXIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %62

45:                                               ; preds = %36
  %46 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %4, align 8
  %47 = getelementptr inbounds %struct.myrb_ldev_info, %struct.myrb_ldev_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MYRB_DEVICE_ONLINE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load i32, i32* @KERN_INFO, align 4
  %53 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %54 = load %struct.myrb_ldev_info*, %struct.myrb_ldev_info** %4, align 8
  %55 = getelementptr inbounds %struct.myrb_ldev_info, %struct.myrb_ldev_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @myrb_devstate_name(i64 %56)
  %58 = call i32 @sdev_printk(i32 %52, %struct.scsi_device* %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %51, %45
  %60 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %61 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %60, i32 0, i32 3
  store i32 1, i32* %61, align 8
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %59, %42, %33, %25, %13
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @myrb_logical_channel(i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32) #1

declare dso_local i32 @myrb_devstate_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
