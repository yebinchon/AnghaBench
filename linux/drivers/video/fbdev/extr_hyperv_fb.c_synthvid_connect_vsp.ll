; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_hyperv_fb.c_synthvid_connect_vsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_hyperv_fb.c_synthvid_connect_vsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.fb_info = type { %struct.hvfb_par* }
%struct.hvfb_par = type { i64 }

@RING_BUFSIZE = common dso_local global i32 0, align 4
@synthvid_receive = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unable to open vmbus channel\0A\00", align 1
@vmbus_proto_version = common dso_local global i64 0, align 8
@VERSION_WS2008 = common dso_local global i64 0, align 8
@VERSION_WIN7 = common dso_local global i64 0, align 8
@SYNTHVID_VERSION_WIN7 = common dso_local global i64 0, align 8
@SYNTHVID_VERSION_WIN8 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Synthetic video device version not accepted\0A\00", align 1
@SYNTHVID_DEPTH_WIN7 = common dso_local global i32 0, align 4
@screen_depth = common dso_local global i32 0, align 4
@SYNTHVID_DEPTH_WIN8 = common dso_local global i32 0, align 4
@screen_fb_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*)* @synthvid_connect_vsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synthvid_connect_vsp(%struct.hv_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.hvfb_par*, align 8
  %6 = alloca i32, align 4
  store %struct.hv_device* %0, %struct.hv_device** %3, align 8
  %7 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %8 = call %struct.fb_info* @hv_get_drvdata(%struct.hv_device* %7)
  store %struct.fb_info* %8, %struct.fb_info** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = load %struct.hvfb_par*, %struct.hvfb_par** %10, align 8
  store %struct.hvfb_par* %11, %struct.hvfb_par** %5, align 8
  %12 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %13 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = load i32, i32* @RING_BUFSIZE, align 4
  %16 = load i32, i32* @RING_BUFSIZE, align 4
  %17 = load i32, i32* @synthvid_receive, align 4
  %18 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %19 = call i32 @vmbus_open(%struct.TYPE_7__* %14, i32 %15, i32 %16, i32* null, i32 0, i32 %17, %struct.hv_device* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %72

25:                                               ; preds = %1
  %26 = load i64, i64* @vmbus_proto_version, align 8
  %27 = load i64, i64* @VERSION_WS2008, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* @vmbus_proto_version, align 8
  %31 = load i64, i64* @VERSION_WIN7, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29, %25
  %34 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %35 = load i64, i64* @SYNTHVID_VERSION_WIN7, align 8
  %36 = call i32 @synthvid_negotiate_ver(%struct.hv_device* %34, i64 %35)
  store i32 %36, i32* %6, align 4
  br label %41

37:                                               ; preds = %29
  %38 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %39 = load i64, i64* @SYNTHVID_VERSION_WIN8, align 8
  %40 = call i32 @synthvid_negotiate_ver(%struct.hv_device* %38, i64 %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %66

46:                                               ; preds = %41
  %47 = load %struct.hvfb_par*, %struct.hvfb_par** %5, align 8
  %48 = getelementptr inbounds %struct.hvfb_par, %struct.hvfb_par* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SYNTHVID_VERSION_WIN7, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @SYNTHVID_DEPTH_WIN7, align 4
  store i32 %53, i32* @screen_depth, align 4
  br label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @SYNTHVID_DEPTH_WIN8, align 4
  store i32 %55, i32* @screen_depth, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %58 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %63, 1024
  %65 = mul nsw i32 %64, 1024
  store i32 %65, i32* @screen_fb_size, align 4
  store i32 0, i32* %2, align 4
  br label %72

66:                                               ; preds = %44
  %67 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %68 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = call i32 @vmbus_close(%struct.TYPE_7__* %69)
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %66, %56, %22
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.fb_info* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i32 @vmbus_open(%struct.TYPE_7__*, i32, i32, i32*, i32, i32, %struct.hv_device*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @synthvid_negotiate_ver(%struct.hv_device*, i64) #1

declare dso_local i32 @vmbus_close(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
