; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_cp210x.c_cp210x_port_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_cp210x.c_cp210x_port_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.usb_serial* }
%struct.usb_serial = type { i32 }
%struct.cp210x_port_private = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @cp210x_port_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp210x_port_probe(%struct.usb_serial_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.cp210x_port_private*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  %7 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %8 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %7, i32 0, i32 0
  %9 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  store %struct.usb_serial* %9, %struct.usb_serial** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.cp210x_port_private* @kzalloc(i32 4, i32 %10)
  store %struct.cp210x_port_private* %11, %struct.cp210x_port_private** %5, align 8
  %12 = load %struct.cp210x_port_private*, %struct.cp210x_port_private** %5, align 8
  %13 = icmp ne %struct.cp210x_port_private* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %34

17:                                               ; preds = %1
  %18 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %19 = call i32 @cp210x_interface_num(%struct.usb_serial* %18)
  %20 = load %struct.cp210x_port_private*, %struct.cp210x_port_private** %5, align 8
  %21 = getelementptr inbounds %struct.cp210x_port_private, %struct.cp210x_port_private* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %23 = load %struct.cp210x_port_private*, %struct.cp210x_port_private** %5, align 8
  %24 = call i32 @usb_set_serial_port_data(%struct.usb_serial_port* %22, %struct.cp210x_port_private* %23)
  %25 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %26 = call i32 @cp210x_detect_swapped_line_ctl(%struct.usb_serial_port* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %17
  %30 = load %struct.cp210x_port_private*, %struct.cp210x_port_private** %5, align 8
  %31 = call i32 @kfree(%struct.cp210x_port_private* %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %34

33:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %29, %14
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.cp210x_port_private* @kzalloc(i32, i32) #1

declare dso_local i32 @cp210x_interface_num(%struct.usb_serial*) #1

declare dso_local i32 @usb_set_serial_port_data(%struct.usb_serial_port*, %struct.cp210x_port_private*) #1

declare dso_local i32 @cp210x_detect_swapped_line_ctl(%struct.usb_serial_port*) #1

declare dso_local i32 @kfree(%struct.cp210x_port_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
