; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp5520_bl.c_adp5520_bl_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp5520_bl.c_adp5520_bl_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32 }
%struct.adp5520_bl = type { i32, %struct.adp5520_backlight_platform_data*, %struct.device* }
%struct.adp5520_backlight_platform_data = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { i32 }

@ADP5520_DAYLIGHT_MAX = common dso_local global i32 0, align 4
@ADP5520_DAYLIGHT_DIM = common dso_local global i32 0, align 4
@ADP5520_OFFICE_MAX = common dso_local global i32 0, align 4
@ADP5520_OFFICE_DIM = common dso_local global i32 0, align 4
@ADP5520_DARK_MAX = common dso_local global i32 0, align 4
@ADP5520_DARK_DIM = common dso_local global i32 0, align 4
@ADP5520_L2_TRIP = common dso_local global i32 0, align 4
@ADP5520_L2_HYS = common dso_local global i32 0, align 4
@ADP5520_L3_TRIP = common dso_local global i32 0, align 4
@ADP5520_L3_HYS = common dso_local global i32 0, align 4
@ADP5520_ALS_CMPR_CFG = common dso_local global i32 0, align 4
@ADP5520_L3_EN = common dso_local global i32 0, align 4
@ADP5520_BL_CONTROL = common dso_local global i32 0, align 4
@ADP5520_BL_FADE = common dso_local global i32 0, align 4
@ADP5520_MODE_STATUS = common dso_local global i32 0, align 4
@ADP5520_BL_EN = common dso_local global i32 0, align 4
@ADP5520_DIM_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @adp5520_bl_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5520_bl_setup(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca %struct.adp5520_bl*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.adp5520_backlight_platform_data*, align 8
  %6 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %8 = call %struct.adp5520_bl* @bl_get_data(%struct.backlight_device* %7)
  store %struct.adp5520_bl* %8, %struct.adp5520_bl** %3, align 8
  %9 = load %struct.adp5520_bl*, %struct.adp5520_bl** %3, align 8
  %10 = getelementptr inbounds %struct.adp5520_bl, %struct.adp5520_bl* %9, i32 0, i32 2
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.adp5520_bl*, %struct.adp5520_bl** %3, align 8
  %13 = getelementptr inbounds %struct.adp5520_bl, %struct.adp5520_bl* %12, i32 0, i32 1
  %14 = load %struct.adp5520_backlight_platform_data*, %struct.adp5520_backlight_platform_data** %13, align 8
  store %struct.adp5520_backlight_platform_data* %14, %struct.adp5520_backlight_platform_data** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* @ADP5520_DAYLIGHT_MAX, align 4
  %17 = load %struct.adp5520_backlight_platform_data*, %struct.adp5520_backlight_platform_data** %5, align 8
  %18 = getelementptr inbounds %struct.adp5520_backlight_platform_data, %struct.adp5520_backlight_platform_data* %17, i32 0, i32 13
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @adp5520_write(%struct.device* %15, i32 %16, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load i32, i32* @ADP5520_DAYLIGHT_DIM, align 4
  %25 = load %struct.adp5520_backlight_platform_data*, %struct.adp5520_backlight_platform_data** %5, align 8
  %26 = getelementptr inbounds %struct.adp5520_backlight_platform_data, %struct.adp5520_backlight_platform_data* %25, i32 0, i32 14
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @adp5520_write(%struct.device* %23, i32 %24, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load %struct.adp5520_backlight_platform_data*, %struct.adp5520_backlight_platform_data** %5, align 8
  %32 = getelementptr inbounds %struct.adp5520_backlight_platform_data, %struct.adp5520_backlight_platform_data* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %115

35:                                               ; preds = %1
  %36 = load %struct.adp5520_backlight_platform_data*, %struct.adp5520_backlight_platform_data** %5, align 8
  %37 = getelementptr inbounds %struct.adp5520_backlight_platform_data, %struct.adp5520_backlight_platform_data* %36, i32 0, i32 13
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.adp5520_bl*, %struct.adp5520_bl** %3, align 8
  %40 = getelementptr inbounds %struct.adp5520_bl, %struct.adp5520_bl* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load i32, i32* @ADP5520_OFFICE_MAX, align 4
  %43 = load %struct.adp5520_backlight_platform_data*, %struct.adp5520_backlight_platform_data** %5, align 8
  %44 = getelementptr inbounds %struct.adp5520_backlight_platform_data, %struct.adp5520_backlight_platform_data* %43, i32 0, i32 12
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @adp5520_write(%struct.device* %41, i32 %42, i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load i32, i32* @ADP5520_OFFICE_DIM, align 4
  %51 = load %struct.adp5520_backlight_platform_data*, %struct.adp5520_backlight_platform_data** %5, align 8
  %52 = getelementptr inbounds %struct.adp5520_backlight_platform_data, %struct.adp5520_backlight_platform_data* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @adp5520_write(%struct.device* %49, i32 %50, i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load i32, i32* @ADP5520_DARK_MAX, align 4
  %59 = load %struct.adp5520_backlight_platform_data*, %struct.adp5520_backlight_platform_data** %5, align 8
  %60 = getelementptr inbounds %struct.adp5520_backlight_platform_data, %struct.adp5520_backlight_platform_data* %59, i32 0, i32 10
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @adp5520_write(%struct.device* %57, i32 %58, i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load i32, i32* @ADP5520_DARK_DIM, align 4
  %67 = load %struct.adp5520_backlight_platform_data*, %struct.adp5520_backlight_platform_data** %5, align 8
  %68 = getelementptr inbounds %struct.adp5520_backlight_platform_data, %struct.adp5520_backlight_platform_data* %67, i32 0, i32 9
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @adp5520_write(%struct.device* %65, i32 %66, i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = load i32, i32* @ADP5520_L2_TRIP, align 4
  %75 = load %struct.adp5520_backlight_platform_data*, %struct.adp5520_backlight_platform_data** %5, align 8
  %76 = getelementptr inbounds %struct.adp5520_backlight_platform_data, %struct.adp5520_backlight_platform_data* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @adp5520_write(%struct.device* %73, i32 %74, i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = load i32, i32* @ADP5520_L2_HYS, align 4
  %83 = load %struct.adp5520_backlight_platform_data*, %struct.adp5520_backlight_platform_data** %5, align 8
  %84 = getelementptr inbounds %struct.adp5520_backlight_platform_data, %struct.adp5520_backlight_platform_data* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @adp5520_write(%struct.device* %81, i32 %82, i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = load i32, i32* @ADP5520_L3_TRIP, align 4
  %91 = load %struct.adp5520_backlight_platform_data*, %struct.adp5520_backlight_platform_data** %5, align 8
  %92 = getelementptr inbounds %struct.adp5520_backlight_platform_data, %struct.adp5520_backlight_platform_data* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @adp5520_write(%struct.device* %89, i32 %90, i32 %93)
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %6, align 4
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = load i32, i32* @ADP5520_L3_HYS, align 4
  %99 = load %struct.adp5520_backlight_platform_data*, %struct.adp5520_backlight_platform_data** %5, align 8
  %100 = getelementptr inbounds %struct.adp5520_backlight_platform_data, %struct.adp5520_backlight_platform_data* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @adp5520_write(%struct.device* %97, i32 %98, i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %6, align 4
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = load i32, i32* @ADP5520_ALS_CMPR_CFG, align 4
  %107 = load %struct.adp5520_backlight_platform_data*, %struct.adp5520_backlight_platform_data** %5, align 8
  %108 = getelementptr inbounds %struct.adp5520_backlight_platform_data, %struct.adp5520_backlight_platform_data* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @ADP5520_L3_EN, align 4
  %111 = call i32 @ALS_CMPR_CFG_VAL(i32 %109, i32 %110)
  %112 = call i32 @adp5520_write(%struct.device* %105, i32 %106, i32 %111)
  %113 = load i32, i32* %6, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %35, %1
  %116 = load %struct.device*, %struct.device** %4, align 8
  %117 = load i32, i32* @ADP5520_BL_CONTROL, align 4
  %118 = load %struct.adp5520_backlight_platform_data*, %struct.adp5520_backlight_platform_data** %5, align 8
  %119 = getelementptr inbounds %struct.adp5520_backlight_platform_data, %struct.adp5520_backlight_platform_data* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.adp5520_backlight_platform_data*, %struct.adp5520_backlight_platform_data** %5, align 8
  %122 = getelementptr inbounds %struct.adp5520_backlight_platform_data, %struct.adp5520_backlight_platform_data* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @BL_CTRL_VAL(i32 %120, i64 %123)
  %125 = call i32 @adp5520_write(%struct.device* %116, i32 %117, i32 %124)
  %126 = load i32, i32* %6, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %6, align 4
  %128 = load %struct.device*, %struct.device** %4, align 8
  %129 = load i32, i32* @ADP5520_BL_FADE, align 4
  %130 = load %struct.adp5520_backlight_platform_data*, %struct.adp5520_backlight_platform_data** %5, align 8
  %131 = getelementptr inbounds %struct.adp5520_backlight_platform_data, %struct.adp5520_backlight_platform_data* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.adp5520_backlight_platform_data*, %struct.adp5520_backlight_platform_data** %5, align 8
  %134 = getelementptr inbounds %struct.adp5520_backlight_platform_data, %struct.adp5520_backlight_platform_data* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @FADE_VAL(i32 %132, i32 %135)
  %137 = call i32 @adp5520_write(%struct.device* %128, i32 %129, i32 %136)
  %138 = load i32, i32* %6, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %6, align 4
  %140 = load %struct.device*, %struct.device** %4, align 8
  %141 = load i32, i32* @ADP5520_MODE_STATUS, align 4
  %142 = load i32, i32* @ADP5520_BL_EN, align 4
  %143 = load i32, i32* @ADP5520_DIM_EN, align 4
  %144 = or i32 %142, %143
  %145 = call i32 @adp5520_set_bits(%struct.device* %140, i32 %141, i32 %144)
  %146 = load i32, i32* %6, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local %struct.adp5520_bl* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @adp5520_write(%struct.device*, i32, i32) #1

declare dso_local i32 @ALS_CMPR_CFG_VAL(i32, i32) #1

declare dso_local i32 @BL_CTRL_VAL(i32, i64) #1

declare dso_local i32 @FADE_VAL(i32, i32) #1

declare dso_local i32 @adp5520_set_bits(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
