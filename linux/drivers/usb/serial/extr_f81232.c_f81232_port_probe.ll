; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_f81232.c_f81232_port_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_f81232.c_f81232_port_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.f81232_private = type { %struct.usb_serial_port*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@f81232_interrupt_work = common dso_local global i32 0, align 4
@f81232_lsr_worker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @f81232_port_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f81232_port_probe(%struct.usb_serial_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.f81232_private*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.f81232_private* @kzalloc(i32 24, i32 %5)
  store %struct.f81232_private* %6, %struct.f81232_private** %4, align 8
  %7 = load %struct.f81232_private*, %struct.f81232_private** %4, align 8
  %8 = icmp ne %struct.f81232_private* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %33

12:                                               ; preds = %1
  %13 = load %struct.f81232_private*, %struct.f81232_private** %4, align 8
  %14 = getelementptr inbounds %struct.f81232_private, %struct.f81232_private* %13, i32 0, i32 3
  %15 = call i32 @mutex_init(i32* %14)
  %16 = load %struct.f81232_private*, %struct.f81232_private** %4, align 8
  %17 = getelementptr inbounds %struct.f81232_private, %struct.f81232_private* %16, i32 0, i32 2
  %18 = load i32, i32* @f81232_interrupt_work, align 4
  %19 = call i32 @INIT_WORK(i32* %17, i32 %18)
  %20 = load %struct.f81232_private*, %struct.f81232_private** %4, align 8
  %21 = getelementptr inbounds %struct.f81232_private, %struct.f81232_private* %20, i32 0, i32 1
  %22 = load i32, i32* @f81232_lsr_worker, align 4
  %23 = call i32 @INIT_WORK(i32* %21, i32 %22)
  %24 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %25 = load %struct.f81232_private*, %struct.f81232_private** %4, align 8
  %26 = call i32 @usb_set_serial_port_data(%struct.usb_serial_port* %24, %struct.f81232_private* %25)
  %27 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %28 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 256, i32* %29, align 4
  %30 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %31 = load %struct.f81232_private*, %struct.f81232_private** %4, align 8
  %32 = getelementptr inbounds %struct.f81232_private, %struct.f81232_private* %31, i32 0, i32 0
  store %struct.usb_serial_port* %30, %struct.usb_serial_port** %32, align 8
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %12, %9
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.f81232_private* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @usb_set_serial_port_data(%struct.usb_serial_port*, %struct.f81232_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
