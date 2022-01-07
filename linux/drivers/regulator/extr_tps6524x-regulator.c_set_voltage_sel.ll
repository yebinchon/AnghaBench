; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6524x-regulator.c_set_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6524x-regulator.c_set_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.supply_info = type { i32 }
%struct.regulator_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tps6524x = type { i32 }

@supply_info = common dso_local global %struct.supply_info* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @set_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.supply_info*, align 8
  %7 = alloca %struct.tps6524x*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %9 = call %struct.tps6524x* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.tps6524x* %9, %struct.tps6524x** %7, align 8
  %10 = load %struct.supply_info*, %struct.supply_info** @supply_info, align 8
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %12 = call i64 @rdev_get_id(%struct.regulator_dev* %11)
  %13 = getelementptr inbounds %struct.supply_info, %struct.supply_info* %10, i64 %12
  store %struct.supply_info* %13, %struct.supply_info** %6, align 8
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %15 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %29

23:                                               ; preds = %2
  %24 = load %struct.tps6524x*, %struct.tps6524x** %7, align 8
  %25 = load %struct.supply_info*, %struct.supply_info** %6, align 8
  %26 = getelementptr inbounds %struct.supply_info, %struct.supply_info* %25, i32 0, i32 0
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @write_field(%struct.tps6524x* %24, i32* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %23, %20
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.tps6524x* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i64 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @write_field(%struct.tps6524x*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
