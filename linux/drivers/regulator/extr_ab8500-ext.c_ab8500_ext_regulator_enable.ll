; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500-ext.c_ab8500_ext_regulator_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500-ext.c_ab8500_ext_regulator_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.ab8500_ext_regulator_info = type { i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"regulator info null pointer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"couldn't set enable bits for regulator\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"%s-enable (bank, reg, mask, value): 0x%02x, 0x%02x, 0x%02x, 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @ab8500_ext_regulator_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_ext_regulator_enable(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ab8500_ext_regulator_info*, align 8
  %6 = alloca i32, align 4
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
  br label %77

17:                                               ; preds = %1
  %18 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %19 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %18, i32 0, i32 7
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %24 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %23, i32 0, i32 7
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %31 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %6, align 4
  br label %37

33:                                               ; preds = %22, %17
  %34 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %35 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %39 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %42 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %45 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %48 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @abx500_mask_and_set_register_interruptible(i32 %40, i32 %43, i32 %46, i32 %49, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %37
  %55 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %56 = call i32 @rdev_get_dev(%struct.regulator_dev* %55)
  %57 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %77

59:                                               ; preds = %37
  %60 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %61 = call i32 @rdev_get_dev(%struct.regulator_dev* %60)
  %62 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %63 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %67 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %70 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %73 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @dev_dbg(i32 %61, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %68, i32 %71, i32 %74, i32 %75)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %59, %54, %11
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.ab8500_ext_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @rdev_get_dev(%struct.regulator_dev*) #1

declare dso_local i32 @abx500_mask_and_set_register_interruptible(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
