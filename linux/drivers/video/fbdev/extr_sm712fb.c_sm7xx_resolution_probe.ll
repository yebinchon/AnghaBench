; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm712fb.c_sm7xx_resolution_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm712fb.c_sm7xx_resolution_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.smtcfb_info = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }

@smtc_scr_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SCREEN_X_RES = common dso_local global i64 0, align 8
@SCREEN_Y_RES_PC = common dso_local global i32 0, align 4
@SCREEN_BPP = common dso_local global i32 0, align 4
@SCREEN_Y_RES_NETBOOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smtcfb_info*)* @sm7xx_resolution_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sm7xx_resolution_probe(%struct.smtcfb_info* %0) #0 {
  %2 = alloca %struct.smtcfb_info*, align 8
  store %struct.smtcfb_info* %0, %struct.smtcfb_info** %2, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smtc_scr_info, i32 0, i32 0), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smtc_scr_info, i32 0, i32 0), align 8
  %7 = load %struct.smtcfb_info*, %struct.smtcfb_info** %2, align 8
  %8 = getelementptr inbounds %struct.smtcfb_info, %struct.smtcfb_info* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i64 %6, i64* %11, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smtc_scr_info, i32 0, i32 2), align 4
  %13 = load %struct.smtcfb_info*, %struct.smtcfb_info** %2, align 8
  %14 = getelementptr inbounds %struct.smtcfb_info, %struct.smtcfb_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  store i32 %12, i32* %17, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smtc_scr_info, i32 0, i32 1), align 8
  %19 = load %struct.smtcfb_info*, %struct.smtcfb_info** %2, align 8
  %20 = getelementptr inbounds %struct.smtcfb_info, %struct.smtcfb_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32 %18, i32* %23, align 8
  br label %43

24:                                               ; preds = %1
  %25 = load i64, i64* @SCREEN_X_RES, align 8
  %26 = load %struct.smtcfb_info*, %struct.smtcfb_info** %2, align 8
  %27 = getelementptr inbounds %struct.smtcfb_info, %struct.smtcfb_info* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i64 %25, i64* %30, align 8
  %31 = load i32, i32* @SCREEN_Y_RES_PC, align 4
  %32 = load %struct.smtcfb_info*, %struct.smtcfb_info** %2, align 8
  %33 = getelementptr inbounds %struct.smtcfb_info, %struct.smtcfb_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i32 %31, i32* %36, align 4
  %37 = load i32, i32* @SCREEN_BPP, align 4
  %38 = load %struct.smtcfb_info*, %struct.smtcfb_info** %2, align 8
  %39 = getelementptr inbounds %struct.smtcfb_info, %struct.smtcfb_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %37, i32* %42, align 8
  br label %43

43:                                               ; preds = %24, %5
  %44 = load %struct.smtcfb_info*, %struct.smtcfb_info** %2, align 8
  %45 = getelementptr inbounds %struct.smtcfb_info, %struct.smtcfb_info* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smtc_scr_info, i32 0, i32 1), align 8
  %51 = call i32 @big_pixel_depth(i32 %49, i32 %50)
  ret void
}

declare dso_local i32 @big_pixel_depth(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
