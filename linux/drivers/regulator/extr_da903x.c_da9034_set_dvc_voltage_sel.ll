; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da903x.c_da9034_set_dvc_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da903x.c_da9034_set_dvc_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.da903x_regulator_info = type { i32, i32, i32, i32, i32 }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @da9034_set_dvc_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9034_set_dvc_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.da903x_regulator_info*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %12 = call %struct.da903x_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %11)
  store %struct.da903x_regulator_info* %12, %struct.da903x_regulator_info** %6, align 8
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %14 = call %struct.device* @to_da903x_dev(%struct.regulator_dev* %13)
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %6, align 8
  %17 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %15, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %6, align 8
  %21 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 1, %22
  %24 = sub nsw i32 %23, 1
  %25 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %6, align 8
  %26 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %24, %27
  store i32 %28, i32* %9, align 4
  %29 = load %struct.device*, %struct.device** %7, align 8
  %30 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %6, align 8
  %31 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @da903x_update(%struct.device* %29, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %3, align 4
  br label %51

40:                                               ; preds = %2
  %41 = load %struct.device*, %struct.device** %7, align 8
  %42 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %6, align 8
  %43 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %6, align 8
  %46 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 1, %47
  %49 = call i32 @da903x_set_bits(%struct.device* %41, i32 %44, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %40, %38
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.da903x_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local %struct.device* @to_da903x_dev(%struct.regulator_dev*) #1

declare dso_local i32 @da903x_update(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @da903x_set_bits(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
