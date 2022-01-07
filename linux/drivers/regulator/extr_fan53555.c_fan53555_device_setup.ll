; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_fan53555.c_fan53555_device_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_fan53555.c_fan53555_device_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fan53555_device_info = type { i32, i32, i32, i8*, i8*, i8* }
%struct.fan53555_platform_data = type { i32 }

@FAN53555_VSEL0 = common dso_local global i8* null, align 8
@FAN53555_VSEL1 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"Invalid VSEL ID!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FAN53555_CONTROL = common dso_local global i8* null, align 8
@CTL_MODE_VSEL1_MODE = common dso_local global i32 0, align 4
@CTL_MODE_VSEL0_MODE = common dso_local global i32 0, align 4
@VSEL_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"vendor %d not supported!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fan53555_device_info*, %struct.fan53555_platform_data*)* @fan53555_device_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan53555_device_setup(%struct.fan53555_device_info* %0, %struct.fan53555_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fan53555_device_info*, align 8
  %5 = alloca %struct.fan53555_platform_data*, align 8
  %6 = alloca i32, align 4
  store %struct.fan53555_device_info* %0, %struct.fan53555_device_info** %4, align 8
  store %struct.fan53555_platform_data* %1, %struct.fan53555_platform_data** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.fan53555_platform_data*, %struct.fan53555_platform_data** %5, align 8
  %8 = getelementptr inbounds %struct.fan53555_platform_data, %struct.fan53555_platform_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %24 [
    i32 129, label %10
    i32 128, label %17
  ]

10:                                               ; preds = %2
  %11 = load i8*, i8** @FAN53555_VSEL0, align 8
  %12 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %4, align 8
  %13 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %12, i32 0, i32 5
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** @FAN53555_VSEL1, align 8
  %15 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %4, align 8
  %16 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %15, i32 0, i32 3
  store i8* %14, i8** %16, align 8
  br label %31

17:                                               ; preds = %2
  %18 = load i8*, i8** @FAN53555_VSEL1, align 8
  %19 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %4, align 8
  %20 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %19, i32 0, i32 5
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @FAN53555_VSEL0, align 8
  %22 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %4, align 8
  %23 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  br label %31

24:                                               ; preds = %2
  %25 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %4, align 8
  %26 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @dev_err(i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %95

31:                                               ; preds = %17, %10
  %32 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %4, align 8
  %33 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %60 [
    i32 132, label %35
    i32 131, label %51
    i32 130, label %51
  ]

35:                                               ; preds = %31
  %36 = load i8*, i8** @FAN53555_CONTROL, align 8
  %37 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %4, align 8
  %38 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  %39 = load %struct.fan53555_platform_data*, %struct.fan53555_platform_data** %5, align 8
  %40 = getelementptr inbounds %struct.fan53555_platform_data, %struct.fan53555_platform_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %50 [
    i32 129, label %42
    i32 128, label %46
  ]

42:                                               ; preds = %35
  %43 = load i32, i32* @CTL_MODE_VSEL1_MODE, align 4
  %44 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %4, align 8
  %45 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  br label %50

46:                                               ; preds = %35
  %47 = load i32, i32* @CTL_MODE_VSEL0_MODE, align 4
  %48 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %4, align 8
  %49 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %35, %46, %42
  br label %70

51:                                               ; preds = %31, %31
  %52 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %4, align 8
  %53 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %52, i32 0, i32 3
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %4, align 8
  %56 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @VSEL_MODE, align 4
  %58 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %4, align 8
  %59 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  br label %70

60:                                               ; preds = %31
  %61 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %4, align 8
  %62 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %4, align 8
  %65 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i32, i8*, ...) @dev_err(i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %95

70:                                               ; preds = %51, %50
  %71 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %4, align 8
  %72 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %83 [
    i32 132, label %74
    i32 131, label %77
    i32 130, label %80
  ]

74:                                               ; preds = %70
  %75 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %4, align 8
  %76 = call i32 @fan53526_voltages_setup_fairchild(%struct.fan53555_device_info* %75)
  store i32 %76, i32* %6, align 4
  br label %93

77:                                               ; preds = %70
  %78 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %4, align 8
  %79 = call i32 @fan53555_voltages_setup_fairchild(%struct.fan53555_device_info* %78)
  store i32 %79, i32* %6, align 4
  br label %93

80:                                               ; preds = %70
  %81 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %4, align 8
  %82 = call i32 @fan53555_voltages_setup_silergy(%struct.fan53555_device_info* %81)
  store i32 %82, i32* %6, align 4
  br label %93

83:                                               ; preds = %70
  %84 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %4, align 8
  %85 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.fan53555_device_info*, %struct.fan53555_device_info** %4, align 8
  %88 = getelementptr inbounds %struct.fan53555_device_info, %struct.fan53555_device_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i32, i8*, ...) @dev_err(i32 %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %95

93:                                               ; preds = %80, %77, %74
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %83, %60, %24
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @fan53526_voltages_setup_fairchild(%struct.fan53555_device_info*) #1

declare dso_local i32 @fan53555_voltages_setup_fairchild(%struct.fan53555_device_info*) #1

declare dso_local i32 @fan53555_voltages_setup_silergy(%struct.fan53555_device_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
