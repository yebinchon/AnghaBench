; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17042_battery.c_max17042_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17042_battery.c_max17042_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max17042_chip = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@MAX17042_FullCAP = common dso_local global i32 0, align 4
@MAX17042_RepCap = common dso_local global i32 0, align 4
@MAX17042_FULL_THRESHOLD = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@MAX17042_AvgCurrent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max17042_chip*, i32*)* @max17042_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max17042_get_status(%struct.max17042_chip* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max17042_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.max17042_chip* %0, %struct.max17042_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.max17042_chip*, %struct.max17042_chip** %4, align 8
  %12 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @power_supply_am_i_supplied(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  store i32 0, i32* %3, align 4
  br label %95

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  store i32 0, i32* %3, align 4
  br label %95

26:                                               ; preds = %20
  %27 = load %struct.max17042_chip*, %struct.max17042_chip** %4, align 8
  %28 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MAX17042_FullCAP, align 4
  %31 = call i32 @regmap_read(i32 %29, i32 %30, i32* %7)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %95

36:                                               ; preds = %26
  %37 = load %struct.max17042_chip*, %struct.max17042_chip** %4, align 8
  %38 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MAX17042_RepCap, align 4
  %41 = call i32 @regmap_read(i32 %39, i32 %40, i32* %8)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %95

46:                                               ; preds = %36
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %47, %48
  %50 = load i32, i32* @MAX17042_FULL_THRESHOLD, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  store i32 0, i32* %3, align 4
  br label %95

55:                                               ; preds = %46
  %56 = load %struct.max17042_chip*, %struct.max17042_chip** %4, align 8
  %57 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %64 = load i32*, i32** %5, align 8
  store i32 %63, i32* %64, align 4
  store i32 0, i32* %3, align 4
  br label %95

65:                                               ; preds = %55
  %66 = load %struct.max17042_chip*, %struct.max17042_chip** %4, align 8
  %67 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @MAX17042_AvgCurrent, align 4
  %70 = call i32 @regmap_read(i32 %68, i32 %69, i32* %10)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %95

75:                                               ; preds = %65
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @sign_extend32(i32 %76, i32 15)
  store i32 %77, i32* %9, align 4
  %78 = load %struct.max17042_chip*, %struct.max17042_chip** %4, align 8
  %79 = getelementptr inbounds %struct.max17042_chip, %struct.max17042_chip* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sdiv i32 1562500, %82
  %84 = load i32, i32* %9, align 4
  %85 = mul nsw i32 %84, %83
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %75
  %89 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %90 = load i32*, i32** %5, align 8
  store i32 %89, i32* %90, align 4
  br label %94

91:                                               ; preds = %75
  %92 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %93 = load i32*, i32** %5, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %91, %88
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %73, %62, %52, %44, %34, %23, %17
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @power_supply_am_i_supplied(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
