; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8952.c_max8952_set_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8952.c_max8952_set_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.max8952_data = type { i32, i32, i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @max8952_set_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8952_set_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max8952_data*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %8 = call %struct.max8952_data* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.max8952_data* %8, %struct.max8952_data** %6, align 8
  %9 = load %struct.max8952_data*, %struct.max8952_data** %6, align 8
  %10 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.max8952_data*, %struct.max8952_data** %6, align 8
  %15 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @EPERM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %45

21:                                               ; preds = %13
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 1
  %24 = load %struct.max8952_data*, %struct.max8952_data** %6, align 8
  %25 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = lshr i32 %26, 1
  %28 = and i32 %27, 1
  %29 = load %struct.max8952_data*, %struct.max8952_data** %6, align 8
  %30 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.max8952_data*, %struct.max8952_data** %6, align 8
  %32 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.max8952_data*, %struct.max8952_data** %6, align 8
  %35 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @gpiod_set_value(i32 %33, i32 %36)
  %38 = load %struct.max8952_data*, %struct.max8952_data** %6, align 8
  %39 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.max8952_data*, %struct.max8952_data** %6, align 8
  %42 = getelementptr inbounds %struct.max8952_data, %struct.max8952_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @gpiod_set_value(i32 %40, i32 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %21, %18
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.max8952_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
