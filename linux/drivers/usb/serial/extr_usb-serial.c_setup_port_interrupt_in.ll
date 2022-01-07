; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_setup_port_interrupt_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb-serial.c_setup_port_interrupt_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_device*, %struct.usb_serial_driver* }
%struct.usb_device = type { i32 }
%struct.usb_serial_driver = type { i32 }
%struct.usb_endpoint_descriptor = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*, %struct.usb_endpoint_descriptor*)* @setup_port_interrupt_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_port_interrupt_in(%struct.usb_serial_port* %0, %struct.usb_endpoint_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.usb_serial_driver*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %4, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %5, align 8
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %10 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %12, align 8
  store %struct.usb_serial_driver* %13, %struct.usb_serial_driver** %6, align 8
  %14 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %15 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.usb_device*, %struct.usb_device** %17, align 8
  store %struct.usb_device* %18, %struct.usb_device** %7, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @usb_alloc_urb(i32 0, i32 %19)
  %21 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %22 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %24 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %72

30:                                               ; preds = %2
  %31 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %32 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %34 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %37 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32 @kmalloc(i32 %38, i32 %39)
  %41 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %42 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %44 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %30
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %72

50:                                               ; preds = %30
  %51 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %52 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %55 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %56 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %57 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @usb_rcvintpipe(%struct.usb_device* %55, i32 %58)
  %60 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %61 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.usb_serial_driver*, %struct.usb_serial_driver** %6, align 8
  %65 = getelementptr inbounds %struct.usb_serial_driver, %struct.usb_serial_driver* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %68 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %69 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @usb_fill_int_urb(i32 %53, %struct.usb_device* %54, i32 %59, i32 %62, i32 %63, i32 %66, %struct.usb_serial_port* %67, i32 %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %50, %47, %27
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(i32, %struct.usb_device*, i32, i32, i32, i32, %struct.usb_serial_port*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
