; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mxuport.c_mxuport_calc_num_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mxuport.c_mxuport_calc_num_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_serial_endpoints = type { i32, i32* }

@MX_UPORT_2_PORT = common dso_local global i64 0, align 8
@MX_UPORT_4_PORT = common dso_local global i64 0, align 8
@MX_UPORT_8_PORT = common dso_local global i64 0, align 8
@MX_UPORT_16_PORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"unknown device, assuming two ports\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, %struct.usb_serial_endpoints*)* @mxuport_calc_num_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxuport_calc_num_ports(%struct.usb_serial* %0, %struct.usb_serial_endpoints* %1) #0 {
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca %struct.usb_serial_endpoints*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %3, align 8
  store %struct.usb_serial_endpoints* %1, %struct.usb_serial_endpoints** %4, align 8
  %8 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %9 = call i64 @usb_get_serial_data(%struct.usb_serial* %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @MX_UPORT_2_PORT, align 8
  %12 = and i64 %10, %11
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 2, i32* %6, align 4
  br label %42

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @MX_UPORT_4_PORT, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 4, i32* %6, align 4
  br label %41

21:                                               ; preds = %15
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @MX_UPORT_8_PORT, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 8, i32* %6, align 4
  br label %40

27:                                               ; preds = %21
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @MX_UPORT_16_PORT, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 16, i32* %6, align 4
  br label %39

33:                                               ; preds = %27
  %34 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %35 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @dev_warn(i32* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 2, i32* %6, align 4
  br label %39

39:                                               ; preds = %33, %32
  br label %40

40:                                               ; preds = %39, %26
  br label %41

41:                                               ; preds = %40, %20
  br label %42

42:                                               ; preds = %41, %14
  %43 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %4, align 8
  %44 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @ARRAY_SIZE(i32* %45)
  %47 = icmp slt i32 %46, 16
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUILD_BUG_ON(i32 %48)
  store i32 1, i32* %7, align 4
  br label %50

50:                                               ; preds = %66, %42
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %4, align 8
  %56 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %4, align 8
  %61 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  br label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %50

69:                                               ; preds = %50
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %4, align 8
  %72 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i64 @usb_get_serial_data(%struct.usb_serial*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
