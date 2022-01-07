; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_find_best_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_find_best_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.omap_dss_device*, %struct.fb_monspecs*, i32)*, {}* }
%struct.fb_monspecs = type { i32, %struct.fb_videomode* }
%struct.fb_videomode = type { i64, i32, i32 }
%struct.omap_video_timings = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@FB_VMODE_DOUBLE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)* @omapfb_find_best_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_find_best_mode(%struct.omap_dss_device* %0, %struct.omap_video_timings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.omap_video_timings*, align 8
  %6 = alloca %struct.fb_monspecs*, align 8
  %7 = alloca %struct.fb_monspecs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fb_videomode*, align 8
  %13 = alloca %struct.omap_video_timings, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %4, align 8
  store %struct.omap_video_timings* %1, %struct.omap_video_timings** %5, align 8
  %14 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %15 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.omap_dss_device*, %struct.fb_monspecs*, i32)*, i32 (%struct.omap_dss_device*, %struct.fb_monspecs*, i32)** %17, align 8
  %19 = icmp ne i32 (%struct.omap_dss_device*, %struct.fb_monspecs*, i32)* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %148

23:                                               ; preds = %2
  store i32 256, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.fb_monspecs* @kmalloc(i32 %24, i32 %25)
  store %struct.fb_monspecs* %26, %struct.fb_monspecs** %7, align 8
  %27 = load %struct.fb_monspecs*, %struct.fb_monspecs** %7, align 8
  %28 = icmp eq %struct.fb_monspecs* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %148

32:                                               ; preds = %23
  %33 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %34 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.omap_dss_device*, %struct.fb_monspecs*, i32)*, i32 (%struct.omap_dss_device*, %struct.fb_monspecs*, i32)** %36, align 8
  %38 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %39 = load %struct.fb_monspecs*, %struct.fb_monspecs** %7, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 %37(%struct.omap_dss_device* %38, %struct.fb_monspecs* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %144

45:                                               ; preds = %32
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.fb_monspecs* @kzalloc(i32 16, i32 %46)
  store %struct.fb_monspecs* %47, %struct.fb_monspecs** %6, align 8
  %48 = load %struct.fb_monspecs*, %struct.fb_monspecs** %6, align 8
  %49 = icmp eq %struct.fb_monspecs* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  br label %144

53:                                               ; preds = %45
  %54 = load %struct.fb_monspecs*, %struct.fb_monspecs** %7, align 8
  %55 = load %struct.fb_monspecs*, %struct.fb_monspecs** %6, align 8
  %56 = call i32 @fb_edid_to_monspecs(%struct.fb_monspecs* %54, %struct.fb_monspecs* %55)
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %118, %53
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.fb_monspecs*, %struct.fb_monspecs** %6, align 8
  %60 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %121

63:                                               ; preds = %57
  %64 = load %struct.fb_monspecs*, %struct.fb_monspecs** %6, align 8
  %65 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %64, i32 0, i32 1
  %66 = load %struct.fb_videomode*, %struct.fb_videomode** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %66, i64 %68
  store %struct.fb_videomode* %69, %struct.fb_videomode** %12, align 8
  %70 = load %struct.fb_videomode*, %struct.fb_videomode** %12, align 8
  %71 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %118

75:                                               ; preds = %63
  %76 = load %struct.fb_videomode*, %struct.fb_videomode** %12, align 8
  %77 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 2880
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load %struct.fb_videomode*, %struct.fb_videomode** %12, align 8
  %82 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 1440
  br i1 %84, label %85, label %86

85:                                               ; preds = %80, %75
  br label %118

86:                                               ; preds = %80
  %87 = load %struct.fb_videomode*, %struct.fb_videomode** %12, align 8
  %88 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %86
  %94 = load %struct.fb_videomode*, %struct.fb_videomode** %12, align 8
  %95 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93, %86
  br label %118

101:                                              ; preds = %93
  %102 = load %struct.fb_videomode*, %struct.fb_videomode** %12, align 8
  %103 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %104 = call i32 @fb_videomode_to_omap_timings(%struct.fb_videomode* %102, %struct.omap_dss_device* %103, %struct.omap_video_timings* %13)
  %105 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %106 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = bitcast {}** %108 to i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)**
  %110 = load i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)*, i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)** %109, align 8
  %111 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %112 = call i32 %110(%struct.omap_dss_device* %111, %struct.omap_video_timings* %13)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %101
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %10, align 4
  br label %121

117:                                              ; preds = %101
  br label %118

118:                                              ; preds = %117, %100, %85, %74
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %57

121:                                              ; preds = %115, %57
  %122 = load i32, i32* %10, align 4
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* @ENOENT, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %8, align 4
  br label %137

127:                                              ; preds = %121
  %128 = load %struct.fb_monspecs*, %struct.fb_monspecs** %6, align 8
  %129 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %128, i32 0, i32 1
  %130 = load %struct.fb_videomode*, %struct.fb_videomode** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %130, i64 %132
  %134 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %135 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %136 = call i32 @fb_videomode_to_omap_timings(%struct.fb_videomode* %133, %struct.omap_dss_device* %134, %struct.omap_video_timings* %135)
  store i32 0, i32* %8, align 4
  br label %137

137:                                              ; preds = %127, %124
  %138 = load %struct.fb_monspecs*, %struct.fb_monspecs** %6, align 8
  %139 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %138, i32 0, i32 1
  %140 = load %struct.fb_videomode*, %struct.fb_videomode** %139, align 8
  %141 = call i32 @fb_destroy_modedb(%struct.fb_videomode* %140)
  %142 = load %struct.fb_monspecs*, %struct.fb_monspecs** %6, align 8
  %143 = call i32 @kfree(%struct.fb_monspecs* %142)
  br label %144

144:                                              ; preds = %137, %50, %44
  %145 = load %struct.fb_monspecs*, %struct.fb_monspecs** %7, align 8
  %146 = call i32 @kfree(%struct.fb_monspecs* %145)
  %147 = load i32, i32* %8, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %144, %29, %20
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.fb_monspecs* @kmalloc(i32, i32) #1

declare dso_local %struct.fb_monspecs* @kzalloc(i32, i32) #1

declare dso_local i32 @fb_edid_to_monspecs(%struct.fb_monspecs*, %struct.fb_monspecs*) #1

declare dso_local i32 @fb_videomode_to_omap_timings(%struct.fb_videomode*, %struct.omap_dss_device*, %struct.omap_video_timings*) #1

declare dso_local i32 @fb_destroy_modedb(%struct.fb_videomode*) #1

declare dso_local i32 @kfree(%struct.fb_monspecs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
