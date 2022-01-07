; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500usb.c_rt2500usb_regbusy_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500usb.c_rt2500usb_regbusy_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rt2x00_field16 = type { i32 }

@REGISTER_USB_BUSY_COUNT = common dso_local global i32 0, align 4
@REGISTER_BUSY_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Indirect register access failed: offset=0x%.08x, value=0x%.08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, i32, i32, i32*)* @rt2500usb_regbusy_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2500usb_regbusy_read(%struct.rt2x00_dev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rt2x00_field16, align 4
  %7 = alloca %struct.rt2x00_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.rt2x00_field16, %struct.rt2x00_field16* %6, i32 0, i32 0
  store i32 %2, i32* %11, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %31, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @REGISTER_USB_BUSY_COUNT, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @rt2500usb_register_read_lock(%struct.rt2x00_dev* %17, i32 %18)
  %20 = load i32*, i32** %9, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.rt2x00_field16, %struct.rt2x00_field16* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @rt2x00_get_field16(i32 %22, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  br label %41

28:                                               ; preds = %16
  %29 = load i32, i32* @REGISTER_BUSY_DELAY, align 4
  %30 = call i32 @udelay(i32 %29)
  br label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %12

34:                                               ; preds = %12
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @rt2x00_err(%struct.rt2x00_dev* %35, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %38)
  %40 = load i32*, i32** %9, align 8
  store i32 -1, i32* %40, align 4
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %34, %27
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @rt2500usb_register_read_lock(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_get_field16(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
