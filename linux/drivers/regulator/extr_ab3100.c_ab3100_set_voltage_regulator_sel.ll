; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ab3100.c_ab3100_set_voltage_regulator_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ab3100.c_ab3100_set_voltage_regulator_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.ab3100_regulator = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"failed to get regulator register %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to set regulator register %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @ab3100_set_voltage_regulator_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab3100_set_voltage_regulator_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ab3100_regulator*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call %struct.ab3100_regulator* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.ab3100_regulator* %10, %struct.ab3100_regulator** %6, align 8
  %11 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %6, align 8
  %12 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %6, align 8
  %15 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @abx500_get_register_interruptible(i32 %13, i32 0, i32 %16, i32* %7)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %22 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %21, i32 0, i32 0
  %23 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %6, align 8
  %24 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_warn(i32* %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %54

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, -225
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = shl i32 %31, 5
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %6, align 8
  %36 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %6, align 8
  %39 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @abx500_set_register_interruptible(i32 %37, i32 0, i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %28
  %46 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %47 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %46, i32 0, i32 0
  %48 = load %struct.ab3100_regulator*, %struct.ab3100_regulator** %6, align 8
  %49 = getelementptr inbounds %struct.ab3100_regulator, %struct.ab3100_regulator* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_warn(i32* %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %45, %28
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %20
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.ab3100_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @abx500_get_register_interruptible(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @abx500_set_register_interruptible(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
