; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ucs1002_power.c_ucs1002_get_usb_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ucs1002_power.c_ucs1002_get_usb_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucs1002_info = type { i32 }
%union.power_supply_propval = type { i32 }

@UCS1002_REG_PIN_STATUS = common dso_local global i32 0, align 4
@F_ACTIVE_MODE_MASK = common dso_local global i32 0, align 4
@POWER_SUPPLY_USB_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@POWER_SUPPLY_USB_TYPE_PD = common dso_local global i32 0, align 4
@POWER_SUPPLY_USB_TYPE_SDP = common dso_local global i32 0, align 4
@POWER_SUPPLY_USB_TYPE_DCP = common dso_local global i32 0, align 4
@POWER_SUPPLY_USB_TYPE_CDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucs1002_info*, %union.power_supply_propval*)* @ucs1002_get_usb_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucs1002_get_usb_type(%struct.ucs1002_info* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucs1002_info*, align 8
  %5 = alloca %union.power_supply_propval*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ucs1002_info* %0, %struct.ucs1002_info** %4, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %5, align 8
  %9 = load %struct.ucs1002_info*, %struct.ucs1002_info** %4, align 8
  %10 = getelementptr inbounds %struct.ucs1002_info, %struct.ucs1002_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @UCS1002_REG_PIN_STATUS, align 4
  %13 = call i32 @regmap_read(i32 %11, i32 %12, i32* %7)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %36

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @F_ACTIVE_MODE_MASK, align 4
  %21 = and i32 %19, %20
  switch i32 %21, label %22 [
    i32 128, label %24
    i32 129, label %26
    i32 130, label %28
    i32 131, label %30
  ]

22:                                               ; preds = %18
  %23 = load i32, i32* @POWER_SUPPLY_USB_TYPE_UNKNOWN, align 4
  store i32 %23, i32* %6, align 4
  br label %32

24:                                               ; preds = %18
  %25 = load i32, i32* @POWER_SUPPLY_USB_TYPE_PD, align 4
  store i32 %25, i32* %6, align 4
  br label %32

26:                                               ; preds = %18
  %27 = load i32, i32* @POWER_SUPPLY_USB_TYPE_SDP, align 4
  store i32 %27, i32* %6, align 4
  br label %32

28:                                               ; preds = %18
  %29 = load i32, i32* @POWER_SUPPLY_USB_TYPE_DCP, align 4
  store i32 %29, i32* %6, align 4
  br label %32

30:                                               ; preds = %18
  %31 = load i32, i32* @POWER_SUPPLY_USB_TYPE_CDP, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %30, %28, %26, %24, %22
  %33 = load i32, i32* %6, align 4
  %34 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %35 = bitcast %union.power_supply_propval* %34 to i32*
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %16
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
