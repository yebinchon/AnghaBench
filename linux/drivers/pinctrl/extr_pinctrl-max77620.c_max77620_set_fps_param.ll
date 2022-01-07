; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-max77620.c_max77620_set_fps_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-max77620.c_max77620_set_fps_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77620_pctrl_info = type { i32, i32, %struct.max77620_fps_config* }
%struct.max77620_fps_config = type { i32, i32, i32, i32, i32, i32 }

@MAX77620_GPIO1 = common dso_local global i32 0, align 4
@MAX77620_GPIO3 = common dso_local global i32 0, align 4
@MAX77620_REG_FPS_GPIO1 = common dso_local global i32 0, align 4
@MAX77620_FPS_SRC_MASK = common dso_local global i32 0, align 4
@MAX77620_FPS_SRC_SHIFT = common dso_local global i32 0, align 4
@MAX77620_FPS_PU_PERIOD_MASK = common dso_local global i32 0, align 4
@MAX77620_FPS_PU_PERIOD_SHIFT = common dso_local global i32 0, align 4
@MAX77620_FPS_PD_PERIOD_MASK = common dso_local global i32 0, align 4
@MAX77620_FPS_PD_PERIOD_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Invalid parameter %d for pin %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Reg 0x%02x update failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77620_pctrl_info*, i32, i32)* @max77620_set_fps_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_set_fps_param(%struct.max77620_pctrl_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.max77620_pctrl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.max77620_fps_config*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.max77620_pctrl_info* %0, %struct.max77620_pctrl_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %5, align 8
  %15 = getelementptr inbounds %struct.max77620_pctrl_info, %struct.max77620_pctrl_info* %14, i32 0, i32 2
  %16 = load %struct.max77620_fps_config*, %struct.max77620_fps_config** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.max77620_fps_config, %struct.max77620_fps_config* %16, i64 %18
  store %struct.max77620_fps_config* %19, %struct.max77620_fps_config** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MAX77620_GPIO1, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MAX77620_GPIO3, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %3
  store i32 0, i32* %4, align 4
  br label %107

28:                                               ; preds = %23
  %29 = load i32, i32* @MAX77620_REG_FPS_GPIO1, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  switch i32 %33, label %73 [
    i32 131, label %34
    i32 128, label %34
    i32 132, label %47
    i32 129, label %47
    i32 133, label %60
    i32 130, label %60
  ]

34:                                               ; preds = %28, %28
  %35 = load i32, i32* @MAX77620_FPS_SRC_MASK, align 4
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* @MAX77620_FPS_SRC_SHIFT, align 4
  store i32 %36, i32* %13, align 4
  %37 = load %struct.max77620_fps_config*, %struct.max77620_fps_config** %8, align 8
  %38 = getelementptr inbounds %struct.max77620_fps_config, %struct.max77620_fps_config* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 128
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load %struct.max77620_fps_config*, %struct.max77620_fps_config** %8, align 8
  %44 = getelementptr inbounds %struct.max77620_fps_config, %struct.max77620_fps_config* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %42, %34
  br label %82

47:                                               ; preds = %28, %28
  %48 = load i32, i32* @MAX77620_FPS_PU_PERIOD_MASK, align 4
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* @MAX77620_FPS_PU_PERIOD_SHIFT, align 4
  store i32 %49, i32* %13, align 4
  %50 = load %struct.max77620_fps_config*, %struct.max77620_fps_config** %8, align 8
  %51 = getelementptr inbounds %struct.max77620_fps_config, %struct.max77620_fps_config* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 129
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load %struct.max77620_fps_config*, %struct.max77620_fps_config** %8, align 8
  %57 = getelementptr inbounds %struct.max77620_fps_config, %struct.max77620_fps_config* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %55, %47
  br label %82

60:                                               ; preds = %28, %28
  %61 = load i32, i32* @MAX77620_FPS_PD_PERIOD_MASK, align 4
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* @MAX77620_FPS_PD_PERIOD_SHIFT, align 4
  store i32 %62, i32* %13, align 4
  %63 = load %struct.max77620_fps_config*, %struct.max77620_fps_config** %8, align 8
  %64 = getelementptr inbounds %struct.max77620_fps_config, %struct.max77620_fps_config* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, 130
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load %struct.max77620_fps_config*, %struct.max77620_fps_config** %8, align 8
  %70 = getelementptr inbounds %struct.max77620_fps_config, %struct.max77620_fps_config* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %68, %60
  br label %82

73:                                               ; preds = %28
  %74 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %5, align 8
  %75 = getelementptr inbounds %struct.max77620_pctrl_info, %struct.max77620_pctrl_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %107

82:                                               ; preds = %72, %59, %46
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %107

86:                                               ; preds = %82
  %87 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %5, align 8
  %88 = getelementptr inbounds %struct.max77620_pctrl_info, %struct.max77620_pctrl_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %13, align 4
  %94 = shl i32 %92, %93
  %95 = call i32 @regmap_update_bits(i32 %89, i32 %90, i32 %91, i32 %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %86
  %99 = load %struct.max77620_pctrl_info*, %struct.max77620_pctrl_info** %5, align 8
  %100 = getelementptr inbounds %struct.max77620_pctrl_info, %struct.max77620_pctrl_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @dev_err(i32 %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %98, %86
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %85, %73, %27
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
