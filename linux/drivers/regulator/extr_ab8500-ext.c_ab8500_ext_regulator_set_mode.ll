; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500-ext.c_ab8500_ext_regulator_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500-ext.c_ab8500_ext_regulator_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.ab8500_ext_regulator_info = type { i32, i32, i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"regulator info null pointer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not set regulator mode.\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"%s-set_mode (bank, reg, mask, value): 0x%x, 0x%x, 0x%x, 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @ab8500_ext_regulator_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_ext_regulator_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ab8500_ext_regulator_info*, align 8
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call %struct.ab8500_ext_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.ab8500_ext_regulator_info* %10, %struct.ab8500_ext_regulator_info** %7, align 8
  %11 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %7, align 8
  %12 = icmp eq %struct.ab8500_ext_regulator_info* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %15 = call i32 @rdev_get_dev(%struct.regulator_dev* %14)
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %92

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %29 [
    i32 128, label %21
    i32 129, label %25
  ]

21:                                               ; preds = %19
  %22 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %7, align 8
  %23 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  br label %32

25:                                               ; preds = %19
  %26 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %7, align 8
  %27 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  br label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %92

32:                                               ; preds = %25, %21
  %33 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %34 = call i64 @ab8500_ext_regulator_is_enabled(%struct.regulator_dev* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %88

36:                                               ; preds = %32
  %37 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %7, align 8
  %38 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %37, i32 0, i32 6
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = icmp ne %struct.TYPE_3__* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %7, align 8
  %43 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %42, i32 0, i32 6
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %88, label %48

48:                                               ; preds = %41, %36
  %49 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %7, align 8
  %50 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %7, align 8
  %53 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %7, align 8
  %56 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %7, align 8
  %59 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @abx500_mask_and_set_register_interruptible(i32 %51, i32 %54, i32 %57, i32 %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %48
  %66 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %67 = call i32 @rdev_get_dev(%struct.regulator_dev* %66)
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %92

70:                                               ; preds = %48
  %71 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %72 = call i32 @rdev_get_dev(%struct.regulator_dev* %71)
  %73 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %7, align 8
  %74 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %7, align 8
  %78 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %7, align 8
  %81 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %7, align 8
  %84 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @dev_dbg(i32 %72, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %79, i32 %82, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %70, %41, %32
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %7, align 8
  %91 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %65, %29, %13
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.ab8500_ext_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @rdev_get_dev(%struct.regulator_dev*) #1

declare dso_local i64 @ab8500_ext_regulator_is_enabled(%struct.regulator_dev*) #1

declare dso_local i32 @abx500_mask_and_set_register_interruptible(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
