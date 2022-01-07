; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500.c_ab8500_regulator_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500.c_ab8500_regulator_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.ab8500_regulator_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"regulator info null pointer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@REGULATOR_MODE_IDLE = common dso_local global i32 0, align 4
@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @ab8500_regulator_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_regulator_get_mode(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.ab8500_regulator_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call %struct.ab8500_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.ab8500_regulator_info* %10, %struct.ab8500_regulator_info** %4, align 8
  %11 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %4, align 8
  %12 = icmp eq %struct.ab8500_regulator_info* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %15 = call i32 @rdev_get_dev(%struct.regulator_dev* %14)
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %90

19:                                               ; preds = %1
  %20 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %4, align 8
  %21 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %20, i32 0, i32 9
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %4, align 8
  %26 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %25, i32 0, i32 9
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @REGULATOR_MODE_IDLE, align 4
  store i32 %32, i32* %2, align 4
  br label %90

33:                                               ; preds = %24
  %34 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  store i32 %34, i32* %2, align 4
  br label %90

35:                                               ; preds = %19
  %36 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %4, align 8
  %37 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %35
  %41 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %4, align 8
  %42 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %4, align 8
  %45 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %4, align 8
  %48 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @abx500_get_register_interruptible(i32 %43, i32 %46, i32 %49, i32* %6)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %4, align 8
  %53 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %51, %54
  store i32 %55, i32* %6, align 4
  %56 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %4, align 8
  %57 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %7, align 4
  %59 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %4, align 8
  %60 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %8, align 4
  br label %72

62:                                               ; preds = %35
  %63 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %4, align 8
  %64 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %6, align 4
  %66 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %4, align 8
  %67 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %7, align 4
  %69 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %4, align 8
  %70 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %62, %40
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  store i32 %77, i32* %5, align 4
  br label %88

78:                                               ; preds = %72
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* @REGULATOR_MODE_IDLE, align 4
  store i32 %83, i32* %5, align 4
  br label %87

84:                                               ; preds = %78
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %84, %82
  br label %88

88:                                               ; preds = %87, %76
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %33, %31, %13
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.ab8500_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @rdev_get_dev(%struct.regulator_dev*) #1

declare dso_local i32 @abx500_get_register_interruptible(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
