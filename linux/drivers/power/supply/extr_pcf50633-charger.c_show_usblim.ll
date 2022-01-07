; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_pcf50633-charger.c_show_usblim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_pcf50633-charger.c_show_usblim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pcf50633_mbc = type { i32 }

@PCF50633_REG_MBCC7 = common dso_local global i32 0, align 4
@PCF50633_MBCC7_USB_MASK = common dso_local global i64 0, align 8
@PCF50633_MBCC7_USB_1000mA = common dso_local global i64 0, align 8
@PCF50633_MBCC7_USB_500mA = common dso_local global i64 0, align 8
@PCF50633_MBCC7_USB_100mA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_usblim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_usblim(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pcf50633_mbc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.pcf50633_mbc* @dev_get_drvdata(%struct.device* %10)
  store %struct.pcf50633_mbc* %11, %struct.pcf50633_mbc** %7, align 8
  %12 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %7, align 8
  %13 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PCF50633_REG_MBCC7, align 4
  %16 = call i64 @pcf50633_reg_read(i32 %14, i32 %15)
  %17 = load i64, i64* @PCF50633_MBCC7_USB_MASK, align 8
  %18 = and i64 %16, %17
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @PCF50633_MBCC7_USB_1000mA, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 1000, i32* %9, align 4
  br label %36

23:                                               ; preds = %3
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @PCF50633_MBCC7_USB_500mA, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 500, i32* %9, align 4
  br label %35

28:                                               ; preds = %23
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @PCF50633_MBCC7_USB_100mA, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 100, i32* %9, align 4
  br label %34

33:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %33, %32
  br label %35

35:                                               ; preds = %34, %27
  br label %36

36:                                               ; preds = %35, %22
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @sprintf(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %38)
  ret i32 %39
}

declare dso_local %struct.pcf50633_mbc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @pcf50633_reg_read(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
