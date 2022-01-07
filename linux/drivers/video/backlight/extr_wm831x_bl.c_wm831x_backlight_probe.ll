; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_wm831x_bl.c_wm831x_backlight_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_wm831x_bl.c_wm831x_backlight_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.wm831x = type { i32 }
%struct.wm831x_pdata = type { %struct.wm831x_backlight_pdata* }
%struct.wm831x_backlight_pdata = type { i64, i32 }
%struct.wm831x_backlight_data = type { i32, i64, %struct.wm831x* }
%struct.backlight_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.backlight_properties = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"No platform data supplied\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM831X_ISINK_MAX_ISEL = common dso_local global i32 0, align 4
@wm831x_isinkv_values = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid max_uA: %duA\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Maximum current is %duA not %duA as requested\0A\00", align 1
@WM831X_CURRENT_SINK_1 = common dso_local global i32 0, align 4
@WM831X_CURRENT_SINK_2 = common dso_local global i32 0, align 4
@WM831X_DC4_FBSRC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Invalid ISINK %d\0A\00", align 1
@WM831X_DC4_CONTROL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"wm831x\00", align 1
@wm831x_backlight_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to register backlight\0A\00", align 1
@WM831X_DCDC_ENABLE = common dso_local global i32 0, align 4
@WM831X_DC4_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm831x_backlight_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_backlight_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wm831x*, align 8
  %5 = alloca %struct.wm831x_pdata*, align 8
  %6 = alloca %struct.wm831x_backlight_pdata*, align 8
  %7 = alloca %struct.wm831x_backlight_data*, align 8
  %8 = alloca %struct.backlight_device*, align 8
  %9 = alloca %struct.backlight_properties, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.wm831x* @dev_get_drvdata(i32 %18)
  store %struct.wm831x* %19, %struct.wm831x** %4, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.wm831x_pdata* @dev_get_platdata(i32 %23)
  store %struct.wm831x_pdata* %24, %struct.wm831x_pdata** %5, align 8
  %25 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %26 = icmp ne %struct.wm831x_pdata* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %5, align 8
  %29 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %28, i32 0, i32 0
  %30 = load %struct.wm831x_backlight_pdata*, %struct.wm831x_backlight_pdata** %29, align 8
  store %struct.wm831x_backlight_pdata* %30, %struct.wm831x_backlight_pdata** %6, align 8
  br label %32

31:                                               ; preds = %1
  store %struct.wm831x_backlight_pdata* null, %struct.wm831x_backlight_pdata** %6, align 8
  br label %32

32:                                               ; preds = %31, %27
  %33 = load %struct.wm831x_backlight_pdata*, %struct.wm831x_backlight_pdata** %6, align 8
  %34 = icmp ne %struct.wm831x_backlight_pdata* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %187

41:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %58, %41
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @WM831X_ISINK_MAX_ISEL, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load i64*, i64** @wm831x_isinkv_values, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.wm831x_backlight_pdata*, %struct.wm831x_backlight_pdata** %6, align 8
  %53 = getelementptr inbounds %struct.wm831x_backlight_pdata, %struct.wm831x_backlight_pdata* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %61

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %42

61:                                               ; preds = %56, %42
  %62 = load i32, i32* %11, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load %struct.wm831x_backlight_pdata*, %struct.wm831x_backlight_pdata** %6, align 8
  %68 = getelementptr inbounds %struct.wm831x_backlight_pdata, %struct.wm831x_backlight_pdata* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %187

73:                                               ; preds = %61
  %74 = load i32, i32* %11, align 4
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  %76 = load %struct.wm831x_backlight_pdata*, %struct.wm831x_backlight_pdata** %6, align 8
  %77 = getelementptr inbounds %struct.wm831x_backlight_pdata, %struct.wm831x_backlight_pdata* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** @wm831x_isinkv_values, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %78, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %73
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load i64*, i64** @wm831x_isinkv_values, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.wm831x_backlight_pdata*, %struct.wm831x_backlight_pdata** %6, align 8
  %94 = getelementptr inbounds %struct.wm831x_backlight_pdata, %struct.wm831x_backlight_pdata* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @dev_warn(%struct.TYPE_8__* %87, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %92, i64 %95)
  br label %97

97:                                               ; preds = %85, %73
  %98 = load %struct.wm831x_backlight_pdata*, %struct.wm831x_backlight_pdata** %6, align 8
  %99 = getelementptr inbounds %struct.wm831x_backlight_pdata, %struct.wm831x_backlight_pdata* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  switch i32 %100, label %106 [
    i32 1, label %101
    i32 2, label %103
  ]

101:                                              ; preds = %97
  %102 = load i32, i32* @WM831X_CURRENT_SINK_1, align 4
  store i32 %102, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %115

103:                                              ; preds = %97
  %104 = load i32, i32* @WM831X_CURRENT_SINK_2, align 4
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* @WM831X_DC4_FBSRC, align 4
  store i32 %105, i32* %14, align 4
  br label %115

