; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7720.c_mos77xx_calc_num_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7720.c_mos77xx_calc_num_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.usb_serial_endpoints = type { i32*, i32* }

@MOSCHIP_DEVICE_ID_7715 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, %struct.usb_serial_endpoints*)* @mos77xx_calc_num_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mos77xx_calc_num_ports(%struct.usb_serial* %0, %struct.usb_serial_endpoints* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.usb_serial_endpoints*, align 8
  %6 = alloca i64, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %4, align 8
  store %struct.usb_serial_endpoints* %1, %struct.usb_serial_endpoints** %5, align 8
  %7 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %8 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @le16_to_cpu(i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @MOSCHIP_DEVICE_ID_7715, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %2
  %18 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %19 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %24 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @swap(i32 %22, i32 %27)
  %29 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %30 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %35 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @swap(i32 %33, i32 %38)
  store i32 1, i32* %3, align 4
  br label %41

40:                                               ; preds = %2
  store i32 2, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %17
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @swap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
