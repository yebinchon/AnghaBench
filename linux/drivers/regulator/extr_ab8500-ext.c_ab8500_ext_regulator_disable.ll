; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500-ext.c_ab8500_ext_regulator_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500-ext.c_ab8500_ext_regulator_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.ab8500_ext_regulator_info = type { i32, i32, i32, %struct.TYPE_4__, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"regulator info null pointer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"couldn't set disable bits for regulator\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"%s-disable (bank, reg, mask, value): 0x%02x, 0x%02x, 0x%02x, 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @ab8500_ext_regulator_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_ext_regulator_disable(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ab8500_ext_regulator_info*, align 8
  %6 = alloca i64, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.ab8500_ext_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.ab8500_ext_regulator_info* %8, %struct.ab8500_ext_regulator_info** %5, align 8
  %9 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %10 = icmp eq %struct.ab8500_ext_regulator_info* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %13 = call i32 @rdev_get_dev(%struct.regulator_dev* %12)
  %14 = call i32 @dev_err(i32 %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %74

17:                                               ; preds = %1
  %18 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %19 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %18, i32 0, i32 6
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %24 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %23, i32 0, i32 6
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %31 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  br label %34

33:                                               ; preds = %22, %17
  store i64 0, i64* %6, align 8
  br label %34

34:                                               ; preds = %33, %29
  %35 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %36 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %39 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %42 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %45 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @abx500_mask_and_set_register_interruptible(i32 %37, i32 %40, i32 %43, i32 %46, i64 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %34
  %52 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %53 = call i32 @rdev_get_dev(%struct.regulator_dev* %52)
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %74

56:                                               ; preds = %34
  %57 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %58 = call i32 @rdev_get_dev(%struct.regulator_dev* %57)
  %59 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %60 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %64 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %67 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %70 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = call i32 @dev_dbg(i32 %58, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %65, i32 %68, i32 %71, i64 %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %56, %51, %11
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.ab8500_ext_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @rdev_get_dev(%struct.regulator_dev*) #1

declare dso_local i32 @abx500_mask_and_set_register_interruptible(i32, i32, i32, i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
