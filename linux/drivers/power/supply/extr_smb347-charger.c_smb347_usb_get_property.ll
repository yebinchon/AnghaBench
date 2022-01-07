; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_smb347_usb_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_smb347_usb_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.smb347_charger = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @smb347_usb_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb347_usb_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.smb347_charger*, align 8
  %9 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %11 = call %struct.smb347_charger* @power_supply_get_drvdata(%struct.power_supply* %10)
  store %struct.smb347_charger* %11, %struct.smb347_charger** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %43 [
    i32 128, label %13
    i32 129, label %19
    i32 130, label %31
  ]

13:                                               ; preds = %3
  %14 = load %struct.smb347_charger*, %struct.smb347_charger** %8, align 8
  %15 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %18 = bitcast %union.power_supply_propval* %17 to i32*
  store i32 %16, i32* %18, align 4
  br label %46

19:                                               ; preds = %3
  %20 = load %struct.smb347_charger*, %struct.smb347_charger** %8, align 8
  %21 = call i32 @get_const_charge_voltage(%struct.smb347_charger* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %47

26:                                               ; preds = %19
  %27 = load i32, i32* %9, align 4
  %28 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %29 = bitcast %union.power_supply_propval* %28 to i32*
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26
  br label %46

31:                                               ; preds = %3
  %32 = load %struct.smb347_charger*, %struct.smb347_charger** %8, align 8
  %33 = call i32 @get_const_charge_current(%struct.smb347_charger* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %47

38:                                               ; preds = %31
  %39 = load i32, i32* %9, align 4
  %40 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %41 = bitcast %union.power_supply_propval* %40 to i32*
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %38
  br label %46

43:                                               ; preds = %3
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %47

46:                                               ; preds = %42, %30, %13
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %43, %36, %24
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.smb347_charger* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @get_const_charge_voltage(%struct.smb347_charger*) #1

declare dso_local i32 @get_const_charge_current(%struct.smb347_charger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
