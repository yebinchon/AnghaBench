; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_sysfs.c_sdev_store_queue_depth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_sysfs.c_sdev_store_queue_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.scsi_host_template* }
%struct.scsi_host_template = type { i32 (%struct.scsi_device.0*, i32)* }
%struct.scsi_device.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @sdev_store_queue_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdev_store_queue_depth(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.scsi_device*, align 8
  %13 = alloca %struct.scsi_host_template*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.scsi_device* @to_scsi_device(%struct.device* %14)
  store %struct.scsi_device* %15, %struct.scsi_device** %12, align 8
  %16 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.scsi_host_template*, %struct.scsi_host_template** %19, align 8
  store %struct.scsi_host_template* %20, %struct.scsi_host_template** %13, align 8
  %21 = load %struct.scsi_host_template*, %struct.scsi_host_template** %13, align 8
  %22 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %21, i32 0, i32 0
  %23 = load i32 (%struct.scsi_device.0*, i32)*, i32 (%struct.scsi_device.0*, i32)** %22, align 8
  %24 = icmp ne i32 (%struct.scsi_device.0*, i32)* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %64

28:                                               ; preds = %4
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @simple_strtoul(i8* %29, i32* null, i32 0)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %36 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %34, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33, %28
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %64

44:                                               ; preds = %33
  %45 = load %struct.scsi_host_template*, %struct.scsi_host_template** %13, align 8
  %46 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %45, i32 0, i32 0
  %47 = load i32 (%struct.scsi_device.0*, i32)*, i32 (%struct.scsi_device.0*, i32)** %46, align 8
  %48 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %49 = bitcast %struct.scsi_device* %48 to %struct.scsi_device.0*
  %50 = load i32, i32* %10, align 4
  %51 = call i32 %47(%struct.scsi_device.0* %49, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %5, align 4
  br label %64

56:                                               ; preds = %44
  %57 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %58 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %61 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i64, i64* %9, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %56, %54, %41, %25
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
