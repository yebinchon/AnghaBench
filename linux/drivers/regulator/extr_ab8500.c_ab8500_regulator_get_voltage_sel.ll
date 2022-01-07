; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500.c_ab8500_regulator_get_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500.c_ab8500_regulator_get_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.ab8500_regulator_info = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"regulator info null pointer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"couldn't read voltage reg for regulator\0A\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"%s-get_voltage (bank, reg, mask, shift, value): 0x%x, 0x%x, 0x%x, 0x%x, 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @ab8500_regulator_get_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_regulator_get_voltage_sel(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ab8500_regulator_info*, align 8
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call %struct.ab8500_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.ab8500_regulator_info* %9, %struct.ab8500_regulator_info** %6, align 8
  %10 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %6, align 8
  %11 = icmp eq %struct.ab8500_regulator_info* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %14 = call i32 @rdev_get_dev(%struct.regulator_dev* %13)
  %15 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %67

18:                                               ; preds = %1
  %19 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %6, align 8
  %20 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ffs(i32 %21)
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  %24 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %6, align 8
  %25 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %6, align 8
  %28 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %6, align 8
  %31 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @abx500_get_register_interruptible(i32 %26, i32 %29, i32 %32, i32* %7)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %18
  %37 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %38 = call i32 @rdev_get_dev(%struct.regulator_dev* %37)
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %67

41:                                               ; preds = %18
  %42 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %43 = call i32 @rdev_get_dev(%struct.regulator_dev* %42)
  %44 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %6, align 8
  %45 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %6, align 8
  %49 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %6, align 8
  %52 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %6, align 8
  %55 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @dev_vdbg(i32 %43, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %50, i32 %53, i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %6, align 8
  %62 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %60, %63
  %65 = load i32, i32* %5, align 4
  %66 = ashr i32 %64, %65
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %41, %36, %12
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.ab8500_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @rdev_get_dev(%struct.regulator_dev*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @abx500_get_register_interruptible(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
