; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_aat2870-regulator.c_aat2870_ldo_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_aat2870-regulator.c_aat2870_ldo_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.aat2870_regulator = type { i32, i32, %struct.aat2870_data* }
%struct.aat2870_data = type { i32 (%struct.aat2870_data*, i32, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @aat2870_ldo_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aat2870_ldo_is_enabled(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.aat2870_regulator*, align 8
  %5 = alloca %struct.aat2870_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call %struct.aat2870_regulator* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.aat2870_regulator* %9, %struct.aat2870_regulator** %4, align 8
  %10 = load %struct.aat2870_regulator*, %struct.aat2870_regulator** %4, align 8
  %11 = getelementptr inbounds %struct.aat2870_regulator, %struct.aat2870_regulator* %10, i32 0, i32 2
  %12 = load %struct.aat2870_data*, %struct.aat2870_data** %11, align 8
  store %struct.aat2870_data* %12, %struct.aat2870_data** %5, align 8
  %13 = load %struct.aat2870_data*, %struct.aat2870_data** %5, align 8
  %14 = getelementptr inbounds %struct.aat2870_data, %struct.aat2870_data* %13, i32 0, i32 0
  %15 = load i32 (%struct.aat2870_data*, i32, i32*)*, i32 (%struct.aat2870_data*, i32, i32*)** %14, align 8
  %16 = load %struct.aat2870_data*, %struct.aat2870_data** %5, align 8
  %17 = load %struct.aat2870_regulator*, %struct.aat2870_regulator** %4, align 8
  %18 = getelementptr inbounds %struct.aat2870_regulator, %struct.aat2870_regulator* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 %15(%struct.aat2870_data* %16, i32 %19, i32* %6)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %34

25:                                               ; preds = %1
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.aat2870_regulator*, %struct.aat2870_regulator** %4, align 8
  %28 = getelementptr inbounds %struct.aat2870_regulator, %struct.aat2870_regulator* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %25, %23
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.aat2870_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
