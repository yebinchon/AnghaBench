; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_sysfs.c_configuration_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_sysfs.c_configuration_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_device = type { %struct.usb_host_config* }
%struct.usb_host_config = type { i8* }

@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @configuration_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @configuration_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.usb_host_config*, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.usb_device* @to_usb_device(%struct.device* %11)
  store %struct.usb_device* %12, %struct.usb_device** %8, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %14 = call i64 @usb_lock_device_interruptible(%struct.usb_device* %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i64, i64* @EINTR, align 8
  %19 = sub nsw i64 0, %18
  store i64 %19, i64* %4, align 8
  br label %41

20:                                               ; preds = %3
  %21 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 0
  %23 = load %struct.usb_host_config*, %struct.usb_host_config** %22, align 8
  store %struct.usb_host_config* %23, %struct.usb_host_config** %9, align 8
  %24 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %25 = icmp ne %struct.usb_host_config* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %28 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %34 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @sprintf(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %35)
  store i64 %36, i64* %10, align 8
  br label %37

37:                                               ; preds = %31, %26, %20
  %38 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %39 = call i32 @usb_unlock_device(%struct.usb_device* %38)
  %40 = load i64, i64* %10, align 8
  store i64 %40, i64* %4, align 8
  br label %41

41:                                               ; preds = %37, %17
  %42 = load i64, i64* %4, align 8
  ret i64 %42
}

declare dso_local %struct.usb_device* @to_usb_device(%struct.device*) #1

declare dso_local i64 @usb_lock_device_interruptible(%struct.usb_device*) #1

declare dso_local i64 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @usb_unlock_device(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
