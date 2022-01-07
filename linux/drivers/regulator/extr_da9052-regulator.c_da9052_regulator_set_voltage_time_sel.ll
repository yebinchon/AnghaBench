; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9052-regulator.c_da9052_regulator_set_voltage_time_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9052-regulator.c_da9052_regulator_set_voltage_time_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.da9052_regulator = type { %struct.da9052_regulator_info* }
%struct.da9052_regulator_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @da9052_regulator_set_voltage_time_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_regulator_set_voltage_time_sel(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.da9052_regulator*, align 8
  %8 = alloca %struct.da9052_regulator_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %12 = call %struct.da9052_regulator* @rdev_get_drvdata(%struct.regulator_dev* %11)
  store %struct.da9052_regulator* %12, %struct.da9052_regulator** %7, align 8
  %13 = load %struct.da9052_regulator*, %struct.da9052_regulator** %7, align 8
  %14 = getelementptr inbounds %struct.da9052_regulator, %struct.da9052_regulator* %13, i32 0, i32 0
  %15 = load %struct.da9052_regulator_info*, %struct.da9052_regulator_info** %14, align 8
  store %struct.da9052_regulator_info* %15, %struct.da9052_regulator_info** %8, align 8
  %16 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %17 = call i32 @rdev_get_id(%struct.regulator_dev* %16)
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %28 [
    i32 132, label %19
    i32 131, label %19
    i32 130, label %19
    i32 129, label %19
    i32 128, label %19
  ]

19:                                               ; preds = %3, %3, %3, %3, %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sub i32 %20, %21
  %23 = load %struct.da9052_regulator_info*, %struct.da9052_regulator_info** %8, align 8
  %24 = getelementptr inbounds %struct.da9052_regulator_info, %struct.da9052_regulator_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul i32 %22, %25
  %27 = udiv i32 %26, 6250
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %3, %19
  %29 = load i32, i32* %10, align 4
  ret i32 %29
}

declare dso_local %struct.da9052_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
