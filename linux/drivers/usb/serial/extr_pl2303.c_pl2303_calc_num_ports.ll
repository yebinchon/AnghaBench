; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_pl2303.c_pl2303_calc_num_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_pl2303.c_pl2303_calc_num_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.usb_serial_endpoints = type { i32 }

@PL2303_QUIRK_ENDPOINT_HACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"required interrupt-in endpoint missing\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, %struct.usb_serial_endpoints*)* @pl2303_calc_num_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl2303_calc_num_ports(%struct.usb_serial* %0, %struct.usb_serial_endpoints* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.usb_serial_endpoints*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %4, align 8
  store %struct.usb_serial_endpoints* %1, %struct.usb_serial_endpoints** %5, align 8
  %9 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %10 = call i64 @usb_get_serial_data(%struct.usb_serial* %9)
  store i64 %10, i64* %6, align 8
  %11 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %12 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @PL2303_QUIRK_ENDPOINT_HACK, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %21 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %22 = call i32 @pl2303_endpoint_hack(%struct.usb_serial* %20, %struct.usb_serial_endpoints* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %39

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %30 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.device*, %struct.device** %7, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %33, %25
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @usb_get_serial_data(%struct.usb_serial*) #1

declare dso_local i32 @pl2303_endpoint_hack(%struct.usb_serial*, %struct.usb_serial_endpoints*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
