; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_submit_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_submit_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbdux_private* }
%struct.usbdux_private = type { i32 }
%struct.urb = type { i32, i64, %struct.usb_device*, %struct.comedi_device*, i32 }
%struct.usb_device = type { i32 }

@URB_ISO_ASAP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.urb**, i32, i32)* @usbdux_submit_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdux_submit_urbs(%struct.comedi_device* %0, %struct.urb** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.urb**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca %struct.usbdux_private*, align 8
  %12 = alloca %struct.urb*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.urb** %1, %struct.urb*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %16 = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %15)
  store %struct.usb_device* %16, %struct.usb_device** %10, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  %19 = load %struct.usbdux_private*, %struct.usbdux_private** %18, align 8
  store %struct.usbdux_private* %19, %struct.usbdux_private** %11, align 8
  store i32 0, i32* %14, align 4
  br label %20

20:                                               ; preds = %58, %4
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %20
  %25 = load %struct.urb**, %struct.urb*** %7, align 8
  %26 = load i32, i32* %14, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.urb*, %struct.urb** %25, i64 %27
  %29 = load %struct.urb*, %struct.urb** %28, align 8
  store %struct.urb* %29, %struct.urb** %12, align 8
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load %struct.usbdux_private*, %struct.usbdux_private** %11, align 8
  %34 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.urb*, %struct.urb** %12, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %32, %24
  %39 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %40 = load %struct.urb*, %struct.urb** %12, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 3
  store %struct.comedi_device* %39, %struct.comedi_device** %41, align 8
  %42 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %43 = load %struct.urb*, %struct.urb** %12, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 2
  store %struct.usb_device* %42, %struct.usb_device** %44, align 8
  %45 = load %struct.urb*, %struct.urb** %12, align 8
  %46 = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @URB_ISO_ASAP, align 4
  %48 = load %struct.urb*, %struct.urb** %12, align 8
  %49 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.urb*, %struct.urb** %12, align 8
  %51 = load i32, i32* @GFP_ATOMIC, align 4
  %52 = call i32 @usb_submit_urb(%struct.urb* %50, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %38
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %5, align 4
  br label %62

57:                                               ; preds = %38
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %14, align 4
  br label %20

61:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %55
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
