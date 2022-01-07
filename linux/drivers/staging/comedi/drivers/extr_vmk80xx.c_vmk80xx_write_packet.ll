; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_write_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.vmk80xx_private* }
%struct.vmk80xx_private = type { i32*, i64, %struct.usb_endpoint_descriptor* }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.usb_device = type { i32 }

@VMK8061_MODEL = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @vmk80xx_write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmk80xx_write_packet(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmk80xx_private*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %11, align 8
  store %struct.vmk80xx_private* %12, %struct.vmk80xx_private** %6, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %14 = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %13)
  store %struct.usb_device* %14, %struct.usb_device** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %6, align 8
  %17 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %15, i32* %19, align 4
  %20 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %6, align 8
  %21 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VMK8061_MODEL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %27 = call i32 @vmk80xx_do_bulk_msg(%struct.comedi_device* %26)
  store i32 0, i32* %3, align 4
  br label %47

28:                                               ; preds = %2
  %29 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %6, align 8
  %30 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %29, i32 0, i32 2
  %31 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %30, align 8
  store %struct.usb_endpoint_descriptor* %31, %struct.usb_endpoint_descriptor** %8, align 8
  %32 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %33 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %34 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @usb_sndintpipe(%struct.usb_device* %32, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %6, align 8
  %40 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %43 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %42)
  %44 = load i32, i32* @HZ, align 4
  %45 = mul nsw i32 %44, 10
  %46 = call i32 @usb_interrupt_msg(%struct.usb_device* %37, i32 %38, i32* %41, i32 %43, i32* null, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %28, %25
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device*) #1

declare dso_local i32 @vmk80xx_do_bulk_msg(%struct.comedi_device*) #1

declare dso_local i32 @usb_sndintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_interrupt_msg(%struct.usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
