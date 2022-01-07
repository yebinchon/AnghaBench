; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_display-sysfs.c_display_timings_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_display-sysfs.c_display_timings_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_video_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.omap_dss_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)*, i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)*, i32 (%struct.omap_dss_device*)* }
%struct.TYPE_3__ = type { %struct.omap_video_timings }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%u,%hu/%hu/%hu/%hu,%hu/%hu/%hu/%hu\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@omap_dss_ntsc_timings = common dso_local global %struct.omap_video_timings zeroinitializer, align 4
@omap_dss_pal_timings = common dso_local global %struct.omap_video_timings zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, i8*, i64)* @display_timings_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @display_timings_store(%struct.omap_dss_device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.omap_video_timings, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %12 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = bitcast %struct.omap_video_timings* %8 to i8*
  %15 = bitcast %struct.omap_video_timings* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 8 %15, i64 36, i1 false)
  %16 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %17 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)*, i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)** %19, align 8
  %21 = icmp ne i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %24 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)*, i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)** %26, align 8
  %28 = icmp ne i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22, %3
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %92

32:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %8, i32 0, i32 8
  %38 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %8, i32 0, i32 7
  %39 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %8, i32 0, i32 6
  %40 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %8, i32 0, i32 5
  %41 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %8, i32 0, i32 4
  %42 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %8, i32 0, i32 3
  %43 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %8, i32 0, i32 2
  %44 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %8, i32 0, i32 1
  %45 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %8, i32 0, i32 0
  %46 = call i32 @sscanf(i8* %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32* %37, i32* %38, i32* %39, i32* %40, i32* %41, i32* %42, i32* %43, i32* %44, i32* %45)
  %47 = icmp ne i32 %46, 9
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %92

51:                                               ; preds = %35, %32
  %52 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %53 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)*, i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)** %55, align 8
  %57 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %58 = call i32 %56(%struct.omap_dss_device* %57, %struct.omap_video_timings* %8)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %4, align 4
  br label %92

63:                                               ; preds = %51
  %64 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %65 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %67, align 8
  %69 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %70 = call i32 %68(%struct.omap_dss_device* %69)
  %71 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %72 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)*, i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)** %74, align 8
  %76 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %77 = call i32 %75(%struct.omap_dss_device* %76, %struct.omap_video_timings* %8)
  %78 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %79 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %81, align 8
  %83 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %84 = call i32 %82(%struct.omap_dss_device* %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %63
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %4, align 4
  br label %92

89:                                               ; preds = %63
  %90 = load i64, i64* %7, align 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %89, %87, %61, %48, %29
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
