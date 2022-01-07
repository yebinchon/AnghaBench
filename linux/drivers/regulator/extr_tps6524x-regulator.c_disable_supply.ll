; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6524x-regulator.c_disable_supply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6524x-regulator.c_disable_supply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.supply_info = type { i32 }
%struct.regulator_dev = type { i32 }
%struct.tps6524x = type { i32 }

@supply_info = common dso_local global %struct.supply_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @disable_supply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disable_supply(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca %struct.supply_info*, align 8
  %4 = alloca %struct.tps6524x*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %5 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %6 = call %struct.tps6524x* @rdev_get_drvdata(%struct.regulator_dev* %5)
  store %struct.tps6524x* %6, %struct.tps6524x** %4, align 8
  %7 = load %struct.supply_info*, %struct.supply_info** @supply_info, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %9 = call i64 @rdev_get_id(%struct.regulator_dev* %8)
  %10 = getelementptr inbounds %struct.supply_info, %struct.supply_info* %7, i64 %9
  store %struct.supply_info* %10, %struct.supply_info** %3, align 8
  %11 = load %struct.tps6524x*, %struct.tps6524x** %4, align 8
  %12 = load %struct.supply_info*, %struct.supply_info** %3, align 8
  %13 = getelementptr inbounds %struct.supply_info, %struct.supply_info* %12, i32 0, i32 0
  %14 = call i32 @write_field(%struct.tps6524x* %11, i32* %13, i32 0)
  ret i32 %14
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
