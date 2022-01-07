; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_submit_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxsigma.c_usbduxsigma_submit_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.urb = type { i32, i32, i64, %struct.usb_device*, %struct.comedi_device* }
%struct.usb_device = type { i32 }

@URB_ISO_ASAP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.urb**, i32, i32)* @usbduxsigma_submit_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbduxsigma_submit_urbs(%struct.comedi_device* %0, %struct.urb** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.urb**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca %struct.urb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.urb** %1, %struct.urb*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %15 = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %14)
  store %struct.usb_device* %15, %struct.usb_device** %10, align 8
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %51, %4
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %16
  %21 = load %struct.urb**, %struct.urb*** %7, align 8
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.urb*, %struct.urb** %21, i64 %23
  %25 = load %struct.urb*, %struct.urb** %24, align 8
  store %struct.urb* %25, %struct.urb** %11, align 8
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load %struct.urb*, %struct.urb** %11, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  br label %31

31:                                               ; preds = %28, %20
  %32 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %33 = load %struct.urb*, %struct.urb** %11, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 4
  store %struct.comedi_device* %32, %struct.comedi_device** %34, align 8
  %35 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %36 = load %struct.urb*, %struct.urb** %11, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 3
  store %struct.usb_device* %35, %struct.usb_device** %37, align 8
  %38 = load %struct.urb*, %struct.urb** %11, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @URB_ISO_ASAP, align 4
  %41 = load %struct.urb*, %struct.urb** %11, align 8
  %42 = getelementptr inbounds %struct.urb, %struct.urb* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.urb*, %struct.urb** %11, align 8
  %44 = load i32, i32* @GFP_ATOMIC, align 4
  %45 = call i32 @usb_submit_urb(%struct.urb* %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %31
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %5, align 4
  br label %55

50:                                               ; preds = %31
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %16

54:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %48
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
