; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_regulator_set_fps_slots.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_regulator_set_fps_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77620_regulator = type { i32, i32, %struct.max77620_regulator_info**, %struct.max77620_regulator_pdata* }
%struct.max77620_regulator_info = type { i32 }
%struct.max77620_regulator_pdata = type { i32, i32, i32, i32 }

@MAX77620_FPS_PU_PERIOD_SHIFT = common dso_local global i32 0, align 4
@MAX77620_FPS_PU_PERIOD_MASK = common dso_local global i32 0, align 4
@MAX77620_FPS_PD_PERIOD_SHIFT = common dso_local global i32 0, align 4
@MAX77620_FPS_PD_PERIOD_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Reg 0x%02x update failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77620_regulator*, i32, i32)* @max77620_regulator_set_fps_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_regulator_set_fps_slots(%struct.max77620_regulator* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.max77620_regulator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.max77620_regulator_pdata*, align 8
  %9 = alloca %struct.max77620_regulator_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.max77620_regulator* %0, %struct.max77620_regulator** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.max77620_regulator*, %struct.max77620_regulator** %5, align 8
  %16 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %15, i32 0, i32 3
  %17 = load %struct.max77620_regulator_pdata*, %struct.max77620_regulator_pdata** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.max77620_regulator_pdata, %struct.max77620_regulator_pdata* %17, i64 %19
  store %struct.max77620_regulator_pdata* %20, %struct.max77620_regulator_pdata** %8, align 8
  %21 = load %struct.max77620_regulator*, %struct.max77620_regulator** %5, align 8
  %22 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %21, i32 0, i32 2
  %23 = load %struct.max77620_regulator_info**, %struct.max77620_regulator_info*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %23, i64 %25
  %27 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %26, align 8
  store %struct.max77620_regulator_info* %27, %struct.max77620_regulator_info** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %28 = load %struct.max77620_regulator_pdata*, %struct.max77620_regulator_pdata** %8, align 8
  %29 = getelementptr inbounds %struct.max77620_regulator_pdata, %struct.max77620_regulator_pdata* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load %struct.max77620_regulator_pdata*, %struct.max77620_regulator_pdata** %8, align 8
  %32 = getelementptr inbounds %struct.max77620_regulator_pdata, %struct.max77620_regulator_pdata* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %34 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %9, align 8
  %35 = icmp ne %struct.max77620_regulator_info* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %99

37:                                               ; preds = %3
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load %struct.max77620_regulator_pdata*, %struct.max77620_regulator_pdata** %8, align 8
  %42 = getelementptr inbounds %struct.max77620_regulator_pdata, %struct.max77620_regulator_pdata* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %12, align 4
  %44 = load %struct.max77620_regulator_pdata*, %struct.max77620_regulator_pdata** %8, align 8
  %45 = getelementptr inbounds %struct.max77620_regulator_pdata, %struct.max77620_regulator_pdata* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %40, %37
  %48 = load i32, i32* %12, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @MAX77620_FPS_PU_PERIOD_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* @MAX77620_FPS_PU_PERIOD_MASK, align 4
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %50, %47
  %60 = load i32, i32* %13, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @MAX77620_FPS_PD_PERIOD_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = load i32, i32* %10, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* @MAX77620_FPS_PD_PERIOD_MASK, align 4
  %69 = load i32, i32* %11, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %62, %59
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %71
  %75 = load %struct.max77620_regulator*, %struct.max77620_regulator** %5, align 8
  %76 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %9, align 8
  %79 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @regmap_update_bits(i32 %77, i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %74
  %87 = load %struct.max77620_regulator*, %struct.max77620_regulator** %5, align 8
  %88 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %9, align 8
  %91 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @dev_err(i32 %89, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %4, align 4
  br label %99

96:                                               ; preds = %74
  br label %97

97:                                               ; preds = %96, %71
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %97, %86, %36
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
