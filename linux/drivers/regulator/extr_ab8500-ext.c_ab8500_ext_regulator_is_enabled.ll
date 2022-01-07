; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500-ext.c_ab8500_ext_regulator_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500-ext.c_ab8500_ext_regulator_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.ab8500_ext_regulator_info = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"regulator info null pointer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"couldn't read 0x%x register\0A\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"%s-is_enabled (bank, reg, mask, value): 0x%02x, 0x%02x, 0x%02x, 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @ab8500_ext_regulator_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_ext_regulator_is_enabled(%struct.regulator_dev* %0) #0 {
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
  %14 = call i32 (i32, i8*, ...) @dev_err(i32 %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %77

17:                                               ; preds = %1
  %18 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %19 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %22 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %25 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @abx500_get_register_interruptible(i32 %20, i32 %23, i32 %26, i32* %6)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %17
  %31 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %32 = call i32 @rdev_get_dev(%struct.regulator_dev* %31)
  %33 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %34 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %77

38:                                               ; preds = %17
  %39 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %40 = call i32 @rdev_get_dev(%struct.regulator_dev* %39)
  %41 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %42 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %46 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %49 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %52 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %47, i32 %50, i32 %53, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %58 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %56, %59
  %61 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %62 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %75, label %65

65:                                               ; preds = %38
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %68 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %66, %69
  %71 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %5, align 8
  %72 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %65, %38
  store i32 1, i32* %2, align 4
  br label %77

76:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %75, %30, %11
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.ab8500_ext_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @rdev_get_dev(%struct.regulator_dev*) #1

declare dso_local i32 @abx500_get_register_interruptible(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
