; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_setup_port_interrupt_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_setup_port_interrupt_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_device*, %struct.usb_serial_driver* }
%struct.usb_device = type { i32 }
%struct.usb_serial_driver = type { i32 }
%struct.usb_endpoint_descriptor = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*, %struct.usb_endpoint_descriptor*)* @setup_port_interrupt_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_port_interrupt_out(%struct.usb_serial_port* %0, %struct.usb_endpoint_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.usb_serial_driver*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %4, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %5, align 8
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %10 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %9, i32 0, i32 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %12, align 8
  store %struct.usb_serial_driver* %13, %struct.usb_serial_driver** %6, align 8
  %14 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %15 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %14, i32 0, i32 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.usb_device*, %struct.usb_device** %17, align 8
  store %struct.usb_device* %18, %struct.usb_device** %7, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @usb_alloc_urb(i32 0, i32 %19)
  %21 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %22 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %24 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %75

30:                                               ; preds = %2
  %31 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %32 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %35 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %37 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %40 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i32 @kmalloc(i32 %41, i32 %42)
  %44 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %45 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %47 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %30
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %75

53:                                               ; preds = %30
  %54 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %55 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %58 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %59 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %60 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @usb_sndintpipe(%struct.usb_device* %58, i32 %61)
  %63 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %64 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %6, align 8
  %68 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %71 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %72 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @usb_fill_int_urb(i32 %56, %struct.usb_device* %57, i32 %62, i32 %65, i32 %66, i32 %69, %struct.usb_serial_port* %70, i32 %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %53, %50, %27
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(i32, %struct.usb_device*, i32, i32, i32, i32, %struct.usb_serial_port*, i32) #1

declare dso_local i32 @usb_sndintpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
