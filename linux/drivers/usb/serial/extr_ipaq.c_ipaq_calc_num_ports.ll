; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ipaq.c_ipaq_calc_num_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ipaq.c_ipaq_calc_num_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32 }
%struct.usb_serial_endpoints = type { i32, i32, i32*, i32* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, %struct.usb_serial_endpoints*)* @ipaq_calc_num_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipaq_calc_num_ports(%struct.usb_serial* %0, %struct.usb_serial_endpoints* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.usb_serial_endpoints*, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %4, align 8
  store %struct.usb_serial_endpoints* %1, %struct.usb_serial_endpoints** %5, align 8
  %6 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %7 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %12 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10, %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %52

18:                                               ; preds = %10
  %19 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %20 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %47

23:                                               ; preds = %18
  %24 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %25 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %47

28:                                               ; preds = %23
  %29 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %30 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %35 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %39 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %44 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %42, i32* %46, align 4
  br label %47

47:                                               ; preds = %28, %23, %18
  %48 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %49 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %51 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  store i32 1, i32* %3, align 4
  br label %52

52:                                               ; preds = %47, %15
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
