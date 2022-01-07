; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_drm_infoframe_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/extr_hdmi.c_hdmi_drm_infoframe_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hdmi_drm_infoframe = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.hdmi_any_infoframe = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"length: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"metadata type: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"eotf: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"x[%d]: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"y[%d]: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"white point x: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"white point y: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"max_display_mastering_luminance: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"min_display_mastering_luminance: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"max_cll: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"max_fall: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.device*, %struct.hdmi_drm_infoframe*)* @hdmi_drm_infoframe_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_drm_infoframe_log(i8* %0, %struct.device* %1, %struct.hdmi_drm_infoframe* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.hdmi_drm_infoframe*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store %struct.hdmi_drm_infoframe* %2, %struct.hdmi_drm_infoframe** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %6, align 8
  %11 = bitcast %struct.hdmi_drm_infoframe* %10 to %struct.hdmi_any_infoframe*
  %12 = call i32 @hdmi_infoframe_log_header(i8* %8, %struct.device* %9, %struct.hdmi_any_infoframe* %11)
  %13 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %6, align 8
  %14 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i8*, i32, ...) @hdmi_log(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %6, align 8
  %18 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, i32, ...) @hdmi_log(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %6, align 8
  %22 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, i32, ...) @hdmi_log(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %49, %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 3
  br i1 %27, label %28, label %52

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %6, align 8
  %31 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %30, i32 0, i32 5
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, i32, ...) @hdmi_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %29, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %6, align 8
  %41 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %40, i32 0, i32 5
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, i32, ...) @hdmi_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %39, i32 %47)
  br label %49

49:                                               ; preds = %28
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %25

52:                                               ; preds = %25
  %53 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %6, align 8
  %54 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, i32, ...) @hdmi_log(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  %58 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %6, align 8
  %59 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i8*, i32, ...) @hdmi_log(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %61)
  %63 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %6, align 8
  %64 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, i32, ...) @hdmi_log(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %65)
  %67 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %6, align 8
  %68 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i8*, i32, ...) @hdmi_log(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %69)
  %71 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %6, align 8
  %72 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, i32, ...) @hdmi_log(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %73)
  %75 = load %struct.hdmi_drm_infoframe*, %struct.hdmi_drm_infoframe** %6, align 8
  %76 = getelementptr inbounds %struct.hdmi_drm_infoframe, %struct.hdmi_drm_infoframe* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i8*, i32, ...) @hdmi_log(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %77)
  ret void
}

declare dso_local i32 @hdmi_infoframe_log_header(i8*, %struct.device*, %struct.hdmi_any_infoframe*) #1

declare dso_local i32 @hdmi_log(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
