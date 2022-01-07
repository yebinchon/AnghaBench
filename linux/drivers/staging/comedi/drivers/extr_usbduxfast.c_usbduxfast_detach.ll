; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxfast.c_usbduxfast_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxfast.c_usbduxfast_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbduxfast_private* }
%struct.usbduxfast_private = type { i32, i32, i64, i32 }
%struct.usb_interface = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @usbduxfast_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbduxfast_detach(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usbduxfast_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = call %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device* %5)
  store %struct.usb_interface* %6, %struct.usb_interface** %3, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 0
  %9 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %8, align 8
  store %struct.usbduxfast_private* %9, %struct.usbduxfast_private** %4, align 8
  %10 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %4, align 8
  %11 = icmp ne %struct.usbduxfast_private* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %47

13:                                               ; preds = %1
  %14 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %4, align 8
  %15 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %18 = call i32 @usb_set_intfdata(%struct.usb_interface* %17, i32* null)
  %19 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %4, align 8
  %20 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %13
  %24 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %4, align 8
  %25 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @usb_kill_urb(i64 %26)
  %28 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %4, align 8
  %29 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @kfree(i32 %30)
  %32 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %4, align 8
  %33 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @usb_free_urb(i64 %34)
  br label %36

36:                                               ; preds = %23, %13
  %37 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %4, align 8
  %38 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @kfree(i32 %39)
  %41 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %4, align 8
  %42 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %4, align 8
  %45 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %44, i32 0, i32 0
  %46 = call i32 @mutex_destroy(i32* %45)
  br label %47

47:                                               ; preds = %36, %12
  ret void
}

declare dso_local %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_kill_urb(i64) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @usb_free_urb(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
