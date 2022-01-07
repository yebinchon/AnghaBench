; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da903x.c_da9030_map_ldo14_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da903x.c_da9030_map_ldo14_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.da903x_regulator_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"invalid voltage range (%d, %d) uV\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @da9030_map_ldo14_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9030_map_ldo14_voltage(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.da903x_regulator_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %12 = call %struct.da903x_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %11)
  store %struct.da903x_regulator_info* %12, %struct.da903x_regulator_info** %8, align 8
  %13 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @check_range(%struct.da903x_regulator_info* %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %59

24:                                               ; preds = %3
  %25 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %26 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %29 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %27, %31
  %33 = sdiv i32 %32, 2
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %24
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %38, %39
  %41 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %42 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @DIV_ROUND_UP(i32 %40, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %46, 4
  store i32 %47, i32* %10, align 4
  br label %57

48:                                               ; preds = %24
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %9, align 4
  %51 = sub nsw i32 %49, %50
  %52 = load %struct.da903x_regulator_info*, %struct.da903x_regulator_info** %8, align 8
  %53 = getelementptr inbounds %struct.da903x_regulator_info, %struct.da903x_regulator_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @DIV_ROUND_UP(i32 %51, i32 %55)
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %48, %37
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %18
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.da903x_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i64 @check_range(%struct.da903x_regulator_info*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
