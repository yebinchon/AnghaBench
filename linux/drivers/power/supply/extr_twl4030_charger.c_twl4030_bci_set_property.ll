; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_charger.c_twl4030_bci_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_charger.c_twl4030_bci_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.twl4030_bci = type { i32, i32 }

@POWER_SUPPLY_TYPE_USB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @twl4030_bci_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_bci_set_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.twl4030_bci*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %10 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.twl4030_bci* @dev_get_drvdata(i32 %12)
  store %struct.twl4030_bci* %13, %struct.twl4030_bci** %8, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %38 [
    i32 128, label %15
  ]

15:                                               ; preds = %3
  %16 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %17 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @POWER_SUPPLY_TYPE_USB, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %25 = bitcast %union.power_supply_propval* %24 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.twl4030_bci*, %struct.twl4030_bci** %8, align 8
  %28 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %35

29:                                               ; preds = %15
  %30 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %31 = bitcast %union.power_supply_propval* %30 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.twl4030_bci*, %struct.twl4030_bci** %8, align 8
  %34 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %29, %23
  %36 = load %struct.twl4030_bci*, %struct.twl4030_bci** %8, align 8
  %37 = call i32 @twl4030_charger_update_current(%struct.twl4030_bci* %36)
  br label %41

38:                                               ; preds = %3
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %42

41:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.twl4030_bci* @dev_get_drvdata(i32) #1

declare dso_local i32 @twl4030_charger_update_current(%struct.twl4030_bci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
