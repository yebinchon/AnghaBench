; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_rx.c_tweak_set_configuration_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_rx.c_tweak_set_configuration_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, i64 }
%struct.stub_priv = type { %struct.stub_device* }
%struct.stub_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_ctrlrequest = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"can't set config #%d, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urb*)* @tweak_set_configuration_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tweak_set_configuration_cmd(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.stub_priv*, align 8
  %4 = alloca %struct.stub_device*, align 8
  %5 = alloca %struct.usb_ctrlrequest*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.stub_priv*
  store %struct.stub_priv* %11, %struct.stub_priv** %3, align 8
  %12 = load %struct.stub_priv*, %struct.stub_priv** %3, align 8
  %13 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %12, i32 0, i32 0
  %14 = load %struct.stub_device*, %struct.stub_device** %13, align 8
  store %struct.stub_device* %14, %struct.stub_device** %4, align 8
  %15 = load %struct.urb*, %struct.urb** %2, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.usb_ctrlrequest*
  store %struct.usb_ctrlrequest* %18, %struct.usb_ctrlrequest** %5, align 8
  %19 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %20 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le16_to_cpu(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %24 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @usb_set_configuration(%struct.TYPE_2__* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %1
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %37 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %35, %30, %1
  ret i32 0
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_set_configuration(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
