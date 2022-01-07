; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_soctherm_throt_cfg_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_soctherm_throt_cfg_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.soctherm_throt_cfg = type { i32, i32, i32, i32, i32 }
%struct.tegra_soctherm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"nvidia,priority\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"throttle-cfg: %s: invalid priority\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"nvidia,cpu-throt-level\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"nvidia,cpu-throt-percent\00", align 1
@TEGRA_SOCTHERM_THROT_LEVEL_HIGH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"nvidia,gpu-throt-level\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"throttle-cfg: %s: no throt prop or invalid prop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_node*, %struct.soctherm_throt_cfg*)* @soctherm_throt_cfg_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soctherm_throt_cfg_parse(%struct.device* %0, %struct.device_node* %1, %struct.soctherm_throt_cfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.soctherm_throt_cfg*, align 8
  %8 = alloca %struct.tegra_soctherm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.soctherm_throt_cfg* %2, %struct.soctherm_throt_cfg** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.tegra_soctherm* @dev_get_drvdata(%struct.device* %11)
  store %struct.tegra_soctherm* %12, %struct.tegra_soctherm** %8, align 8
  %13 = load %struct.device_node*, %struct.device_node** %6, align 8
  %14 = call i32 @of_property_read_u32(%struct.device_node* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %10)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load %struct.soctherm_throt_cfg*, %struct.soctherm_throt_cfg** %7, align 8
  %20 = getelementptr inbounds %struct.soctherm_throt_cfg, %struct.soctherm_throt_cfg* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %97

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.soctherm_throt_cfg*, %struct.soctherm_throt_cfg** %7, align 8
  %28 = getelementptr inbounds %struct.soctherm_throt_cfg, %struct.soctherm_throt_cfg* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.device_node*, %struct.device_node** %6, align 8
  %30 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %8, align 8
  %31 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0)
  %38 = call i32 @of_property_read_u32(%struct.device_node* %29, i8* %37, i32* %10)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %73, label %41

41:                                               ; preds = %25
  %42 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %8, align 8
  %43 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @TEGRA_SOCTHERM_THROT_LEVEL_HIGH, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.soctherm_throt_cfg*, %struct.soctherm_throt_cfg** %7, align 8
  %55 = getelementptr inbounds %struct.soctherm_throt_cfg, %struct.soctherm_throt_cfg* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %72

56:                                               ; preds = %48, %41
  %57 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %8, align 8
  %58 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %10, align 4
  %65 = icmp sle i32 %64, 100
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.soctherm_throt_cfg*, %struct.soctherm_throt_cfg** %7, align 8
  %69 = getelementptr inbounds %struct.soctherm_throt_cfg, %struct.soctherm_throt_cfg* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  br label %71

70:                                               ; preds = %63, %56
  br label %89

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %52
  br label %74

73:                                               ; preds = %25
  br label %89

74:                                               ; preds = %72
  %75 = load %struct.device_node*, %struct.device_node** %6, align 8
  %76 = call i32 @of_property_read_u32(%struct.device_node* %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32* %10)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @TEGRA_SOCTHERM_THROT_LEVEL_HIGH, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.soctherm_throt_cfg*, %struct.soctherm_throt_cfg** %7, align 8
  %86 = getelementptr inbounds %struct.soctherm_throt_cfg, %struct.soctherm_throt_cfg* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  br label %88

87:                                               ; preds = %79, %74
  br label %89

88:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %97

89:                                               ; preds = %87, %73, %70
  %90 = load %struct.device*, %struct.device** %5, align 8
  %91 = load %struct.soctherm_throt_cfg*, %struct.soctherm_throt_cfg** %7, align 8
  %92 = getelementptr inbounds %struct.soctherm_throt_cfg, %struct.soctherm_throt_cfg* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %89, %88, %17
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.tegra_soctherm* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
