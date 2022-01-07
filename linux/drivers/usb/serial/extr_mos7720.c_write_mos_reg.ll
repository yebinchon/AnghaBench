; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7720.c_write_mos_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7720.c_write_mos_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@MOS_WDR_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"mos7720: usb_control_msg() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, i32, i32, i64)* @write_mos_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_mos_reg(%struct.usb_serial* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.usb_serial*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %16 = load %struct.usb_serial*, %struct.usb_serial** %5, align 8
  %17 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %16, i32 0, i32 0
  %18 = load %struct.usb_device*, %struct.usb_device** %17, align 8
  store %struct.usb_device* %18, %struct.usb_device** %9, align 8
  %19 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %20 = call i32 @usb_sndctrlpipe(%struct.usb_device* %19, i32 0)
  store i32 %20, i32* %10, align 4
  store i64 14, i64* %11, align 8
  store i64 64, i64* %12, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @get_reg_index(i32 %21)
  store i64 %22, i64* %13, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @get_reg_value(i32 %23, i32 %24)
  %26 = load i64, i64* %8, align 8
  %27 = add nsw i64 %25, %26
  store i64 %27, i64* %14, align 8
  %28 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i32, i32* @MOS_WDR_TIMEOUT, align 4
  %35 = call i32 @usb_control_msg(%struct.usb_device* %28, i32 %29, i64 %30, i64 %31, i64 %32, i64 %33, i32* null, i32 0, i32 %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %4
  %39 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %40 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %39, i32 0, i32 0
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %38, %4
  %44 = load i32, i32* %15, align 4
  ret i32 %44
}

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i64 @get_reg_index(i32) #1

declare dso_local i64 @get_reg_value(i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i64, i64, i64, i64, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
