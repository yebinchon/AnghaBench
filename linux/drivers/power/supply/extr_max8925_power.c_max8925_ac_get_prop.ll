; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8925_power.c_max8925_ac_get_prop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8925_power.c_max8925_ac_get_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.max8925_power_info = type { i32 }

@MEASURE_VCHG = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @max8925_ac_get_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8925_ac_get_prop(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.max8925_power_info*, align 8
  %8 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %10 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.max8925_power_info* @dev_get_drvdata(i32 %12)
  store %struct.max8925_power_info* %13, %struct.max8925_power_info** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %41 [
    i32 129, label %15
    i32 128, label %21
  ]

15:                                               ; preds = %3
  %16 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %17 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %20 = bitcast %union.power_supply_propval* %19 to i32*
  store i32 %18, i32* %20, align 4
  br label %44

21:                                               ; preds = %3
  %22 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %23 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load %struct.max8925_power_info*, %struct.max8925_power_info** %7, align 8
  %28 = load i32, i32* @MEASURE_VCHG, align 4
  %29 = call i32 @start_measure(%struct.max8925_power_info* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = mul nsw i32 %33, 2000
  %35 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %36 = bitcast %union.power_supply_propval* %35 to i32*
  store i32 %34, i32* %36, align 4
  br label %45

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %21
  %39 = load i32, i32* @ENODATA, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %44

41:                                               ; preds = %3
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %41, %38, %15
  br label %45

45:                                               ; preds = %44, %32
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

declare dso_local %struct.max8925_power_info* @dev_get_drvdata(i32) #1

declare dso_local i32 @start_measure(%struct.max8925_power_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
