; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb_wwan.c_usb_wwan_tiocmset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb_wwan.c_usb_wwan_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32 }
%struct.usb_wwan_port_private = type { i32, i32 }
%struct.usb_wwan_intf_private = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_wwan_tiocmset(%struct.tty_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_serial_port*, align 8
  %9 = alloca %struct.usb_wwan_port_private*, align 8
  %10 = alloca %struct.usb_wwan_intf_private*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 0
  %13 = load %struct.usb_serial_port*, %struct.usb_serial_port** %12, align 8
  store %struct.usb_serial_port* %13, %struct.usb_serial_port** %8, align 8
  %14 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  %15 = call %struct.usb_wwan_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %14)
  store %struct.usb_wwan_port_private* %15, %struct.usb_wwan_port_private** %9, align 8
  %16 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  %17 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.usb_wwan_intf_private* @usb_get_serial_data(i32 %18)
  store %struct.usb_wwan_intf_private* %19, %struct.usb_wwan_intf_private** %10, align 8
  %20 = load %struct.usb_wwan_intf_private*, %struct.usb_wwan_intf_private** %10, align 8
  %21 = getelementptr inbounds %struct.usb_wwan_intf_private, %struct.usb_wwan_intf_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %62

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @TIOCM_RTS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %9, align 8
  %34 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @TIOCM_DTR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %9, align 8
  %42 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @TIOCM_RTS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %9, align 8
  %50 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @TIOCM_DTR, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %9, align 8
  %58 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.usb_serial_port*, %struct.usb_serial_port** %8, align 8
  %61 = call i32 @usb_wwan_send_setup(%struct.usb_serial_port* %60)
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %59, %24
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.usb_wwan_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local %struct.usb_wwan_intf_private* @usb_get_serial_data(i32) #1

declare dso_local i32 @usb_wwan_send_setup(%struct.usb_serial_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
