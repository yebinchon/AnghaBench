; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp5520_bl.c_adp5520_bl_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp5520_bl.c_adp5520_bl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32 }
%struct.adp5520_bl = type { i32, i32, %struct.TYPE_2__*, %struct.device* }
%struct.TYPE_2__ = type { i64 }
%struct.device = type { i32 }

@ADP5020_MAX_BRIGHTNESS = common dso_local global i32 0, align 4
@ADP5520_BL_CONTROL = common dso_local global i32 0, align 4
@ADP5520_BL_AUTO_ADJ = common dso_local global i32 0, align 4
@ADP5520_DAYLIGHT_MAX = common dso_local global i32 0, align 4
@ADP5520_MODE_STATUS = common dso_local global i32 0, align 4
@ADP5520_DIM_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*, i32)* @adp5520_bl_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5520_bl_set(%struct.backlight_device* %0, i32 %1) #0 {
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adp5520_bl*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %9 = call %struct.adp5520_bl* @bl_get_data(%struct.backlight_device* %8)
  store %struct.adp5520_bl* %9, %struct.adp5520_bl** %5, align 8
  %10 = load %struct.adp5520_bl*, %struct.adp5520_bl** %5, align 8
  %11 = getelementptr inbounds %struct.adp5520_bl, %struct.adp5520_bl* %10, i32 0, i32 3
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.adp5520_bl*, %struct.adp5520_bl** %5, align 8
  %14 = getelementptr inbounds %struct.adp5520_bl, %struct.adp5520_bl* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @ADP5020_MAX_BRIGHTNESS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load i32, i32* @ADP5520_BL_CONTROL, align 4
  %29 = load i32, i32* @ADP5520_BL_AUTO_ADJ, align 4
  %30 = call i32 @adp5520_clr_bits(%struct.device* %27, i32 %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load i32, i32* @ADP5520_DAYLIGHT_MAX, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @adp5520_write(%struct.device* %33, i32 %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %54

39:                                               ; preds = %22, %19
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = load i32, i32* @ADP5520_DAYLIGHT_MAX, align 4
  %42 = load %struct.adp5520_bl*, %struct.adp5520_bl** %5, align 8
  %43 = getelementptr inbounds %struct.adp5520_bl, %struct.adp5520_bl* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @adp5520_write(%struct.device* %40, i32 %41, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = load i32, i32* @ADP5520_BL_CONTROL, align 4
  %50 = load i32, i32* @ADP5520_BL_AUTO_ADJ, align 4
  %51 = call i32 @adp5520_set_bits(%struct.device* %48, i32 %49, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %39, %26
  br label %62

55:                                               ; preds = %2
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = load i32, i32* @ADP5520_DAYLIGHT_MAX, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @adp5520_write(%struct.device* %56, i32 %57, i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %55, %54
  %63 = load %struct.adp5520_bl*, %struct.adp5520_bl** %5, align 8
  %64 = getelementptr inbounds %struct.adp5520_bl, %struct.adp5520_bl* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = load i32, i32* @ADP5520_MODE_STATUS, align 4
  %73 = load i32, i32* @ADP5520_DIM_EN, align 4
  %74 = call i32 @adp5520_set_bits(%struct.device* %71, i32 %72, i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %93

77:                                               ; preds = %67, %62
  %78 = load %struct.adp5520_bl*, %struct.adp5520_bl** %5, align 8
  %79 = getelementptr inbounds %struct.adp5520_bl, %struct.adp5520_bl* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load %struct.device*, %struct.device** %6, align 8
  %87 = load i32, i32* @ADP5520_MODE_STATUS, align 4
  %88 = load i32, i32* @ADP5520_DIM_EN, align 4
  %89 = call i32 @adp5520_clr_bits(%struct.device* %86, i32 %87, i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %85, %82, %77
  br label %93

93:                                               ; preds = %92, %70
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.adp5520_bl*, %struct.adp5520_bl** %5, align 8
  %99 = getelementptr inbounds %struct.adp5520_bl, %struct.adp5520_bl* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %96, %93
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local %struct.adp5520_bl* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @adp5520_clr_bits(%struct.device*, i32, i32) #1

declare dso_local i32 @adp5520_write(%struct.device*, i32, i32) #1

declare dso_local i32 @adp5520_set_bits(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
