; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_pcf50633-charger.c_usb_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_pcf50633-charger.c_usb_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.pcf50633_mbc = type { i32, i32 }

@PCF50633_REG_MBCC7 = common dso_local global i32 0, align 4
@PCF50633_MBCC7_USB_MASK = common dso_local global i32 0, align 4
@PCF50633_MBCC7_USB_500mA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @usb_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.pcf50633_mbc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %11 = call %struct.pcf50633_mbc* @power_supply_get_drvdata(%struct.power_supply* %10)
  store %struct.pcf50633_mbc* %11, %struct.pcf50633_mbc** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %7, align 8
  %13 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PCF50633_REG_MBCC7, align 4
  %16 = call i32 @pcf50633_reg_read(i32 %14, i32 %15)
  %17 = load i32, i32* @PCF50633_MBCC7_USB_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %34 [
    i32 128, label %20
  ]

20:                                               ; preds = %3
  %21 = load %struct.pcf50633_mbc*, %struct.pcf50633_mbc** %7, align 8
  %22 = getelementptr inbounds %struct.pcf50633_mbc, %struct.pcf50633_mbc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @PCF50633_MBCC7_USB_500mA, align 4
  %28 = icmp sle i32 %26, %27
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i1 [ false, %20 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %33 = bitcast %union.power_supply_propval* %32 to i32*
  store i32 %31, i32* %33, align 4
  br label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local %struct.pcf50633_mbc* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @pcf50633_reg_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
