; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.usbdux_private* }
%struct.usbdux_private = type { i32 }
%struct.usb_interface = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @usbdux_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbdux_detach(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usbdux_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = call %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device* %5)
  store %struct.usb_interface* %6, %struct.usb_interface** %3, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 0
  %9 = load %struct.usbdux_private*, %struct.usbdux_private** %8, align 8
  store %struct.usbdux_private* %9, %struct.usbdux_private** %4, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %11 = call i32 @usb_set_intfdata(%struct.usb_interface* %10, i32* null)
  %12 = load %struct.usbdux_private*, %struct.usbdux_private** %4, align 8
  %13 = icmp ne %struct.usbdux_private* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %33

15:                                               ; preds = %1
  %16 = load %struct.usbdux_private*, %struct.usbdux_private** %4, align 8
  %17 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %20 = call i32 @usbdux_pwm_stop(%struct.comedi_device* %19, i32 1)
  %21 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %22 = call i32 @usbdux_ao_stop(%struct.comedi_device* %21, i32 1)
  %23 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %24 = call i32 @usbdux_ai_stop(%struct.comedi_device* %23, i32 1)
  %25 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %26 = call i32 @usbdux_free_usb_buffers(%struct.comedi_device* %25)
  %27 = load %struct.usbdux_private*, %struct.usbdux_private** %4, align 8
  %28 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load %struct.usbdux_private*, %struct.usbdux_private** %4, align 8
  %31 = getelementptr inbounds %struct.usbdux_private, %struct.usbdux_private* %30, i32 0, i32 0
  %32 = call i32 @mutex_destroy(i32* %31)
  br label %33

33:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.usb_interface* @comedi_to_usb_interface(%struct.comedi_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usbdux_pwm_stop(%struct.comedi_device*, i32) #1

declare dso_local i32 @usbdux_ao_stop(%struct.comedi_device*, i32) #1

declare dso_local i32 @usbdux_ai_stop(%struct.comedi_device*, i32) #1

declare dso_local i32 @usbdux_free_usb_buffers(%struct.comedi_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
