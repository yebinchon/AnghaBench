; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_mode_to_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_mode_to_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_video_timings = type { i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.omap_dss_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)* }
%struct.fb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_info* }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_var_screeninfo* }
%struct.fb_ops = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_ops* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OMAPDSS_DRIVE_SIG_RISING_EDGE = common dso_local global i32 0, align 4
@OMAPDSS_SIG_ACTIVE_HIGH = common dso_local global i8* null, align 8
@OMAPDSS_DRIVE_SIG_FALLING_EDGE = common dso_local global i32 0, align 4
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@OMAPDSS_SIG_ACTIVE_LOW = common dso_local global i8* null, align 8
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@omap_dss_ntsc_timings = common dso_local global %struct.omap_video_timings zeroinitializer, align 8
@omap_dss_pal_timings = common dso_local global %struct.omap_video_timings zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.omap_dss_device*, %struct.omap_video_timings*, i32*)* @omapfb_mode_to_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_mode_to_timings(i8* %0, %struct.omap_dss_device* %1, %struct.omap_video_timings* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.omap_dss_device*, align 8
  %7 = alloca %struct.omap_video_timings*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.fb_info*, align 8
  %10 = alloca %struct.fb_var_screeninfo*, align 8
  %11 = alloca %struct.fb_ops*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.omap_dss_device* %1, %struct.omap_dss_device** %6, align 8
  store %struct.omap_video_timings* %2, %struct.omap_video_timings** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  store i32 0, i32* %13, align 4
  store %struct.fb_info* null, %struct.fb_info** %9, align 8
  store %struct.fb_var_screeninfo* null, %struct.fb_var_screeninfo** %10, align 8
  store %struct.fb_ops* null, %struct.fb_ops** %11, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.fb_var_screeninfo* @kzalloc(i32 56, i32 %14)
  %16 = bitcast %struct.fb_var_screeninfo* %15 to %struct.fb_info*
  store %struct.fb_info* %16, %struct.fb_info** %9, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %18 = icmp eq %struct.fb_info* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %12, align 4
  br label %172

22:                                               ; preds = %4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.fb_var_screeninfo* @kzalloc(i32 56, i32 %23)
  store %struct.fb_var_screeninfo* %24, %struct.fb_var_screeninfo** %10, align 8
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %26 = icmp eq %struct.fb_var_screeninfo* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %12, align 4
  br label %172

30:                                               ; preds = %22
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.fb_var_screeninfo* @kzalloc(i32 56, i32 %31)
  %33 = bitcast %struct.fb_var_screeninfo* %32 to %struct.fb_ops*
  store %struct.fb_ops* %33, %struct.fb_ops** %11, align 8
  %34 = load %struct.fb_ops*, %struct.fb_ops** %11, align 8
  %35 = icmp eq %struct.fb_ops* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %12, align 4
  br label %172

39:                                               ; preds = %30
  %40 = load %struct.fb_ops*, %struct.fb_ops** %11, align 8
  %41 = bitcast %struct.fb_ops* %40 to %struct.fb_info*
  %42 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 12
  store %struct.fb_info* %41, %struct.fb_info** %43, align 8
  %44 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %45 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %46 = bitcast %struct.fb_info* %45 to %struct.fb_var_screeninfo*
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @fb_find_mode(%struct.fb_var_screeninfo* %44, %struct.fb_var_screeninfo* %46, i8* %47, i32* null, i32 0, i32* null, i32 24)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %12, align 4
  br label %172

54:                                               ; preds = %39
  %55 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %56 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)*, i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)** %58, align 8
  %60 = icmp ne i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %63 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)*, i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)** %65, align 8
  %67 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %68 = load %struct.omap_video_timings*, %struct.omap_video_timings** %7, align 8
  %69 = call i32 %66(%struct.omap_dss_device* %67, %struct.omap_video_timings* %68)
  br label %80

