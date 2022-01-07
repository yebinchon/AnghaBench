; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_ti.c_edge_calc_num_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_ti.c_edge_calc_num_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.device }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.device = type { i32 }
%struct.TYPE_5__ = type { i8 }
%struct.usb_serial_endpoints = type { i8, i8, i32 }

@.str = private unnamed_addr constant [28 x i8] c"required endpoints missing\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, %struct.usb_serial_endpoints*)* @edge_calc_num_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edge_calc_num_ports(%struct.usb_serial* %0, %struct.usb_serial_endpoints* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.usb_serial_endpoints*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8, align 1
  store %struct.usb_serial* %0, %struct.usb_serial** %4, align 8
  store %struct.usb_serial_endpoints* %1, %struct.usb_serial_endpoints** %5, align 8
  %8 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %9 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %13 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %7, align 1
  %17 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %18 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %53

26:                                               ; preds = %2
  %27 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %28 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %27, i32 0, i32 0
  %29 = load i8, i8* %28, align 4
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* %7, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %47, label %34

34:                                               ; preds = %26
  %35 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %36 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %35, i32 0, i32 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* %7, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %34
  %43 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %44 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %47, label %52

47:                                               ; preds = %42, %34, %26
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %56

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %2
  %54 = load i8, i8* %7, align 1
  %55 = zext i8 %54 to i32
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %47
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