106:                                              ; preds = %97
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = load %struct.wm831x_backlight_pdata*, %struct.wm831x_backlight_pdata** %6, align 8
  %110 = getelementptr inbounds %struct.wm831x_backlight_pdata, %struct.wm831x_backlight_pdata* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %108, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %187

115:                                              ; preds = %103, %101
  %116 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %117 = call i32 @wm831x_reg_unlock(%struct.wm831x* %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %2, align 4
  br label %187

122:                                              ; preds = %115
  %123 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %124 = load i32, i32* @WM831X_DC4_CONTROL, align 4
  %125 = load i32, i32* @WM831X_DC4_FBSRC, align 4
  %126 = load i32, i32* %14, align 4
  %127 = call i32 @wm831x_set_bits(%struct.wm831x* %123, i32 %124, i32 %125, i32 %126)
  store i32 %127, i32* %10, align 4
  %128 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %129 = call i32 @wm831x_reg_lock(%struct.wm831x* %128)
  %130 = load i32, i32* %10, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %122
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %2, align 4
  br label %187

134:                                              ; preds = %122
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = load i32, i32* @GFP_KERNEL, align 4
  %138 = call %struct.wm831x_backlight_data* @devm_kzalloc(%struct.TYPE_8__* %136, i32 24, i32 %137)
  store %struct.wm831x_backlight_data* %138, %struct.wm831x_backlight_data** %7, align 8
  %139 = load %struct.wm831x_backlight_data*, %struct.wm831x_backlight_data** %7, align 8
  %140 = icmp eq %struct.wm831x_backlight_data* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %134
  %142 = load i32, i32* @ENOMEM, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %2, align 4
  br label %187

144:                                              ; preds = %134
  %145 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %146 = load %struct.wm831x_backlight_data*, %struct.wm831x_backlight_data** %7, align 8
  %147 = getelementptr inbounds %struct.wm831x_backlight_data, %struct.wm831x_backlight_data* %146, i32 0, i32 2
  store %struct.wm831x* %145, %struct.wm831x** %147, align 8
  %148 = load %struct.wm831x_backlight_data*, %struct.wm831x_backlight_data** %7, align 8
  %149 = getelementptr inbounds %struct.wm831x_backlight_data, %struct.wm831x_backlight_data* %148, i32 0, i32 1
  store i64 0, i64* %149, align 8
  %150 = load i32, i32* %13, align 4
  %151 = load %struct.wm831x_backlight_data*, %struct.wm831x_backlight_data** %7, align 8
  %152 = getelementptr inbounds %struct.wm831x_backlight_data, %struct.wm831x_backlight_data* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = call i32 @memset(%struct.backlight_properties* %9, i32 0, i32 8)
  %154 = load i32, i32* @BACKLIGHT_RAW, align 4
  %155 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %9, i32 0, i32 1
  store i32 %154, i32* %155, align 4
  %156 = load i32, i32* %12, align 4
  %157 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %9, i32 0, i32 0
  store i32 %156, i32* %157, align 4
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %160, i32 0, i32 0
  %162 = load %struct.wm831x_backlight_data*, %struct.wm831x_backlight_data** %7, align 8
  %163 = call %struct.backlight_device* @devm_backlight_device_register(%struct.TYPE_8__* %159, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_8__* %161, %struct.wm831x_backlight_data* %162, i32* @wm831x_backlight_ops, %struct.backlight_properties* %9)
  store %struct.backlight_device* %163, %struct.backlight_device** %8, align 8
  %164 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %165 = call i64 @IS_ERR(%struct.backlight_device* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %144
  %168 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %169 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %168, i32 0, i32 0
  %170 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %169, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %171 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %172 = call i32 @PTR_ERR(%struct.backlight_device* %171)
  store i32 %172, i32* %2, align 4
  br label %187

173:                                              ; preds = %144
  %174 = load i32, i32* %12, align 4
  %175 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %176 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  store i32 %174, i32* %177, align 4
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %180 = call i32 @platform_set_drvdata(%struct.platform_device* %178, %struct.backlight_device* %179)
  %181 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %182 = load i32, i32* @WM831X_DCDC_ENABLE, align 4
  %183 = load i32, i32* @WM831X_DC4_ENA, align 4
  %184 = call i32 @wm831x_set_bits(%struct.wm831x* %181, i32 %182, i32 %183, i32 0)
  %185 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  %186 = call i32 @backlight_update_status(%struct.backlight_device* %185)
  store i32 0, i32* %2, align 4
  br label %187

187:                                              ; preds = %173, %167, %141, %132, %120, %106, %64, %35
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local %struct.wm831x* @dev_get_drvdata(i32) #1

declare dso_local %struct.wm831x_pdata* @dev_get_platdata(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @dev_warn(%struct.TYPE_8__*, i8*, i64, i64) #1

declare dso_local i32 @wm831x_reg_unlock(%struct.wm831x*) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

declare dso_local i32 @wm831x_reg_lock(%struct.wm831x*) #1

declare dso_local %struct.wm831x_backlight_data* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.backlight_device* @devm_backlight_device_register(%struct.TYPE_8__*, i8*, %struct.TYPE_8__*, %struct.wm831x_backlight_data*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.backlight_device*) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
