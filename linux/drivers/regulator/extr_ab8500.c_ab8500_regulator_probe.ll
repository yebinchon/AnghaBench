; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500.c_ab8500_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500.c_ab8500_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.of_regulator_match*, i32 }
%struct.of_regulator_match = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node*, i32 }
%struct.device_node = type { i32 }
%struct.ab8500 = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"null mfd parent\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@abx500_regulator = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Error parsing regulator init data: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ab8500_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ab8500*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.of_regulator_match*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.ab8500* @dev_get_drvdata(i32 %12)
  store %struct.ab8500* %13, %struct.ab8500** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  %18 = load %struct.ab8500*, %struct.ab8500** %4, align 8
  %19 = icmp ne %struct.ab8500* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %74

26:                                               ; preds = %1
  %27 = load %struct.ab8500*, %struct.ab8500** %4, align 8
  %28 = call i32 @abx500_get_regulator_info(%struct.ab8500* %27)
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load %struct.device_node*, %struct.device_node** %5, align 8
  %32 = load %struct.of_regulator_match*, %struct.of_regulator_match** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @abx500_regulator, i32 0, i32 1), align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @abx500_regulator, i32 0, i32 2), align 8
  %34 = call i32 @of_regulator_match(%struct.TYPE_4__* %30, %struct.device_node* %31, %struct.of_regulator_match* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %26
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %74

43:                                               ; preds = %26
  %44 = load %struct.of_regulator_match*, %struct.of_regulator_match** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @abx500_regulator, i32 0, i32 1), align 8
  store %struct.of_regulator_match* %44, %struct.of_regulator_match** %6, align 8
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %70, %43
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @abx500_regulator, i32 0, i32 0), align 8
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %45
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = load %struct.of_regulator_match*, %struct.of_regulator_match** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %51, i64 %53
  %55 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.of_regulator_match*, %struct.of_regulator_match** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %58, i64 %60
  %62 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ab8500_regulator_register(%struct.platform_device* %50, i32 %56, i32 %57, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %49
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %74

69:                                               ; preds = %49
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %45

73:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %67, %37, %20
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.ab8500* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @abx500_get_regulator_info(%struct.ab8500*) #1

declare dso_local i32 @of_regulator_match(%struct.TYPE_4__*, %struct.device_node*, %struct.of_regulator_match*, i32) #1

declare dso_local i32 @ab8500_regulator_register(%struct.platform_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
