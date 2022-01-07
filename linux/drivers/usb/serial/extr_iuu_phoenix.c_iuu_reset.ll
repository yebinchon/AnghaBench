; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_iuu_phoenix.c_iuu_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_iuu_phoenix.c_iuu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32 }
%struct.iuu_private = type { i64 }

@IUU_RST_SET = common dso_local global i32 0, align 4
@IUU_DELAY_MS = common dso_local global i32 0, align 4
@IUU_RST_CLEAR = common dso_local global i8 0, align 1
@iuu_rxcmd = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*, i32)* @iuu_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iuu_reset(%struct.usb_serial_port* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iuu_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %9 = call %struct.iuu_private* @usb_get_serial_port_data(%struct.usb_serial_port* %8)
  store %struct.iuu_private* %9, %struct.iuu_private** %5, align 8
  %10 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %11 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %7, align 8
  %15 = load i32, i32* @IUU_RST_SET, align 4
  %16 = trunc i32 %15 to i8
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %7, align 8
  store i8 %16, i8* %17, align 1
  %19 = load i32, i32* @IUU_DELAY_MS, align 4
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %7, align 8
  store i8 %20, i8* %21, align 1
  %23 = load i32, i32* %4, align 4
  %24 = trunc i32 %23 to i8
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %7, align 8
  store i8 %24, i8* %25, align 1
  %27 = load i8, i8* @IUU_RST_CLEAR, align 1
  %28 = load i8*, i8** %7, align 8
  store i8 %27, i8* %28, align 1
  %29 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %30 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %33 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %38 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %43 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @usb_sndbulkpipe(i32 %41, i32 %44)
  %46 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %47 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* @iuu_rxcmd, align 4
  %52 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %53 = call i32 @usb_fill_bulk_urb(%struct.TYPE_5__* %31, i32 %36, i32 %45, i8* %50, i32 4, i32 %51, %struct.usb_serial_port* %52)
  %54 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %55 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i32, i32* @GFP_ATOMIC, align 4
  %58 = call i32 @usb_submit_urb(%struct.TYPE_5__* %56, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.iuu_private*, %struct.iuu_private** %5, align 8
  %60 = getelementptr inbounds %struct.iuu_private, %struct.iuu_private* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.iuu_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_5__*, i32, i32, i8*, i32, i32, %struct.usb_serial_port*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
