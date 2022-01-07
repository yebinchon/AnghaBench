; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_sysfs.c_authorized_default_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_sysfs.c_authorized_default_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_device = type { %struct.usb_bus* }
%struct.usb_bus = type { i32 }
%struct.usb_hcd = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@USB_DEVICE_AUTHORIZE_INTERNAL = common dso_local global i32 0, align 4
@USB_DEVICE_AUTHORIZE_ALL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @authorized_default_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @authorized_default_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca %struct.usb_bus*, align 8
  %13 = alloca %struct.usb_hcd*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.usb_device* @to_usb_device(%struct.device* %14)
  store %struct.usb_device* %15, %struct.usb_device** %11, align 8
  %16 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 0
  %18 = load %struct.usb_bus*, %struct.usb_bus** %17, align 8
  store %struct.usb_bus* %18, %struct.usb_bus** %12, align 8
  %19 = load %struct.usb_bus*, %struct.usb_bus** %12, align 8
  %20 = call %struct.usb_hcd* @bus_to_hcd(%struct.usb_bus* %19)
  store %struct.usb_hcd* %20, %struct.usb_hcd** %13, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @sscanf(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %10)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %39

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @USB_DEVICE_AUTHORIZE_INTERNAL, align 4
  %28 = icmp ule i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  br label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @USB_DEVICE_AUTHORIZE_ALL, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = load %struct.usb_hcd*, %struct.usb_hcd** %13, align 8
  %36 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i64, i64* %8, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %9, align 4
  br label %42

39:                                               ; preds = %4
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %39, %33
  %43 = load i32, i32* %9, align 4
  ret i32 %43
}

declare dso_local %struct.usb_device* @to_usb_device(%struct.device*) #1

declare dso_local %struct.usb_hcd* @bus_to_hcd(%struct.usb_bus*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
