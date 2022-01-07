; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ti_usb_3410_5052.c_ti_port_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ti_usb_3410_5052.c_ti_port_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.usb_serial_port** }
%struct.ti_port = type { i32, %struct.TYPE_5__*, %struct.usb_serial_port*, i32, i32 }
%struct.TYPE_5__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TI_UART1_BASE_ADDR = common dso_local global i32 0, align 4
@TI_UART2_BASE_ADDR = common dso_local global i32 0, align 4
@closing_wait = common dso_local global i32 0, align 4
@TI_UART_485_RECEIVER_DISABLED = common dso_local global i32 0, align 4
@TI_UART_232 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @ti_port_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_port_probe(%struct.usb_serial_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.ti_port*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.ti_port* @kzalloc(i32 32, i32 %5)
  store %struct.ti_port* %6, %struct.ti_port** %4, align 8
  %7 = load %struct.ti_port*, %struct.ti_port** %4, align 8
  %8 = icmp ne %struct.ti_port* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %70

12:                                               ; preds = %1
  %13 = load %struct.ti_port*, %struct.ti_port** %4, align 8
  %14 = getelementptr inbounds %struct.ti_port, %struct.ti_port* %13, i32 0, i32 4
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %17 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %18 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.usb_serial_port**, %struct.usb_serial_port*** %20, align 8
  %22 = getelementptr inbounds %struct.usb_serial_port*, %struct.usb_serial_port** %21, i64 0
  %23 = load %struct.usb_serial_port*, %struct.usb_serial_port** %22, align 8
  %24 = icmp eq %struct.usb_serial_port* %16, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %12
  %26 = load i32, i32* @TI_UART1_BASE_ADDR, align 4
  %27 = load %struct.ti_port*, %struct.ti_port** %4, align 8
  %28 = getelementptr inbounds %struct.ti_port, %struct.ti_port* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  br label %33

29:                                               ; preds = %12
  %30 = load i32, i32* @TI_UART2_BASE_ADDR, align 4
  %31 = load %struct.ti_port*, %struct.ti_port** %4, align 8
  %32 = getelementptr inbounds %struct.ti_port, %struct.ti_port* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i32, i32* @closing_wait, align 4
  %35 = mul nsw i32 10, %34
  %36 = call i32 @msecs_to_jiffies(i32 %35)
  %37 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %38 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %41 = load %struct.ti_port*, %struct.ti_port** %4, align 8
  %42 = getelementptr inbounds %struct.ti_port, %struct.ti_port* %41, i32 0, i32 2
  store %struct.usb_serial_port* %40, %struct.usb_serial_port** %42, align 8
  %43 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %44 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = call %struct.TYPE_5__* @usb_get_serial_data(%struct.TYPE_6__* %45)
  %47 = load %struct.ti_port*, %struct.ti_port** %4, align 8
  %48 = getelementptr inbounds %struct.ti_port, %struct.ti_port* %47, i32 0, i32 1
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %48, align 8
  %49 = load %struct.ti_port*, %struct.ti_port** %4, align 8
  %50 = getelementptr inbounds %struct.ti_port, %struct.ti_port* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %33
  %56 = load i32, i32* @TI_UART_485_RECEIVER_DISABLED, align 4
  %57 = load %struct.ti_port*, %struct.ti_port** %4, align 8
  %58 = getelementptr inbounds %struct.ti_port, %struct.ti_port* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %63

59:                                               ; preds = %33
  %60 = load i32, i32* @TI_UART_232, align 4
  %61 = load %struct.ti_port*, %struct.ti_port** %4, align 8
  %62 = getelementptr inbounds %struct.ti_port, %struct.ti_port* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %59, %55
  %64 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %65 = load %struct.ti_port*, %struct.ti_port** %4, align 8
  %66 = call i32 @usb_set_serial_port_data(%struct.usb_serial_port* %64, %struct.ti_port* %65)
  %67 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %68 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 3, i32* %69, align 8
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %63, %9
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.ti_port* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local %struct.TYPE_5__* @usb_get_serial_data(%struct.TYPE_6__*) #1

declare dso_local i32 @usb_set_serial_port_data(%struct.usb_serial_port*, %struct.ti_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
