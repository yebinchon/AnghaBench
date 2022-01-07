; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_video.c_cedrus_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_video.c_cedrus_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.cedrus_ctx = type { i64, %struct.TYPE_4__, %struct.cedrus_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.cedrus_dev = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 (%struct.cedrus_ctx*)* }

@CEDRUS_CODEC_MPEG2 = common dso_local global i64 0, align 8
@CEDRUS_CODEC_H264 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VB2_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @cedrus_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cedrus_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cedrus_ctx*, align 8
  %7 = alloca %struct.cedrus_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %10 = call %struct.cedrus_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %9)
  store %struct.cedrus_ctx* %10, %struct.cedrus_ctx** %6, align 8
  %11 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %6, align 8
  %12 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %11, i32 0, i32 2
  %13 = load %struct.cedrus_dev*, %struct.cedrus_dev** %12, align 8
  store %struct.cedrus_dev* %13, %struct.cedrus_dev** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %6, align 8
  %15 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %26 [
    i32 128, label %18
    i32 129, label %22
  ]

18:                                               ; preds = %2
  %19 = load i64, i64* @CEDRUS_CODEC_MPEG2, align 8
  %20 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %29

22:                                               ; preds = %2
  %23 = load i64, i64* @CEDRUS_CODEC_H264, align 8
  %24 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %69

29:                                               ; preds = %22, %18
  %30 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %31 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %29
  %36 = load %struct.cedrus_dev*, %struct.cedrus_dev** %7, align 8
  %37 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %37, align 8
  %39 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %6, align 8
  %40 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %38, i64 %41
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32 (%struct.cedrus_ctx*)*, i32 (%struct.cedrus_ctx*)** %44, align 8
  %46 = icmp ne i32 (%struct.cedrus_ctx*)* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %35
  %48 = load %struct.cedrus_dev*, %struct.cedrus_dev** %7, align 8
  %49 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %49, align 8
  %51 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %6, align 8
  %52 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %50, i64 %53
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32 (%struct.cedrus_ctx*)*, i32 (%struct.cedrus_ctx*)** %56, align 8
  %58 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %6, align 8
  %59 = call i32 %57(%struct.cedrus_ctx* %58)
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %47, %35, %29
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %65 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %66 = call i32 @cedrus_queue_cleanup(%struct.vb2_queue* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %60
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %26
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.cedrus_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i32 @cedrus_queue_cleanup(%struct.vb2_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
