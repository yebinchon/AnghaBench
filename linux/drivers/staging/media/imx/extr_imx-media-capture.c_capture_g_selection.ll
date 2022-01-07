; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-capture.c_capture_g_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-capture.c_capture_g_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.capture_priv = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @capture_g_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @capture_g_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.capture_priv*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.capture_priv* @video_drvdata(%struct.file* %9)
  store %struct.capture_priv* %10, %struct.capture_priv** %8, align 8
  %11 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %49 [
    i32 131, label %14
    i32 129, label %14
    i32 130, label %14
    i32 128, label %22
  ]

14:                                               ; preds = %3, %3, %3
  %15 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %15, i32 0, i32 1
  %17 = load %struct.capture_priv*, %struct.capture_priv** %8, align 8
  %18 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = bitcast %struct.TYPE_10__* %16 to i8*
  %21 = bitcast %struct.TYPE_10__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 16, i1 false)
  br label %52

22:                                               ; preds = %3
  %23 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 3
  store i32 0, i32* %25, align 4
  %26 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  store i32 0, i32* %28, align 4
  %29 = load %struct.capture_priv*, %struct.capture_priv** %8, align 8
  %30 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.capture_priv*, %struct.capture_priv** %8, align 8
  %40 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  br label %52

49:                                               ; preds = %3
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %53

52:                                               ; preds = %22, %14
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.capture_priv* @video_drvdata(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
