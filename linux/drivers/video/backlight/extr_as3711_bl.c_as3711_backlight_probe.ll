; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_as3711_bl.c_as3711_backlight_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_as3711_bl.c_as3711_backlight_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.as3711_bl_pdata = type { i32, i32, i32, i32, i64, i64 }
%struct.as3711 = type { i32 }
%struct.as3711_bl_supply = type { %struct.as3711_bl_data, %struct.as3711_bl_data, %struct.as3711_bl_pdata*, %struct.as3711* }
%struct.as3711_bl_data = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"No platform data, exiting...\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"DT parsing failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"No framebuffer specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [107 x i8] c"Attention! An untested mode has been chosen!\0APlease, review the code, enable, test, and report success:-)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AS3711_BL_SU1 = common dso_local global i32 0, align 4
@AS3711_BL_SU2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @as3711_backlight_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3711_backlight_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.as3711_bl_pdata*, align 8
  %5 = alloca %struct.as3711*, align 8
  %6 = alloca %struct.as3711_bl_supply*, align 8
  %7 = alloca %struct.as3711_bl_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.as3711_bl_pdata* @dev_get_platdata(%struct.TYPE_7__* %11)
  store %struct.as3711_bl_pdata* %12, %struct.as3711_bl_pdata** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = call %struct.as3711* @dev_get_drvdata(%struct.TYPE_8__* %16)
  store %struct.as3711* %17, %struct.as3711** %5, align 8
  %18 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %19 = icmp ne %struct.as3711_bl_pdata* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %181

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %26
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @as3711_backlight_parse_dt(%struct.TYPE_7__* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %2, align 4
  br label %181

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %26
  %48 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %49 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %47
  %53 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %54 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %181

63:                                               ; preds = %52, %47
  %64 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %65 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %63
  %69 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %70 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 130
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %75 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 133
  br i1 %77, label %78, label %84

78:                                               ; preds = %73, %68, %63
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = call i32 @dev_warn(%struct.TYPE_7__* %80, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %181

84:                                               ; preds = %73
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call %struct.as3711_bl_supply* @devm_kzalloc(%struct.TYPE_7__* %86, i32 24, i32 %87)
  store %struct.as3711_bl_supply* %88, %struct.as3711_bl_supply** %6, align 8
  %89 = load %struct.as3711_bl_supply*, %struct.as3711_bl_supply** %6, align 8
  %90 = icmp ne %struct.as3711_bl_supply* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %84
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %181

94:                                               ; preds = %84
  %95 = load %struct.as3711*, %struct.as3711** %5, align 8
  %96 = load %struct.as3711_bl_supply*, %struct.as3711_bl_supply** %6, align 8
  %97 = getelementptr inbounds %struct.as3711_bl_supply, %struct.as3711_bl_supply* %96, i32 0, i32 3
  store %struct.as3711* %95, %struct.as3711** %97, align 8
  %98 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %99 = load %struct.as3711_bl_supply*, %struct.as3711_bl_supply** %6, align 8
  %100 = getelementptr inbounds %struct.as3711_bl_supply, %struct.as3711_bl_supply* %99, i32 0, i32 2
  store %struct.as3711_bl_pdata* %98, %struct.as3711_bl_pdata** %100, align 8
  %101 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %102 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %94
  %106 = load %struct.as3711_bl_supply*, %struct.as3711_bl_supply** %6, align 8
  %107 = getelementptr inbounds %struct.as3711_bl_supply, %struct.as3711_bl_supply* %106, i32 0, i32 1
  store %struct.as3711_bl_data* %107, %struct.as3711_bl_data** %7, align 8
  %108 = load i32, i32* @AS3711_BL_SU1, align 4
  %109 = load %struct.as3711_bl_data*, %struct.as3711_bl_data** %7, align 8
  %110 = getelementptr inbounds %struct.as3711_bl_data, %struct.as3711_bl_data* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %112 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @min(i32 %113, i32 31)
  store i32 %114, i32* %8, align 4
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.as3711_bl_data*, %struct.as3711_bl_data** %7, align 8
  %118 = call i32 @as3711_bl_register(%struct.platform_device* %115, i32 %116, %struct.as3711_bl_data* %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %105
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %2, align 4
  br label %181

123:                                              ; preds = %105
  br label %124

124:                                              ; preds = %123, %94
  %125 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %126 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %177

129:                                              ; preds = %124
  %130 = load %struct.as3711_bl_supply*, %struct.as3711_bl_supply** %6, align 8
  %131 = getelementptr inbounds %struct.as3711_bl_supply, %struct.as3711_bl_supply* %130, i32 0, i32 0
  store %struct.as3711_bl_data* %131, %struct.as3711_bl_data** %7, align 8
  %132 = load i32, i32* @AS3711_BL_SU2, align 4
  %133 = load %struct.as3711_bl_data*, %struct.as3711_bl_data** %7, align 8
  %134 = getelementptr inbounds %struct.as3711_bl_data, %struct.as3711_bl_data* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  %135 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %136 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  switch i32 %137, label %139 [
    i32 132, label %138
    i32 131, label %138
    i32 130, label %138
    i32 129, label %138
  ]

138:                                              ; preds = %129, %129, %129, %129
  br label %142

139:                                              ; preds = %129
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %2, align 4
  br label %181

142:                                              ; preds = %138
  %143 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %144 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  switch i32 %145, label %157 [
    i32 128, label %146
    i32 136, label %151
    i32 135, label %151
    i32 134, label %151
    i32 133, label %151
  ]

146:                                              ; preds = %142
  %147 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %148 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @min(i32 %149, i32 31)
  store i32 %150, i32* %8, align 4
  br label %160

151:                                              ; preds = %142, %142, %142, %142
  %152 = load %struct.as3711_bl_pdata*, %struct.as3711_bl_pdata** %4, align 8
  %153 = getelementptr inbounds %struct.as3711_bl_pdata, %struct.as3711_bl_pdata* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = sdiv i32 %154, 150
  %156 = call i32 @min(i32 %155, i32 255)
  store i32 %156, i32* %8, align 4
  br label %160

157:                                              ; preds = %142
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %2, align 4
  br label %181

160:                                              ; preds = %151, %146
  %161 = load %struct.as3711_bl_supply*, %struct.as3711_bl_supply** %6, align 8
  %162 = call i32 @as3711_bl_init_su2(%struct.as3711_bl_supply* %161)
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load i32, i32* %9, align 4
  store i32 %166, i32* %2, align 4
  br label %181

167:                                              ; preds = %160
  %168 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %169 = load i32, i32* %8, align 4
  %170 = load %struct.as3711_bl_data*, %struct.as3711_bl_data** %7, align 8
  %171 = call i32 @as3711_bl_register(%struct.platform_device* %168, i32 %169, %struct.as3711_bl_data* %170)
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %9, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %167
  %175 = load i32, i32* %9, align 4
  store i32 %175, i32* %2, align 4
  br label %181

176:                                              ; preds = %167
  br label %177

177:                                              ; preds = %176, %124
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = load %struct.as3711_bl_supply*, %struct.as3711_bl_supply** %6, align 8
  %180 = call i32 @platform_set_drvdata(%struct.platform_device* %178, %struct.as3711_bl_supply* %179)
  store i32 0, i32* %2, align 4
  br label %181

181:                                              ; preds = %177, %174, %165, %157, %139, %121, %91, %78, %57, %40, %20
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local %struct.as3711_bl_pdata* @dev_get_platdata(%struct.TYPE_7__*) #1

declare dso_local %struct.as3711* @dev_get_drvdata(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @as3711_backlight_parse_dt(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.as3711_bl_supply* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @as3711_bl_register(%struct.platform_device*, i32, %struct.as3711_bl_data*) #1

declare dso_local i32 @as3711_bl_init_su2(%struct.as3711_bl_supply*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.as3711_bl_supply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