70:                                               ; preds = %54
  %71 = load i32, i32* @OMAPDSS_DRIVE_SIG_RISING_EDGE, align 4
  %72 = load %struct.omap_video_timings*, %struct.omap_video_timings** %7, align 8
  %73 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %72, i32 0, i32 14
  store i32 %71, i32* %73, align 8
  %74 = load i8*, i8** @OMAPDSS_SIG_ACTIVE_HIGH, align 8
  %75 = load %struct.omap_video_timings*, %struct.omap_video_timings** %7, align 8
  %76 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %75, i32 0, i32 13
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* @OMAPDSS_DRIVE_SIG_FALLING_EDGE, align 4
  %78 = load %struct.omap_video_timings*, %struct.omap_video_timings** %7, align 8
  %79 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %78, i32 0, i32 12
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %70, %61
  %81 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %82 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %81, i32 0, i32 11
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @PICOS2KHZ(i32 %83)
  %85 = mul nsw i32 %84, 1000
  %86 = load %struct.omap_video_timings*, %struct.omap_video_timings** %7, align 8
  %87 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %89 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.omap_video_timings*, %struct.omap_video_timings** %7, align 8
  %92 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %91, i32 0, i32 11
  store i32 %90, i32* %92, align 4
  %93 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %94 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %93, i32 0, i32 9
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.omap_video_timings*, %struct.omap_video_timings** %7, align 8
  %97 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %96, i32 0, i32 10
  store i32 %95, i32* %97, align 8
  %98 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %99 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.omap_video_timings*, %struct.omap_video_timings** %7, align 8
  %102 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %101, i32 0, i32 9
  store i32 %100, i32* %102, align 4
  %103 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %104 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.omap_video_timings*, %struct.omap_video_timings** %7, align 8
  %107 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %106, i32 0, i32 8
  store i32 %105, i32* %107, align 8
  %108 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %109 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.omap_video_timings*, %struct.omap_video_timings** %7, align 8
  %112 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %111, i32 0, i32 7
  store i32 %110, i32* %112, align 4
  %113 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %114 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.omap_video_timings*, %struct.omap_video_timings** %7, align 8
  %117 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 8
  %118 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %119 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.omap_video_timings*, %struct.omap_video_timings** %7, align 8
  %122 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 4
  %123 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %124 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.omap_video_timings*, %struct.omap_video_timings** %7, align 8
  %127 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 8
  %128 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %129 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %80
  %135 = load i8*, i8** @OMAPDSS_SIG_ACTIVE_HIGH, align 8
  br label %138

136:                                              ; preds = %80
  %137 = load i8*, i8** @OMAPDSS_SIG_ACTIVE_LOW, align 8
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i8* [ %135, %134 ], [ %137, %136 ]
  %140 = load %struct.omap_video_timings*, %struct.omap_video_timings** %7, align 8
  %141 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  %142 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %143 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %138
  %149 = load i8*, i8** @OMAPDSS_SIG_ACTIVE_HIGH, align 8
  br label %152

150:                                              ; preds = %138
  %151 = load i8*, i8** @OMAPDSS_SIG_ACTIVE_LOW, align 8
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i8* [ %149, %148 ], [ %151, %150 ]
  %154 = load %struct.omap_video_timings*, %struct.omap_video_timings** %7, align 8
  %155 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  %156 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %157 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %160 = and i32 %158, %159
  %161 = load %struct.omap_video_timings*, %struct.omap_video_timings** %7, align 8
  %162 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %164 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  switch i32 %165, label %169 [
    i32 16, label %166
    i32 24, label %168
    i32 32, label %168
  ]

166:                                              ; preds = %152
  %167 = load i32*, i32** %8, align 8
  store i32 16, i32* %167, align 4
  br label %171

168:                                              ; preds = %152, %152
  br label %169

169:                                              ; preds = %152, %168
  %170 = load i32*, i32** %8, align 8
  store i32 24, i32* %170, align 4
  br label %171

171:                                              ; preds = %169, %166
  store i32 0, i32* %12, align 4
  br label %172

172:                                              ; preds = %171, %51, %36, %27, %19
  %173 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %174 = bitcast %struct.fb_info* %173 to %struct.fb_var_screeninfo*
  %175 = call i32 @kfree(%struct.fb_var_screeninfo* %174)
  %176 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %10, align 8
  %177 = call i32 @kfree(%struct.fb_var_screeninfo* %176)
  %178 = load %struct.fb_ops*, %struct.fb_ops** %11, align 8
  %179 = bitcast %struct.fb_ops* %178 to %struct.fb_var_screeninfo*
  %180 = call i32 @kfree(%struct.fb_var_screeninfo* %179)
  %181 = load i32, i32* %12, align 4
  ret i32 %181
}

declare dso_local %struct.fb_var_screeninfo* @kzalloc(i32, i32) #1

declare dso_local i32 @fb_find_mode(%struct.fb_var_screeninfo*, %struct.fb_var_screeninfo*, i8*, i32*, i32, i32*, i32) #1

declare dso_local i32 @PICOS2KHZ(i32) #1

declare dso_local i32 @kfree(%struct.fb_var_screeninfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
