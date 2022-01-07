; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_init_pmic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_init_pmic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77620_regulator = type { i32*, i32*, %struct.max77620_regulator_pdata* }
%struct.max77620_regulator_pdata = type { i32, i64 }

@MAX77620_POWER_MODE_NORMAL = common dso_local global i32 0, align 4
@MAX77620_FPS_SRC_DEF = common dso_local global i32 0, align 4
@MAX77620_FPS_SRC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77620_regulator*, i32)* @max77620_init_pmic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_init_pmic(%struct.max77620_regulator* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max77620_regulator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max77620_regulator_pdata*, align 8
  %7 = alloca i32, align 4
  store %struct.max77620_regulator* %0, %struct.max77620_regulator** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %9 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %8, i32 0, i32 2
  %10 = load %struct.max77620_regulator_pdata*, %struct.max77620_regulator_pdata** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.max77620_regulator_pdata, %struct.max77620_regulator_pdata* %10, i64 %12
  store %struct.max77620_regulator_pdata* %13, %struct.max77620_regulator_pdata** %6, align 8
  %14 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @max77620_config_power_ok(%struct.max77620_regulator* %14, i32 %15)
  %17 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @max77620_regulator_get_power_mode(%struct.max77620_regulator* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %148

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %27 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %25, i32* %31, align 4
  %32 = load i32, i32* @MAX77620_POWER_MODE_NORMAL, align 4
  %33 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %34 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %32, i32* %38, align 4
  %39 = load %struct.max77620_regulator_pdata*, %struct.max77620_regulator_pdata** %6, align 8
  %40 = getelementptr inbounds %struct.max77620_regulator_pdata, %struct.max77620_regulator_pdata* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MAX77620_FPS_SRC_DEF, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %24
  %45 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @max77620_regulator_get_fps_src(%struct.max77620_regulator* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %148

52:                                               ; preds = %44
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.max77620_regulator_pdata*, %struct.max77620_regulator_pdata** %6, align 8
  %55 = getelementptr inbounds %struct.max77620_regulator_pdata, %struct.max77620_regulator_pdata* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %52, %24
  %57 = load %struct.max77620_regulator_pdata*, %struct.max77620_regulator_pdata** %6, align 8
  %58 = getelementptr inbounds %struct.max77620_regulator_pdata, %struct.max77620_regulator_pdata* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MAX77620_FPS_SRC_NONE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %56
  %63 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %64 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %65 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @max77620_regulator_set_power_mode(%struct.max77620_regulator* %63, i32 %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %62
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %148

77:                                               ; preds = %62
  br label %111

78:                                               ; preds = %56
  %79 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %80 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %87 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %85, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %78
  %95 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %96 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %97 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @max77620_regulator_set_power_mode(%struct.max77620_regulator* %95, i32 %102, i32 %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %94
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %3, align 4
  br label %148

109:                                              ; preds = %94
  br label %110

110:                                              ; preds = %109, %78
  br label %111

111:                                              ; preds = %110, %77
  %112 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %113 = load %struct.max77620_regulator_pdata*, %struct.max77620_regulator_pdata** %6, align 8
  %114 = getelementptr inbounds %struct.max77620_regulator_pdata, %struct.max77620_regulator_pdata* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @max77620_regulator_set_fps_src(%struct.max77620_regulator* %112, i32 %115, i32 %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %111
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %3, align 4
  br label %148

122:                                              ; preds = %111
  %123 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @max77620_regulator_set_fps_slots(%struct.max77620_regulator* %123, i32 %124, i32 0)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %3, align 4
  br label %148

130:                                              ; preds = %122
  %131 = load %struct.max77620_regulator_pdata*, %struct.max77620_regulator_pdata** %6, align 8
  %132 = getelementptr inbounds %struct.max77620_regulator_pdata, %struct.max77620_regulator_pdata* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %130
  %136 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %137 = load i32, i32* %5, align 4
  %138 = load %struct.max77620_regulator_pdata*, %struct.max77620_regulator_pdata** %6, align 8
  %139 = getelementptr inbounds %struct.max77620_regulator_pdata, %struct.max77620_regulator_pdata* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @max77620_set_slew_rate(%struct.max77620_regulator* %136, i32 %137, i64 %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %135
  %145 = load i32, i32* %7, align 4
  store i32 %145, i32* %3, align 4
  br label %148

146:                                              ; preds = %135
  br label %147

147:                                              ; preds = %146, %130
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %147, %144, %128, %120, %107, %75, %50, %22
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @max77620_config_power_ok(%struct.max77620_regulator*, i32) #1

declare dso_local i32 @max77620_regulator_get_power_mode(%struct.max77620_regulator*, i32) #1

declare dso_local i32 @max77620_regulator_get_fps_src(%struct.max77620_regulator*, i32) #1

declare dso_local i32 @max77620_regulator_set_power_mode(%struct.max77620_regulator*, i32, i32) #1

declare dso_local i32 @max77620_regulator_set_fps_src(%struct.max77620_regulator*, i32, i32) #1

declare dso_local i32 @max77620_regulator_set_fps_slots(%struct.max77620_regulator*, i32, i32) #1

declare dso_local i32 @max77620_set_slew_rate(%struct.max77620_regulator*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
