; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_rx.c_tweak_reset_device_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_rx.c_tweak_reset_device_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.stub_priv = type { %struct.stub_device* }
%struct.stub_device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"usb_queue_reset_device\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"could not obtain lock to reset device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urb*)* @tweak_reset_device_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tweak_reset_device_cmd(%struct.urb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.urb*, align 8
  %4 = alloca %struct.stub_priv*, align 8
  %5 = alloca %struct.stub_device*, align 8
  store %struct.urb* %0, %struct.urb** %3, align 8
  %6 = load %struct.urb*, %struct.urb** %3, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.stub_priv*
  store %struct.stub_priv* %9, %struct.stub_priv** %4, align 8
  %10 = load %struct.stub_priv*, %struct.stub_priv** %4, align 8
  %11 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %10, i32 0, i32 0
  %12 = load %struct.stub_device*, %struct.stub_device** %11, align 8
  store %struct.stub_device* %12, %struct.stub_device** %5, align 8
  %13 = load %struct.urb*, %struct.urb** %3, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @dev_info(i32* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.stub_device*, %struct.stub_device** %5, align 8
  %19 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @usb_lock_device_for_reset(i32 %20, i32* null)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.urb*, %struct.urb** %3, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %38

29:                                               ; preds = %1
  %30 = load %struct.stub_device*, %struct.stub_device** %5, align 8
  %31 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usb_reset_device(i32 %32)
  %34 = load %struct.stub_device*, %struct.stub_device** %5, align 8
  %35 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @usb_unlock_device(i32 %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %29, %23
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i64 @usb_lock_device_for_reset(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_reset_device(i32) #1

declare dso_local i32 @usb_unlock_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
