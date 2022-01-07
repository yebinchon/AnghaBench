; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mxuport.c_mxuport_port_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mxuport.c_mxuport_port_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, i32, %struct.usb_serial* }
%struct.usb_serial = type { i32 }
%struct.mxuport_port = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RQ_VENDOR_SET_FIFO_DISABLE = common dso_local global i32 0, align 4
@RQ_VENDOR_SET_HIGH_PERFOR = common dso_local global i32 0, align 4
@RQ_VENDOR_SET_INTERFACE = common dso_local global i32 0, align 4
@MX_INT_RS232 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @mxuport_port_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxuport_port_probe(%struct.usb_serial_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.mxuport_port*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  %7 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %8 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %7, i32 0, i32 2
  %9 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  store %struct.usb_serial* %9, %struct.usb_serial** %4, align 8
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %11 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %10, i32 0, i32 1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mxuport_port* @devm_kzalloc(i32* %11, i32 8, i32 %12)
  store %struct.mxuport_port* %13, %struct.mxuport_port** %5, align 8
  %14 = load %struct.mxuport_port*, %struct.mxuport_port** %5, align 8
  %15 = icmp ne %struct.mxuport_port* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %58

19:                                               ; preds = %1
  %20 = load %struct.mxuport_port*, %struct.mxuport_port** %5, align 8
  %21 = getelementptr inbounds %struct.mxuport_port, %struct.mxuport_port* %20, i32 0, i32 1
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.mxuport_port*, %struct.mxuport_port** %5, align 8
  %24 = getelementptr inbounds %struct.mxuport_port, %struct.mxuport_port* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %27 = load %struct.mxuport_port*, %struct.mxuport_port** %5, align 8
  %28 = call i32 @usb_set_serial_port_data(%struct.usb_serial_port* %26, %struct.mxuport_port* %27)
  %29 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %30 = load i32, i32* @RQ_VENDOR_SET_FIFO_DISABLE, align 4
  %31 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %32 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @mxuport_send_ctrl_urb(%struct.usb_serial* %29, i32 %30, i32 0, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %19
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %58

39:                                               ; preds = %19
  %40 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %41 = load i32, i32* @RQ_VENDOR_SET_HIGH_PERFOR, align 4
  %42 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %43 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @mxuport_send_ctrl_urb(%struct.usb_serial* %40, i32 %41, i32 0, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %58

50:                                               ; preds = %39
  %51 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %52 = load i32, i32* @RQ_VENDOR_SET_INTERFACE, align 4
  %53 = load i32, i32* @MX_INT_RS232, align 4
  %54 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %55 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @mxuport_send_ctrl_urb(%struct.usb_serial* %51, i32 %52, i32 %53, i32 %56)
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %50, %48, %37, %16
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.mxuport_port* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @usb_set_serial_port_data(%struct.usb_serial_port*, %struct.mxuport_port*) #1

declare dso_local i32 @mxuport_send_ctrl_urb(%struct.usb_serial*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
