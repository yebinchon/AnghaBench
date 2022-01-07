; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_usb.c_hcd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_usb.c_hcd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_bus = type { i64 }
%struct.gb_usb_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@GB_USB_TYPE_HCD_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"HCD start failed '%d'\0A\00", align 1
@HC_STATE_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @hcd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hcd_start(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.usb_bus*, align 8
  %5 = alloca %struct.gb_usb_device*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %8 = call %struct.usb_bus* @hcd_to_bus(%struct.usb_hcd* %7)
  store %struct.usb_bus* %8, %struct.usb_bus** %4, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.gb_usb_device* @to_gb_usb_device(%struct.usb_hcd* %9)
  store %struct.gb_usb_device* %10, %struct.gb_usb_device** %5, align 8
  %11 = load %struct.gb_usb_device*, %struct.gb_usb_device** %5, align 8
  %12 = getelementptr inbounds %struct.gb_usb_device, %struct.gb_usb_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @GB_USB_TYPE_HCD_START, align 4
  %15 = call i32 @gb_operation_sync(i32 %13, i32 %14, i32* null, i32 0, i32* null, i32 0)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.gb_usb_device*, %struct.gb_usb_device** %5, align 8
  %20 = getelementptr inbounds %struct.gb_usb_device, %struct.gb_usb_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %38

26:                                               ; preds = %1
  %27 = load i32, i32* @HC_STATE_RUNNING, align 4
  %28 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %29 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.usb_bus*, %struct.usb_bus** %4, align 8
  %31 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %36 = call i32 @usb_hcd_resume_root_hub(%struct.usb_hcd* %35)
  br label %37

37:                                               ; preds = %34, %26
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %18
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.usb_bus* @hcd_to_bus(%struct.usb_hcd*) #1

declare dso_local %struct.gb_usb_device* @to_gb_usb_device(%struct.usb_hcd*) #1

declare dso_local i32 @gb_operation_sync(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usb_hcd_resume_root_hub(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
