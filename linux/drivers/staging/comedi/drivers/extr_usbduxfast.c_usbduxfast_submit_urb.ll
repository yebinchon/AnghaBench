; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxfast.c_usbduxfast_submit_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxfast.c_usbduxfast_submit_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.usbduxfast_private* }
%struct.usbduxfast_private = type { i32, i32 }
%struct.usb_device = type { i32 }

@BULKINEP = common dso_local global i32 0, align 4
@SIZEINBUF = common dso_local global i32 0, align 4
@usbduxfast_ai_interrupt = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"usb_submit_urb error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @usbduxfast_submit_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbduxfast_submit_urb(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usbduxfast_private*, align 8
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %7)
  store %struct.usb_device* %8, %struct.usb_device** %4, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 1
  %11 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %10, align 8
  store %struct.usbduxfast_private* %11, %struct.usbduxfast_private** %5, align 8
  %12 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %5, align 8
  %13 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %16 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %17 = load i32, i32* @BULKINEP, align 4
  %18 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %16, i32 %17)
  %19 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %5, align 8
  %20 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SIZEINBUF, align 4
  %23 = load i32, i32* @usbduxfast_ai_interrupt, align 4
  %24 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %25 = call i32 @usb_fill_bulk_urb(i32 %14, %struct.usb_device* %15, i32 %18, i32 %21, i32 %22, i32 %23, %struct.comedi_device* %24)
  %26 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %5, align 8
  %27 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call i32 @usb_submit_urb(i32 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %1
  %34 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %33
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device*) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, %struct.usb_device*, i32, i32, i32, i32, %struct.comedi_device*) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
