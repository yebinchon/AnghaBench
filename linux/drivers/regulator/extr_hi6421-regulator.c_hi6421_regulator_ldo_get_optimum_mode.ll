; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_hi6421-regulator.c_hi6421_regulator_ldo_get_optimum_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_hi6421-regulator.c_hi6421_regulator_ldo_get_optimum_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.hi6421_regulator_info = type { i32 }

@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@REGULATOR_MODE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32, i32)* @hi6421_regulator_ldo_get_optimum_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi6421_regulator_ldo_get_optimum_mode(%struct.regulator_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regulator_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hi6421_regulator_info*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %12 = call %struct.hi6421_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %11)
  store %struct.hi6421_regulator_info* %12, %struct.hi6421_regulator_info** %10, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.hi6421_regulator_info*, %struct.hi6421_regulator_info** %10, align 8
  %15 = getelementptr inbounds %struct.hi6421_regulator_info, %struct.hi6421_regulator_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  store i32 %19, i32* %5, align 4
  br label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @REGULATOR_MODE_IDLE, align 4
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local %struct.hi6421_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
