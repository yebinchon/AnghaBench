; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_iuu_phoenix.c_iuu_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_iuu_phoenix.c_iuu_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@IUU_GET_STATE_REGISTER = common dso_local global i32 0, align 4
@iuu_status_callback = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @iuu_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iuu_status(%struct.usb_serial_port* %0) #0 {
  %2 = alloca %struct.usb_serial_port*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %2, align 8
  %4 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %5 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %4, i32 0, i32 0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IUU_GET_STATE_REGISTER, align 4
  %10 = call i32 @memset(i32 %8, i32 %9, i32 1)
  %11 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %12 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %15 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %20 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %25 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @usb_sndbulkpipe(i32 %23, i32 %26)
  %28 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %29 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @iuu_status_callback, align 4
  %34 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %35 = call i32 @usb_fill_bulk_urb(%struct.TYPE_5__* %13, i32 %18, i32 %27, i32 %32, i32 1, i32 %33, %struct.usb_serial_port* %34)
  %36 = load %struct.usb_serial_port*, %struct.usb_serial_port** %2, align 8
  %37 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i32, i32* @GFP_ATOMIC, align 4
  %40 = call i32 @usb_submit_urb(%struct.TYPE_5__* %38, i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_5__*, i32, i32, i32, i32, i32, %struct.usb_serial_port*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
