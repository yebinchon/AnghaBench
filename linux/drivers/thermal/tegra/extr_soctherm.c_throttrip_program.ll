; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_throttrip_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_throttrip_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tegra_tsensor_group = type { i32, i32, i32 }
%struct.soctherm_throt_cfg = type { i32, i32 }
%struct.tegra_soctherm = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@THROTTLE_LIGHT = common dso_local global i32 0, align 4
@THERMCTL_LVL0_CPU0_CPU_THROT_LIGHT = common dso_local global i32 0, align 4
@THERMCTL_LVL0_CPU0_GPU_THROT_LIGHT = common dso_local global i32 0, align 4
@THERMCTL_LVL0_CPU0_CPU_THROT_HEAVY = common dso_local global i32 0, align 4
@THERMCTL_LVL0_CPU0_GPU_THROT_HEAVY = common dso_local global i32 0, align 4
@THROTTLE_HEAVY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"invalid throt id %d - assuming HEAVY\00", align 1
@THERMCTL_LVL0_CPU0_CPU_THROT_MASK = common dso_local global i32 0, align 4
@THERMCTL_LVL0_CPU0_GPU_THROT_MASK = common dso_local global i32 0, align 4
@THERMCTL_LVL0_CPU0_EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.tegra_tsensor_group*, %struct.soctherm_throt_cfg*, i32)* @throttrip_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @throttrip_program(%struct.device* %0, %struct.tegra_tsensor_group* %1, %struct.soctherm_throt_cfg* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.tegra_tsensor_group*, align 8
  %8 = alloca %struct.soctherm_throt_cfg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tegra_soctherm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.tegra_tsensor_group* %1, %struct.tegra_tsensor_group** %7, align 8
  store %struct.soctherm_throt_cfg* %2, %struct.soctherm_throt_cfg** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.tegra_soctherm* @dev_get_drvdata(%struct.device* %17)
  store %struct.tegra_soctherm* %18, %struct.tegra_soctherm** %10, align 8
  %19 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %7, align 8
  %20 = icmp ne %struct.tegra_tsensor_group* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = load %struct.soctherm_throt_cfg*, %struct.soctherm_throt_cfg** %8, align 8
  %23 = icmp ne %struct.soctherm_throt_cfg* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.soctherm_throt_cfg*, %struct.soctherm_throt_cfg** %8, align 8
  %26 = getelementptr inbounds %struct.soctherm_throt_cfg, %struct.soctherm_throt_cfg* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24, %21, %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %105

32:                                               ; preds = %24
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @enforce_temp_range(%struct.device* %33, i32 %34)
  %36 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %10, align 8
  %37 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %35, %40
  store i32 %41, i32* %11, align 4
  %42 = load %struct.soctherm_throt_cfg*, %struct.soctherm_throt_cfg** %8, align 8
  %43 = getelementptr inbounds %struct.soctherm_throt_cfg, %struct.soctherm_throt_cfg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %14, align 4
  %45 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %7, align 8
  %46 = getelementptr inbounds %struct.tegra_tsensor_group, %struct.tegra_tsensor_group* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %14, align 4
  %49 = add i32 %48, 1
  %50 = call i64 @THERMCTL_LVL_REG(i32 %47, i32 %49)
  store i64 %50, i64* %16, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @THROTTLE_LIGHT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %32
  %55 = load i32, i32* @THERMCTL_LVL0_CPU0_CPU_THROT_LIGHT, align 4
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* @THERMCTL_LVL0_CPU0_GPU_THROT_LIGHT, align 4
  store i32 %56, i32* %13, align 4
  br label %68

57:                                               ; preds = %32
  %58 = load i32, i32* @THERMCTL_LVL0_CPU0_CPU_THROT_HEAVY, align 4
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* @THERMCTL_LVL0_CPU0_GPU_THROT_HEAVY, align 4
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @THROTTLE_HEAVY, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @dev_warn(%struct.device* %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %63, %57
  br label %68

68:                                               ; preds = %67, %54
  %69 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %10, align 8
  %70 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %16, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i64 @readl(i64 %73)
  store i64 %74, i64* %15, align 8
  %75 = load i64, i64* %15, align 8
  %76 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %7, align 8
  %77 = getelementptr inbounds %struct.tegra_tsensor_group, %struct.tegra_tsensor_group* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i64 @REG_SET_MASK(i64 %75, i32 %78, i32 %79)
  store i64 %80, i64* %15, align 8
  %81 = load i64, i64* %15, align 8
  %82 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %7, align 8
  %83 = getelementptr inbounds %struct.tegra_tsensor_group, %struct.tegra_tsensor_group* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i64 @REG_SET_MASK(i64 %81, i32 %84, i32 %85)
  store i64 %86, i64* %15, align 8
  %87 = load i64, i64* %15, align 8
  %88 = load i32, i32* @THERMCTL_LVL0_CPU0_CPU_THROT_MASK, align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i64 @REG_SET_MASK(i64 %87, i32 %88, i32 %89)
  store i64 %90, i64* %15, align 8
  %91 = load i64, i64* %15, align 8
  %92 = load i32, i32* @THERMCTL_LVL0_CPU0_GPU_THROT_MASK, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i64 @REG_SET_MASK(i64 %91, i32 %92, i32 %93)
  store i64 %94, i64* %15, align 8
  %95 = load i64, i64* %15, align 8
  %96 = load i32, i32* @THERMCTL_LVL0_CPU0_EN_MASK, align 4
  %97 = call i64 @REG_SET_MASK(i64 %95, i32 %96, i32 1)
  store i64 %97, i64* %15, align 8
  %98 = load i64, i64* %15, align 8
  %99 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %10, align 8
  %100 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %16, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @writel(i64 %98, i64 %103)
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %68, %29
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local %struct.tegra_soctherm* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @enforce_temp_range(%struct.device*, i32) #1

declare dso_local i64 @THERMCTL_LVL_REG(i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @REG_SET_MASK(i64, i32, i32) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
