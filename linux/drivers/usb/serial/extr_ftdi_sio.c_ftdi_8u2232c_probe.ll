; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ftdi_sio.c_ftdi_8u2232c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ftdi_sio.c_ftdi_8u2232c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.usb_device* }
%struct.usb_device = type { i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"CALAO Systems\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Arrow USB Blaster\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"BeagleBone/XDS100V2\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"SNAP Connect E10\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*)* @ftdi_8u2232c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_8u2232c_probe(%struct.usb_serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca %struct.usb_device*, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %3, align 8
  %5 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %6 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %5, i32 0, i32 0
  %7 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  store %struct.usb_device* %7, %struct.usb_device** %4, align 8
  %8 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %9 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @strcmp(i64 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %20 = call i32 @ftdi_jtag_probe(%struct.usb_serial* %19)
  store i32 %20, i32* %2, align 4
  br label %48

21:                                               ; preds = %12, %1
  %22 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %21
  %27 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %28 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @strcmp(i64 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %34 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @strcmp(i64 %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %40 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @strcmp(i64 %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38, %32, %26
  %45 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %46 = call i32 @ftdi_jtag_probe(%struct.usb_serial* %45)
  store i32 %46, i32* %2, align 4
  br label %48

47:                                               ; preds = %38, %21
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %44, %18
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i32 @ftdi_jtag_probe(%struct.usb_serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
