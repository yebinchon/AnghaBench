; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_ledtrig-usbport.c_usbport_trig_add_usb_dev_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_ledtrig-usbport.c_usbport_trig_add_usb_dev_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, i32 }
%struct.usbport_trig_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i8*)* @usbport_trig_add_usb_dev_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbport_trig_add_usb_dev_ports(%struct.usb_device* %0, i8* %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.usbport_trig_data*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.usbport_trig_data*
  store %struct.usbport_trig_data* %8, %struct.usbport_trig_data** %5, align 8
  store i32 1, i32* %6, align 4
  br label %9

9:                                                ; preds = %23, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %12 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sle i32 %10, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load %struct.usbport_trig_data*, %struct.usbport_trig_data** %5, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %18 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 1
  %20 = call i32 @dev_name(i32* %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @usbport_trig_add_port(%struct.usbport_trig_data* %16, %struct.usb_device* %17, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %9

26:                                               ; preds = %9
  ret i32 0
}

declare dso_local i32 @usbport_trig_add_port(%struct.usbport_trig_data*, %struct.usb_device*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
