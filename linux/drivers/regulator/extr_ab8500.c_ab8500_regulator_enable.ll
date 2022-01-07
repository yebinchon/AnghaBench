; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500.c_ab8500_regulator_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500.c_ab8500_regulator_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.ab8500_regulator_info = type { i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"regulator info null pointer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"couldn't set enable bits for regulator\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"%s-enable (bank, reg, mask, value): 0x%x, 0x%x, 0x%x, 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @ab8500_regulator_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_regulator_enable(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ab8500_regulator_info*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %6 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %7 = call %struct.ab8500_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %6)
  store %struct.ab8500_regulator_info* %7, %struct.ab8500_regulator_info** %5, align 8
  %8 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %5, align 8
  %9 = icmp eq %struct.ab8500_regulator_info* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %12 = call i32 @rdev_get_dev(%struct.regulator_dev* %11)
  %13 = call i32 @dev_err(i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %61

16:                                               ; preds = %1
  %17 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %5, align 8
  %18 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %5, align 8
  %21 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %5, align 8
  %24 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %5, align 8
  %27 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %5, align 8
  %30 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @abx500_mask_and_set_register_interruptible(i32 %19, i32 %22, i32 %25, i32 %28, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %16
  %36 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %37 = call i32 @rdev_get_dev(%struct.regulator_dev* %36)
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %61

40:                                               ; preds = %16
  %41 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %42 = call i32 @rdev_get_dev(%struct.regulator_dev* %41)
  %43 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %5, align 8
  %44 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %5, align 8
  %48 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %5, align 8
  %51 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %5, align 8
  %54 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %5, align 8
  %57 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_vdbg(i32 %42, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %49, i32 %52, i32 %55, i32 %58)
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %40, %35, %10
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.ab8500_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @rdev_get_dev(%struct.regulator_dev*) #1

declare dso_local i32 @abx500_mask_and_set_register_interruptible(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
