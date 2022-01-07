; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ch341.c_ch341_port_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ch341.c_ch341_port_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ch341_private = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEFAULT_BAUD_RATE = common dso_local global i32 0, align 4
@CH341_LCR_ENABLE_RX = common dso_local global i32 0, align 4
@CH341_LCR_ENABLE_TX = common dso_local global i32 0, align 4
@CH341_LCR_CS8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @ch341_port_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch341_port_probe(%struct.usb_serial_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.ch341_private*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.ch341_private* @kzalloc(i32 12, i32 %6)
  store %struct.ch341_private* %7, %struct.ch341_private** %4, align 8
  %8 = load %struct.ch341_private*, %struct.ch341_private** %4, align 8
  %9 = icmp ne %struct.ch341_private* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %45

13:                                               ; preds = %1
  %14 = load %struct.ch341_private*, %struct.ch341_private** %4, align 8
  %15 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %14, i32 0, i32 2
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load i32, i32* @DEFAULT_BAUD_RATE, align 4
  %18 = load %struct.ch341_private*, %struct.ch341_private** %4, align 8
  %19 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @CH341_LCR_ENABLE_RX, align 4
  %21 = load i32, i32* @CH341_LCR_ENABLE_TX, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @CH341_LCR_CS8, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.ch341_private*, %struct.ch341_private** %4, align 8
  %26 = getelementptr inbounds %struct.ch341_private, %struct.ch341_private* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %28 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ch341_private*, %struct.ch341_private** %4, align 8
  %33 = call i32 @ch341_configure(i32 %31, %struct.ch341_private* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %13
  br label %41

37:                                               ; preds = %13
  %38 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %39 = load %struct.ch341_private*, %struct.ch341_private** %4, align 8
  %40 = call i32 @usb_set_serial_port_data(%struct.usb_serial_port* %38, %struct.ch341_private* %39)
  store i32 0, i32* %2, align 4
  br label %45

41:                                               ; preds = %36
  %42 = load %struct.ch341_private*, %struct.ch341_private** %4, align 8
  %43 = call i32 @kfree(%struct.ch341_private* %42)
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %37, %10
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.ch341_private* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ch341_configure(i32, %struct.ch341_private*) #1

declare dso_local i32 @usb_set_serial_port_data(%struct.usb_serial_port*, %struct.ch341_private*) #1

declare dso_local i32 @kfree(%struct.ch341_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
