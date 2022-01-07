; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2sta.c_prism2sta_inf_chinforesults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2sta.c_prism2sta_inf_chinforesults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { %struct.hfa384x* }
%struct.hfa384x = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.hfa384x_ch_info_result_sub* }
%struct.hfa384x_ch_info_result_sub = type { i32, i32, i32, i32 }
%struct.hfa384x_inf_frame = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.hfa384x_ch_info_result_sub* }

@HFA384x_CHINFORESULT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"chinfo: channel %d, %s level (avg/peak)=%d/%d dB, pcf %d\0A\00", align 1
@HFA384x_CHINFORESULT_BSSACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"noise\00", align 1
@HFA384x_CHINFORESULT_PCFACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wlandevice*, %struct.hfa384x_inf_frame*)* @prism2sta_inf_chinforesults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prism2sta_inf_chinforesults(%struct.wlandevice* %0, %struct.hfa384x_inf_frame* %1) #0 {
  %3 = alloca %struct.wlandevice*, align 8
  %4 = alloca %struct.hfa384x_inf_frame*, align 8
  %5 = alloca %struct.hfa384x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hfa384x_ch_info_result_sub*, align 8
  %9 = alloca %struct.hfa384x_ch_info_result_sub*, align 8
  %10 = alloca i32, align 4
  store %struct.wlandevice* %0, %struct.wlandevice** %3, align 8
  store %struct.hfa384x_inf_frame* %1, %struct.hfa384x_inf_frame** %4, align 8
  %11 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %12 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %11, i32 0, i32 0
  %13 = load %struct.hfa384x*, %struct.hfa384x** %12, align 8
  store %struct.hfa384x* %13, %struct.hfa384x** %5, align 8
  %14 = load %struct.hfa384x_inf_frame*, %struct.hfa384x_inf_frame** %4, align 8
  %15 = getelementptr inbounds %struct.hfa384x_inf_frame, %struct.hfa384x_inf_frame* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %20 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32 %18, i32* %22, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %112, %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @HFA384x_CHINFORESULT_MAX, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %115

27:                                               ; preds = %23
  %28 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %29 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = shl i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  br label %112

38:                                               ; preds = %27
  %39 = load %struct.hfa384x_inf_frame*, %struct.hfa384x_inf_frame** %4, align 8
  %40 = getelementptr inbounds %struct.hfa384x_inf_frame, %struct.hfa384x_inf_frame* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load %struct.hfa384x_ch_info_result_sub*, %struct.hfa384x_ch_info_result_sub** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.hfa384x_ch_info_result_sub, %struct.hfa384x_ch_info_result_sub* %43, i64 %45
  store %struct.hfa384x_ch_info_result_sub* %46, %struct.hfa384x_ch_info_result_sub** %8, align 8
  %47 = load %struct.hfa384x_ch_info_result_sub*, %struct.hfa384x_ch_info_result_sub** %8, align 8
  %48 = getelementptr inbounds %struct.hfa384x_ch_info_result_sub, %struct.hfa384x_ch_info_result_sub* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %38
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @HFA384x_CHINFORESULT_MAX, align 4
  %56 = icmp uge i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %38
  br label %112

58:                                               ; preds = %53
  %59 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %60 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load %struct.hfa384x_ch_info_result_sub*, %struct.hfa384x_ch_info_result_sub** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.hfa384x_ch_info_result_sub, %struct.hfa384x_ch_info_result_sub* %63, i64 %65
  store %struct.hfa384x_ch_info_result_sub* %66, %struct.hfa384x_ch_info_result_sub** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.hfa384x_ch_info_result_sub*, %struct.hfa384x_ch_info_result_sub** %9, align 8
  %69 = getelementptr inbounds %struct.hfa384x_ch_info_result_sub, %struct.hfa384x_ch_info_result_sub* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.hfa384x_ch_info_result_sub*, %struct.hfa384x_ch_info_result_sub** %8, align 8
  %71 = getelementptr inbounds %struct.hfa384x_ch_info_result_sub, %struct.hfa384x_ch_info_result_sub* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.hfa384x_ch_info_result_sub*, %struct.hfa384x_ch_info_result_sub** %9, align 8
  %74 = getelementptr inbounds %struct.hfa384x_ch_info_result_sub, %struct.hfa384x_ch_info_result_sub* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.hfa384x_ch_info_result_sub*, %struct.hfa384x_ch_info_result_sub** %8, align 8
  %76 = getelementptr inbounds %struct.hfa384x_ch_info_result_sub, %struct.hfa384x_ch_info_result_sub* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.hfa384x_ch_info_result_sub*, %struct.hfa384x_ch_info_result_sub** %9, align 8
  %79 = getelementptr inbounds %struct.hfa384x_ch_info_result_sub, %struct.hfa384x_ch_info_result_sub* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = load %struct.hfa384x_ch_info_result_sub*, %struct.hfa384x_ch_info_result_sub** %8, align 8
  %81 = getelementptr inbounds %struct.hfa384x_ch_info_result_sub, %struct.hfa384x_ch_info_result_sub* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.hfa384x_ch_info_result_sub*, %struct.hfa384x_ch_info_result_sub** %9, align 8
  %84 = getelementptr inbounds %struct.hfa384x_ch_info_result_sub, %struct.hfa384x_ch_info_result_sub* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  %87 = load %struct.hfa384x_ch_info_result_sub*, %struct.hfa384x_ch_info_result_sub** %9, align 8
  %88 = getelementptr inbounds %struct.hfa384x_ch_info_result_sub, %struct.hfa384x_ch_info_result_sub* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @HFA384x_CHINFORESULT_BSSACTIVE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %95 = load %struct.hfa384x_ch_info_result_sub*, %struct.hfa384x_ch_info_result_sub** %9, align 8
  %96 = getelementptr inbounds %struct.hfa384x_ch_info_result_sub, %struct.hfa384x_ch_info_result_sub* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.hfa384x_ch_info_result_sub*, %struct.hfa384x_ch_info_result_sub** %9, align 8
  %99 = getelementptr inbounds %struct.hfa384x_ch_info_result_sub, %struct.hfa384x_ch_info_result_sub* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.hfa384x_ch_info_result_sub*, %struct.hfa384x_ch_info_result_sub** %9, align 8
  %102 = getelementptr inbounds %struct.hfa384x_ch_info_result_sub, %struct.hfa384x_ch_info_result_sub* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @HFA384x_CHINFORESULT_PCFACTIVE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 1, i32 0
  %109 = call i32 @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %86, i8* %94, i32 %97, i32 %100, i32 %108)
  %110 = load i32, i32* %7, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %58, %57, %37
  %113 = load i32, i32* %6, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %23

115:                                              ; preds = %23
  %116 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %117 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = call i32 @atomic_set(i32* %118, i32 2)
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %122 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 8
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
