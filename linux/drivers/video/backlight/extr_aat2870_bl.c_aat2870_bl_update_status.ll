; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_aat2870_bl.c_aat2870_bl_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_aat2870_bl.c_aat2870_bl_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i32 }
%struct.aat2870_bl_driver_data = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.aat2870_data = type { i32 (%struct.aat2870_data*, i32, i32)* }

@.str = private unnamed_addr constant [24 x i8] c"invalid brightness, %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"brightness=%d, power=%d, state=%d\0A\00", align 1
@FB_BLANK_UNBLANK = common dso_local global i64 0, align 8
@BL_CORE_FBBLANK = common dso_local global i32 0, align 4
@BL_CORE_SUSPENDED = common dso_local global i32 0, align 4
@AAT2870_BLM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @aat2870_bl_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aat2870_bl_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.aat2870_bl_driver_data*, align 8
  %5 = alloca %struct.aat2870_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %8 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %9 = call %struct.aat2870_bl_driver_data* @bl_get_data(%struct.backlight_device* %8)
  store %struct.aat2870_bl_driver_data* %9, %struct.aat2870_bl_driver_data** %4, align 8
  %10 = load %struct.aat2870_bl_driver_data*, %struct.aat2870_bl_driver_data** %4, align 8
  %11 = getelementptr inbounds %struct.aat2870_bl_driver_data, %struct.aat2870_bl_driver_data* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.aat2870_data* @dev_get_drvdata(i32 %15)
  store %struct.aat2870_data* %16, %struct.aat2870_data** %5, align 8
  %17 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %18 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %1
  %24 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %25 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %23, %1
  %31 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %32 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %31, i32 0, i32 1
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %120

37:                                               ; preds = %23
  %38 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %39 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %38, i32 0, i32 1
  %40 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %41 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %45 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %49 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dev_dbg(i32* %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %43, i64 %47, i32 %51)
  %53 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %54 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %75, label %59

59:                                               ; preds = %37
  %60 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %61 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @BL_CORE_FBBLANK, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %59
  %68 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %69 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @BL_CORE_SUSPENDED, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67, %59, %37
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %67
  %77 = load %struct.aat2870_data*, %struct.aat2870_data** %5, align 8
  %78 = getelementptr inbounds %struct.aat2870_data, %struct.aat2870_data* %77, i32 0, i32 0
  %79 = load i32 (%struct.aat2870_data*, i32, i32)*, i32 (%struct.aat2870_data*, i32, i32)** %78, align 8
  %80 = load %struct.aat2870_data*, %struct.aat2870_data** %5, align 8
  %81 = load i32, i32* @AAT2870_BLM, align 4
  %82 = load %struct.aat2870_bl_driver_data*, %struct.aat2870_bl_driver_data** %4, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i64 @aat2870_brightness(%struct.aat2870_bl_driver_data* %82, i32 %83)
  %85 = trunc i64 %84 to i32
  %86 = call i32 %79(%struct.aat2870_data* %80, i32 %81, i32 %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %76
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %2, align 4
  br label %120

91:                                               ; preds = %76
  %92 = load i32, i32* %6, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load %struct.aat2870_bl_driver_data*, %struct.aat2870_bl_driver_data** %4, align 8
  %96 = call i32 @aat2870_bl_disable(%struct.aat2870_bl_driver_data* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  br label %120

101:                                              ; preds = %94
  br label %116

102:                                              ; preds = %91
  %103 = load %struct.aat2870_bl_driver_data*, %struct.aat2870_bl_driver_data** %4, align 8
  %104 = getelementptr inbounds %struct.aat2870_bl_driver_data, %struct.aat2870_bl_driver_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load %struct.aat2870_bl_driver_data*, %struct.aat2870_bl_driver_data** %4, align 8
  %109 = call i32 @aat2870_bl_enable(%struct.aat2870_bl_driver_data* %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %2, align 4
  br label %120

114:                                              ; preds = %107
  br label %115

115:                                              ; preds = %114, %102
  br label %116

116:                                              ; preds = %115, %101
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.aat2870_bl_driver_data*, %struct.aat2870_bl_driver_data** %4, align 8
  %119 = getelementptr inbounds %struct.aat2870_bl_driver_data, %struct.aat2870_bl_driver_data* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %116, %112, %99, %89, %30
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.aat2870_bl_driver_data* @bl_get_data(%struct.backlight_device*) #1

declare dso_local %struct.aat2870_data* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i64, i32) #1

declare dso_local i64 @aat2870_brightness(%struct.aat2870_bl_driver_data*, i32) #1

declare dso_local i32 @aat2870_bl_disable(%struct.aat2870_bl_driver_data*) #1

declare dso_local i32 @aat2870_bl_enable(%struct.aat2870_bl_driver_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
