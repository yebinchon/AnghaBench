; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device_node*, %struct.sm501_platdata* }
%struct.device_node = type { i32 }
%struct.sm501_platdata = type { i32* }
%struct.sm501fb_info = type { i32**, i32*, i64, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to allocate state\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"using default configuration data\0A\00", align 1
@sm501fb_def_pdata = common dso_local global i32 0, align 4
@HEAD_CRT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to probe CRT\0A\00", align 1
@HEAD_PANEL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"failed to probe PANEL\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"no framebuffers found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"cannot initialise SM501\0A\00", align 1
@driver_name_crt = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"failed to start CRT\0A\00", align 1
@driver_name_pnl = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"failed to start Panel\0A\00", align 1
@EDID_LENGTH = common dso_local global i32 0, align 4
@fb_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sm501fb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm501fb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sm501fb_info*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sm501_platdata*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.sm501fb_info* @kzalloc(i32 32, i32 %11)
  store %struct.sm501fb_info* %12, %struct.sm501fb_info** %4, align 8
  %13 = load %struct.sm501fb_info*, %struct.sm501fb_info** %4, align 8
  %14 = icmp ne %struct.sm501fb_info* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call i32 @dev_err(%struct.device* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %162

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  store %struct.device* %22, %struct.device** %5, align 8
  %23 = load %struct.sm501fb_info*, %struct.sm501fb_info** %4, align 8
  %24 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %23, i32 0, i32 3
  store %struct.device* %22, %struct.device** %24, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load %struct.sm501fb_info*, %struct.sm501fb_info** %4, align 8
  %27 = call i32 @platform_set_drvdata(%struct.platform_device* %25, %struct.sm501fb_info* %26)
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load %struct.sm501_platdata*, %struct.sm501_platdata** %31, align 8
  %33 = icmp ne %struct.sm501_platdata* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %20
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = getelementptr inbounds %struct.device, %struct.device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.sm501_platdata*, %struct.sm501_platdata** %38, align 8
  store %struct.sm501_platdata* %39, %struct.sm501_platdata** %7, align 8
  %40 = load %struct.sm501_platdata*, %struct.sm501_platdata** %7, align 8
  %41 = getelementptr inbounds %struct.sm501_platdata, %struct.sm501_platdata* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.sm501fb_info*, %struct.sm501fb_info** %4, align 8
  %44 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  br label %45

45:                                               ; preds = %34, %20
  %46 = load %struct.sm501fb_info*, %struct.sm501fb_info** %4, align 8
  %47 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  store i32 0, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = call i32 @dev_info(%struct.device* %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.sm501fb_info*, %struct.sm501fb_info** %4, align 8
  %57 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %56, i32 0, i32 1
  store i32* @sm501fb_def_pdata, i32** %57, align 8
  br label %58

58:                                               ; preds = %53, %50
  br label %59

59:                                               ; preds = %58, %45
  %60 = load %struct.sm501fb_info*, %struct.sm501fb_info** %4, align 8
  %61 = load i64, i64* @HEAD_CRT, align 8
  %62 = call i32 @sm501fb_probe_one(%struct.sm501fb_info* %60, i64 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.device*, %struct.device** %5, align 8
  %67 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %158

68:                                               ; preds = %59
  %69 = load %struct.sm501fb_info*, %struct.sm501fb_info** %4, align 8
  %70 = load i64, i64* @HEAD_PANEL, align 8
  %71 = call i32 @sm501fb_probe_one(%struct.sm501fb_info* %69, i64 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = call i32 @dev_err(%struct.device* %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %150

77:                                               ; preds = %68
  %78 = load %struct.sm501fb_info*, %struct.sm501fb_info** %4, align 8
  %79 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %78, i32 0, i32 0
  %80 = load i32**, i32*** %79, align 8
  %81 = load i64, i64* @HEAD_PANEL, align 8
  %82 = getelementptr inbounds i32*, i32** %80, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %98

85:                                               ; preds = %77
  %86 = load %struct.sm501fb_info*, %struct.sm501fb_info** %4, align 8
  %87 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %86, i32 0, i32 0
  %88 = load i32**, i32*** %87, align 8
  %89 = load i64, i64* @HEAD_CRT, align 8
  %90 = getelementptr inbounds i32*, i32** %88, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load %struct.device*, %struct.device** %5, align 8
  %95 = call i32 @dev_err(%struct.device* %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %6, align 4
  br label %158

98:                                               ; preds = %85, %77
  %99 = load %struct.sm501fb_info*, %struct.sm501fb_info** %4, align 8
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = call i32 @sm501fb_start(%struct.sm501fb_info* %99, %struct.platform_device* %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load %struct.device*, %struct.device** %5, align 8
  %106 = call i32 @dev_err(%struct.device* %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %142

107:                                              ; preds = %98
  %108 = load %struct.sm501fb_info*, %struct.sm501fb_info** %4, align 8
  %109 = load i64, i64* @HEAD_CRT, align 8
  %110 = load i32, i32* @driver_name_crt, align 4
  %111 = call i32 @sm501fb_start_one(%struct.sm501fb_info* %108, i64 %109, i32 %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load %struct.device*, %struct.device** %5, align 8
  %116 = call i32 @dev_err(%struct.device* %115, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %139

117:                                              ; preds = %107
  %118 = load %struct.sm501fb_info*, %struct.sm501fb_info** %4, align 8
  %119 = load i64, i64* @HEAD_PANEL, align 8
  %120 = load i32, i32* @driver_name_pnl, align 4
  %121 = call i32 @sm501fb_start_one(%struct.sm501fb_info* %118, i64 %119, i32 %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = load %struct.device*, %struct.device** %5, align 8
  %126 = call i32 @dev_err(%struct.device* %125, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %128

127:                                              ; preds = %117
  store i32 0, i32* %2, align 4
  br label %162

128:                                              ; preds = %124
  %129 = load %struct.sm501fb_info*, %struct.sm501fb_info** %4, align 8
  %130 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %129, i32 0, i32 0
  %131 = load i32**, i32*** %130, align 8
  %132 = load i64, i64* @HEAD_CRT, align 8
  %133 = getelementptr inbounds i32*, i32** %131, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @unregister_framebuffer(i32* %134)
  %136 = load %struct.sm501fb_info*, %struct.sm501fb_info** %4, align 8
  %137 = load i64, i64* @HEAD_CRT, align 8
  %138 = call i32 @sm501_free_init_fb(%struct.sm501fb_info* %136, i64 %137)
  br label %139

139:                                              ; preds = %128, %114
  %140 = load %struct.sm501fb_info*, %struct.sm501fb_info** %4, align 8
  %141 = call i32 @sm501fb_stop(%struct.sm501fb_info* %140)
  br label %142

142:                                              ; preds = %139, %104
  %143 = load %struct.sm501fb_info*, %struct.sm501fb_info** %4, align 8
  %144 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %143, i32 0, i32 0
  %145 = load i32**, i32*** %144, align 8
  %146 = load i64, i64* @HEAD_PANEL, align 8
  %147 = getelementptr inbounds i32*, i32** %145, i64 %146
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @framebuffer_release(i32* %148)
  br label %150

150:                                              ; preds = %142, %74
  %151 = load %struct.sm501fb_info*, %struct.sm501fb_info** %4, align 8
  %152 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %151, i32 0, i32 0
  %153 = load i32**, i32*** %152, align 8
  %154 = load i64, i64* @HEAD_CRT, align 8
  %155 = getelementptr inbounds i32*, i32** %153, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @framebuffer_release(i32* %156)
  br label %158

158:                                              ; preds = %150, %93, %65
  %159 = load %struct.sm501fb_info*, %struct.sm501fb_info** %4, align 8
  %160 = call i32 @kfree(%struct.sm501fb_info* %159)
  %161 = load i32, i32* %6, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %158, %127, %15
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local %struct.sm501fb_info* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sm501fb_info*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @sm501fb_probe_one(%struct.sm501fb_info*, i64) #1

declare dso_local i32 @sm501fb_start(%struct.sm501fb_info*, %struct.platform_device*) #1

declare dso_local i32 @sm501fb_start_one(%struct.sm501fb_info*, i64, i32) #1

declare dso_local i32 @unregister_framebuffer(i32*) #1

declare dso_local i32 @sm501_free_init_fb(%struct.sm501fb_info*, i64) #1

declare dso_local i32 @sm501fb_stop(%struct.sm501fb_info*) #1

declare dso_local i32 @framebuffer_release(i32*) #1

declare dso_local i32 @kfree(%struct.sm501fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
