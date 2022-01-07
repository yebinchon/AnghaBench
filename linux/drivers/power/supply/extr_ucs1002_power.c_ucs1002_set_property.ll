; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ucs1002_power.c_ucs1002_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ucs1002_power.c_ucs1002_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.ucs1002_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @ucs1002_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucs1002_set_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.ucs1002_info*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %10 = call %struct.ucs1002_info* @power_supply_get_drvdata(%struct.power_supply* %9)
  store %struct.ucs1002_info* %10, %struct.ucs1002_info** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %24 [
    i32 129, label %12
    i32 128, label %18
  ]

12:                                               ; preds = %3
  %13 = load %struct.ucs1002_info*, %struct.ucs1002_info** %8, align 8
  %14 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %15 = bitcast %union.power_supply_propval* %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ucs1002_set_max_current(%struct.ucs1002_info* %13, i32 %16)
  store i32 %17, i32* %4, align 4
  br label %27

18:                                               ; preds = %3
  %19 = load %struct.ucs1002_info*, %struct.ucs1002_info** %8, align 8
  %20 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %21 = bitcast %union.power_supply_propval* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ucs1002_set_usb_type(%struct.ucs1002_info* %19, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %18, %12
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.ucs1002_info* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @ucs1002_set_max_current(%struct.ucs1002_info*, i32) #1

declare dso_local i32 @ucs1002_set_usb_type(%struct.ucs1002_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
