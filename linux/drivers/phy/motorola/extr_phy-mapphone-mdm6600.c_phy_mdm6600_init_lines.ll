; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/motorola/extr_phy-mapphone-mdm6600.c_phy_mdm6600_init_lines.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/motorola/extr_phy-mapphone-mdm6600.c_phy_mdm6600_init_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_mdm6600_map = type { i32, i32 }
%struct.phy_mdm6600 = type { %struct.gpio_desc*, %struct.gpio_desc*, %struct.gpio_desc*, %struct.gpio_desc**, %struct.device* }
%struct.gpio_desc = type { i64 }
%struct.device = type { i32 }

@phy_mdm6600_ctrl_gpio_map = common dso_local global %struct.phy_mdm6600_map* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"gpio %s error %li\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"motorola,mode\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@PHY_MDM6600_NR_MODE_LINES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"motorola,status\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@PHY_MDM6600_NR_STATUS_LINES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"motorola,cmd\00", align 1
@PHY_MDM6600_NR_CMD_LINES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_mdm6600*)* @phy_mdm6600_init_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_mdm6600_init_lines(%struct.phy_mdm6600* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_mdm6600*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phy_mdm6600_map*, align 8
  %7 = alloca %struct.gpio_desc**, align 8
  store %struct.phy_mdm6600* %0, %struct.phy_mdm6600** %3, align 8
  %8 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %9 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %8, i32 0, i32 4
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %53, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.phy_mdm6600_map*, %struct.phy_mdm6600_map** @phy_mdm6600_ctrl_gpio_map, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.phy_mdm6600_map* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %56

16:                                               ; preds = %11
  %17 = load %struct.phy_mdm6600_map*, %struct.phy_mdm6600_map** @phy_mdm6600_ctrl_gpio_map, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.phy_mdm6600_map, %struct.phy_mdm6600_map* %17, i64 %19
  store %struct.phy_mdm6600_map* %20, %struct.phy_mdm6600_map** %6, align 8
  %21 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %22 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %21, i32 0, i32 3
  %23 = load %struct.gpio_desc**, %struct.gpio_desc*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %23, i64 %25
  store %struct.gpio_desc** %26, %struct.gpio_desc*** %7, align 8
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load %struct.phy_mdm6600_map*, %struct.phy_mdm6600_map** %6, align 8
  %29 = getelementptr inbounds %struct.phy_mdm6600_map, %struct.phy_mdm6600_map* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.phy_mdm6600_map*, %struct.phy_mdm6600_map** %6, align 8
  %32 = getelementptr inbounds %struct.phy_mdm6600_map, %struct.phy_mdm6600_map* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.gpio_desc* @devm_gpiod_get(%struct.device* %27, i32 %30, i32 %33)
  %35 = load %struct.gpio_desc**, %struct.gpio_desc*** %7, align 8
  store %struct.gpio_desc* %34, %struct.gpio_desc** %35, align 8
  %36 = load %struct.gpio_desc**, %struct.gpio_desc*** %7, align 8
  %37 = load %struct.gpio_desc*, %struct.gpio_desc** %36, align 8
  %38 = call i64 @IS_ERR(%struct.gpio_desc* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %16
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load %struct.phy_mdm6600_map*, %struct.phy_mdm6600_map** %6, align 8
  %43 = getelementptr inbounds %struct.phy_mdm6600_map, %struct.phy_mdm6600_map* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.gpio_desc**, %struct.gpio_desc*** %7, align 8
  %46 = load %struct.gpio_desc*, %struct.gpio_desc** %45, align 8
  %47 = call i32 @PTR_ERR(%struct.gpio_desc* %46)
  %48 = call i32 @dev_info(%struct.device* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47)
  %49 = load %struct.gpio_desc**, %struct.gpio_desc*** %7, align 8
  %50 = load %struct.gpio_desc*, %struct.gpio_desc** %49, align 8
  %51 = call i32 @PTR_ERR(%struct.gpio_desc* %50)
  store i32 %51, i32* %2, align 4
  br label %141

52:                                               ; preds = %16
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %11

56:                                               ; preds = %11
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %59 = call i8* @devm_gpiod_get_array(%struct.device* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = bitcast i8* %59 to %struct.gpio_desc*
  %61 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %62 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %61, i32 0, i32 2
  store %struct.gpio_desc* %60, %struct.gpio_desc** %62, align 8
  %63 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %64 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %63, i32 0, i32 2
  %65 = load %struct.gpio_desc*, %struct.gpio_desc** %64, align 8
  %66 = call i64 @IS_ERR(%struct.gpio_desc* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %56
  %69 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %70 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %69, i32 0, i32 2
  %71 = load %struct.gpio_desc*, %struct.gpio_desc** %70, align 8
  %72 = call i32 @PTR_ERR(%struct.gpio_desc* %71)
  store i32 %72, i32* %2, align 4
  br label %141

73:                                               ; preds = %56
  %74 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %75 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %74, i32 0, i32 2
  %76 = load %struct.gpio_desc*, %struct.gpio_desc** %75, align 8
  %77 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @PHY_MDM6600_NR_MODE_LINES, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %141

84:                                               ; preds = %73
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = load i32, i32* @GPIOD_IN, align 4
  %87 = call i8* @devm_gpiod_get_array(%struct.device* %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = bitcast i8* %87 to %struct.gpio_desc*
  %89 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %90 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %89, i32 0, i32 1
  store %struct.gpio_desc* %88, %struct.gpio_desc** %90, align 8
  %91 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %92 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %91, i32 0, i32 1
  %93 = load %struct.gpio_desc*, %struct.gpio_desc** %92, align 8
  %94 = call i64 @IS_ERR(%struct.gpio_desc* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %84
  %97 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %98 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %97, i32 0, i32 1
  %99 = load %struct.gpio_desc*, %struct.gpio_desc** %98, align 8
  %100 = call i32 @PTR_ERR(%struct.gpio_desc* %99)
  store i32 %100, i32* %2, align 4
  br label %141

101:                                              ; preds = %84
  %102 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %103 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %102, i32 0, i32 1
  %104 = load %struct.gpio_desc*, %struct.gpio_desc** %103, align 8
  %105 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @PHY_MDM6600_NR_STATUS_LINES, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %141

112:                                              ; preds = %101
  %113 = load %struct.device*, %struct.device** %4, align 8
  %114 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %115 = call i8* @devm_gpiod_get_array(%struct.device* %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  %116 = bitcast i8* %115 to %struct.gpio_desc*
  %117 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %118 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %117, i32 0, i32 0
  store %struct.gpio_desc* %116, %struct.gpio_desc** %118, align 8
  %119 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %120 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %119, i32 0, i32 0
  %121 = load %struct.gpio_desc*, %struct.gpio_desc** %120, align 8
  %122 = call i64 @IS_ERR(%struct.gpio_desc* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %112
  %125 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %126 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %125, i32 0, i32 0
  %127 = load %struct.gpio_desc*, %struct.gpio_desc** %126, align 8
  %128 = call i32 @PTR_ERR(%struct.gpio_desc* %127)
  store i32 %128, i32* %2, align 4
  br label %141

129:                                              ; preds = %112
  %130 = load %struct.phy_mdm6600*, %struct.phy_mdm6600** %3, align 8
  %131 = getelementptr inbounds %struct.phy_mdm6600, %struct.phy_mdm6600* %130, i32 0, i32 0
  %132 = load %struct.gpio_desc*, %struct.gpio_desc** %131, align 8
  %133 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @PHY_MDM6600_NR_CMD_LINES, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %129
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %2, align 4
  br label %141

140:                                              ; preds = %129
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %140, %137, %124, %109, %96, %81, %68, %40
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @ARRAY_SIZE(%struct.phy_mdm6600_map*) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get(%struct.device*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i8* @devm_gpiod_get_array(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
