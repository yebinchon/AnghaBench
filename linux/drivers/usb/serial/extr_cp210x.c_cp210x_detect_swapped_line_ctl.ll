; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_cp210x.c_cp210x_detect_swapped_line_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_cp210x.c_cp210x_detect_swapped_line_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.cp210x_port_private = type { i32 }

@CP210X_GET_LINE_CTL = common dso_local global i32 0, align 4
@CP210X_SET_LINE_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @cp210x_detect_swapped_line_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp210x_detect_swapped_line_ctl(%struct.usb_serial_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.cp210x_port_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %9 = call %struct.cp210x_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %8)
  store %struct.cp210x_port_private* %9, %struct.cp210x_port_private** %4, align 8
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %11 = load i32, i32* @CP210X_GET_LINE_CTL, align 4
  %12 = call i32 @cp210x_read_u16_reg(%struct.usb_serial_port* %10, i32 %11, i32* %5)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %2, align 4
  br label %46

17:                                               ; preds = %1
  %18 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %19 = load i32, i32* @CP210X_SET_LINE_CTL, align 4
  %20 = call i32 @cp210x_write_u16_reg(%struct.usb_serial_port* %18, i32 %19, i32 2048)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %46

25:                                               ; preds = %17
  %26 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %27 = load i32, i32* @CP210X_GET_LINE_CTL, align 4
  %28 = call i32 @cp210x_read_u16_reg(%struct.usb_serial_port* %26, i32 %27, i32* %6)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %46

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 8
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.cp210x_port_private*, %struct.cp210x_port_private** %4, align 8
  %38 = getelementptr inbounds %struct.cp210x_port_private, %struct.cp210x_port_private* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @swab16(i32 %39)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %36, %33
  %42 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %43 = load i32, i32* @CP210X_SET_LINE_CTL, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @cp210x_write_u16_reg(%struct.usb_serial_port* %42, i32 %43, i32 %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %41, %31, %23, %15
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.cp210x_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @cp210x_read_u16_reg(%struct.usb_serial_port*, i32, i32*) #1

declare dso_local i32 @cp210x_write_u16_reg(%struct.usb_serial_port*, i32, i32) #1

declare dso_local i32 @swab16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
