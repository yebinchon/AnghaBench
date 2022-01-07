; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_do_bulk_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_vmk80xx.c_vmk80xx_do_bulk_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.vmk80xx_private* }
%struct.vmk80xx_private = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.usb_device = type { i32 }

@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @vmk80xx_do_bulk_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmk80xx_do_bulk_msg(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.vmk80xx_private*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %11, align 8
  store %struct.vmk80xx_private* %12, %struct.vmk80xx_private** %3, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %14 = call %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device* %13)
  store %struct.usb_device* %14, %struct.usb_device** %4, align 8
  %15 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %3, align 8
  %16 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %3, align 8
  %21 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %20, i32 0, i32 3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @usb_sndbulkpipe(%struct.usb_device* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %3, align 8
  %32 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = call i64 @usb_endpoint_maxp(%struct.TYPE_4__* %33)
  store i64 %34, i64* %9, align 8
  %35 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %3, align 8
  %38 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %3, align 8
  %42 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @usb_bulk_msg(%struct.usb_device* %35, i32 %36, i32 %39, i64 %40, i32* null, i32 %45)
  %47 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.vmk80xx_private*, %struct.vmk80xx_private** %3, align 8
  %50 = getelementptr inbounds %struct.vmk80xx_private, %struct.vmk80xx_private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i32, i32* @HZ, align 4
  %54 = mul nsw i32 %53, 10
  %55 = call i32 @usb_bulk_msg(%struct.usb_device* %47, i32 %48, i32 %51, i64 %52, i32* null, i32 %54)
  ret void
}

declare dso_local %struct.usb_device* @comedi_to_usb_dev(%struct.comedi_device*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i64 @usb_endpoint_maxp(%struct.TYPE_4__*) #1

declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
