; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500.c_ab8500_regulator_set_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500.c_ab8500_regulator_set_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.ab8500_regulator_info = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"regulator info null pointer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"couldn't set voltage reg for regulator\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"%s-set_voltage (bank, reg, mask, value): 0x%x, 0x%x, 0x%x, 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @ab8500_regulator_set_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_regulator_set_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ab8500_regulator_info*, align 8
  %9 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %11 = call %struct.ab8500_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %10)
  store %struct.ab8500_regulator_info* %11, %struct.ab8500_regulator_info** %8, align 8
  %12 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %8, align 8
  %13 = icmp eq %struct.ab8500_regulator_info* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %16 = call i32 @rdev_get_dev(%struct.regulator_dev* %15)
  %17 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %68

20:                                               ; preds = %2
  %21 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %8, align 8
  %22 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ffs(i32 %23)
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %7, align 4
  %28 = shl i32 %26, %27
  store i32 %28, i32* %9, align 4
  %29 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %8, align 8
  %30 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %8, align 8
  %33 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %8, align 8
  %36 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %8, align 8
  %39 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @abx500_mask_and_set_register_interruptible(i32 %31, i32 %34, i32 %37, i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %20
  %46 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %47 = call i32 @rdev_get_dev(%struct.regulator_dev* %46)
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %20
  %50 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %51 = call i32 @rdev_get_dev(%struct.regulator_dev* %50)
  %52 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %8, align 8
  %53 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %8, align 8
  %57 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %8, align 8
  %60 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %8, align 8
  %63 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @dev_vdbg(i32 %51, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %58, i32 %61, i32 %64, i32 %65)
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %49, %14
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.ab8500_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @rdev_get_dev(%struct.regulator_dev*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @abx500_mask_and_set_register_interruptible(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
