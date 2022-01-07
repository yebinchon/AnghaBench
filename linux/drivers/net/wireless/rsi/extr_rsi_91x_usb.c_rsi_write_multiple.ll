; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_usb.c_rsi_write_multiple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_usb.c_rsi_write_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_hw = type { i64 }
%struct.rsi_91x_usbdev = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsi_hw*, i64, i64*, i32)* @rsi_write_multiple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsi_write_multiple(%struct.rsi_hw* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsi_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rsi_91x_usbdev*, align 8
  store %struct.rsi_hw* %0, %struct.rsi_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.rsi_hw*, %struct.rsi_hw** %6, align 8
  %12 = icmp ne %struct.rsi_hw* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %40

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %40

22:                                               ; preds = %16
  %23 = load %struct.rsi_hw*, %struct.rsi_hw** %6, align 8
  %24 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.rsi_91x_usbdev*
  store %struct.rsi_91x_usbdev* %26, %struct.rsi_91x_usbdev** %10, align 8
  %27 = load %struct.rsi_91x_usbdev*, %struct.rsi_91x_usbdev** %10, align 8
  %28 = getelementptr inbounds %struct.rsi_91x_usbdev, %struct.rsi_91x_usbdev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* @ENETDOWN, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %40

34:                                               ; preds = %22
  %35 = load %struct.rsi_hw*, %struct.rsi_hw** %6, align 8
  %36 = load i64*, i64** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @rsi_usb_card_write(%struct.rsi_hw* %35, i64* %36, i32 %37, i64 %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %34, %31, %19, %13
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @rsi_usb_card_write(%struct.rsi_hw*, i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
