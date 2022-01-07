; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17042_battery.c_max17042_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17042_battery.c_max17042_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.max17042_chip = type { %struct.regmap* }
%struct.regmap = type { i32 }

@MAX17042_TALRT_Th = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @max17042_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max17042_set_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.max17042_chip*, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %13 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %14 = call %struct.max17042_chip* @power_supply_get_drvdata(%struct.power_supply* %13)
  store %struct.max17042_chip* %14, %struct.max17042_chip** %8, align 8
  %15 = load %struct.max17042_chip*, %struct.max17042_chip** %8, align 8
  %16 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %15, i32 0, i32 0
  %17 = load %struct.regmap*, %struct.regmap** %16, align 8
  store %struct.regmap* %17, %struct.regmap** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %80 [
    i32 128, label %19
    i32 129, label %49
  ]

19:                                               ; preds = %3
  %20 = load %struct.regmap*, %struct.regmap** %9, align 8
  %21 = load i32, i32* @MAX17042_TALRT_Th, align 4
  %22 = call i32 @regmap_read(%struct.regmap* %20, i32 %21, i32* %11)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %4, align 4
  br label %85

27:                                               ; preds = %19
  %28 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %29 = bitcast %union.power_supply_propval* %28 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 10
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %11, align 4
  %34 = ashr i32 %33, 8
  %35 = icmp sge i32 %32, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load i32, i32* %11, align 4
  %38 = ashr i32 %37, 8
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %36, %27
  %41 = load i32, i32* %11, align 4
  %42 = and i32 %41, 65280
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %11, align 4
  %45 = load %struct.regmap*, %struct.regmap** %9, align 8
  %46 = load i32, i32* @MAX17042_TALRT_Th, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @regmap_write(%struct.regmap* %45, i32 %46, i32 %47)
  store i32 %48, i32* %10, align 4
  br label %83

49:                                               ; preds = %3
  %50 = load %struct.regmap*, %struct.regmap** %9, align 8
  %51 = load i32, i32* @MAX17042_TALRT_Th, align 4
  %52 = call i32 @regmap_read(%struct.regmap* %50, i32 %51, i32* %11)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %85

57:                                               ; preds = %49
  %58 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %59 = bitcast %union.power_supply_propval* %58 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %60, 10
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = and i32 %63, 255
  %65 = icmp sle i32 %62, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load i32, i32* %11, align 4
  %68 = and i32 %67, 255
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %66, %57
  %71 = load i32, i32* %11, align 4
  %72 = and i32 %71, 255
  %73 = load i32, i32* %12, align 4
  %74 = shl i32 %73, 8
  %75 = add nsw i32 %72, %74
  store i32 %75, i32* %11, align 4
  %76 = load %struct.regmap*, %struct.regmap** %9, align 8
  %77 = load i32, i32* @MAX17042_TALRT_Th, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @regmap_write(%struct.regmap* %76, i32 %77, i32 %78)
  store i32 %79, i32* %10, align 4
  br label %83

80:                                               ; preds = %3
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %80, %70, %40
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %55, %25
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.max17042_chip* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
