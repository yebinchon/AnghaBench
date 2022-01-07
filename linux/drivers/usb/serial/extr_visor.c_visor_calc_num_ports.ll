; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_visor.c_visor_calc_num_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_visor.c_visor_calc_num_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.usb_serial_endpoints = type { i32, i32, i32*, i32* }

@HANDSPRING_VENDOR_ID = common dso_local global i32 0, align 4
@KYOCERA_VENDOR_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"missing endpoints\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, %struct.usb_serial_endpoints*)* @visor_calc_num_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @visor_calc_num_ports(%struct.usb_serial* %0, %struct.usb_serial_endpoints* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.usb_serial_endpoints*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %4, align 8
  store %struct.usb_serial_endpoints* %1, %struct.usb_serial_endpoints** %5, align 8
  %8 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %9 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le16_to_cpu(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %16 = call i64 @usb_get_serial_data(%struct.usb_serial* %15)
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %22 = call i32 @usb_set_serial_data(%struct.usb_serial* %21, i32* null)
  br label %23

23:                                               ; preds = %20, %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @HANDSPRING_VENDOR_ID, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @KYOCERA_VENDOR_ID, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27, %23
  %32 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %33 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %27
  br label %78

37:                                               ; preds = %31
  %38 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %39 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %44 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %55

47:                                               ; preds = %42, %37
  %48 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %49 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %80

55:                                               ; preds = %42
  %56 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %57 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %62 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @swap(i32 %60, i32 %65)
  %67 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %68 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.usb_serial_endpoints*, %struct.usb_serial_endpoints** %5, align 8
  %73 = getelementptr inbounds %struct.usb_serial_endpoints, %struct.usb_serial_endpoints* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @swap(i32 %71, i32 %76)
  br label %78

78:                                               ; preds = %55, %36
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %47
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @usb_get_serial_data(%struct.usb_serial*) #1

declare dso_local i32 @usb_set_serial_data(%struct.usb_serial*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @swap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
