; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_video.c_iss_video_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_video.c_iss_video_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32* }
%struct.iss_video = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.iss_video_fh = type { i32, %struct.iss_video*, %struct.TYPE_6__, %struct.TYPE_9__, %struct.vb2_queue }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.vb2_queue = type { i32, i32, i32, i32, i32*, i32*, %struct.iss_video_fh*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@iss_video_vb2ops = common dso_local global i32 0, align 4
@vb2_dma_contig_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @iss_video_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iss_video_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.iss_video*, align 8
  %5 = alloca %struct.iss_video_fh*, align 8
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.iss_video* @video_drvdata(%struct.file* %8)
  store %struct.iss_video* %9, %struct.iss_video** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.iss_video_fh* @kzalloc(i32 72, i32 %10)
  store %struct.iss_video_fh* %11, %struct.iss_video_fh** %5, align 8
  %12 = load %struct.iss_video_fh*, %struct.iss_video_fh** %5, align 8
  %13 = icmp ne %struct.iss_video_fh* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %121

17:                                               ; preds = %1
  %18 = load %struct.iss_video_fh*, %struct.iss_video_fh** %5, align 8
  %19 = getelementptr inbounds %struct.iss_video_fh, %struct.iss_video_fh* %18, i32 0, i32 0
  %20 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %21 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %20, i32 0, i32 2
  %22 = call i32 @v4l2_fh_init(i32* %19, %struct.TYPE_7__* %21)
  %23 = load %struct.iss_video_fh*, %struct.iss_video_fh** %5, align 8
  %24 = getelementptr inbounds %struct.iss_video_fh, %struct.iss_video_fh* %23, i32 0, i32 0
  %25 = call i32 @v4l2_fh_add(i32* %24)
  %26 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %27 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = call i32 @omap4iss_get(%struct.TYPE_8__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %17
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %107

34:                                               ; preds = %17
  %35 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %36 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = call i32 @v4l2_pipeline_pm_use(i32* %37, i32 1)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %43 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = call i32 @omap4iss_put(%struct.TYPE_8__* %44)
  br label %107

46:                                               ; preds = %34
  %47 = load %struct.iss_video_fh*, %struct.iss_video_fh** %5, align 8
  %48 = getelementptr inbounds %struct.iss_video_fh, %struct.iss_video_fh* %47, i32 0, i32 4
  store %struct.vb2_queue* %48, %struct.vb2_queue** %6, align 8
  %49 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %50 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %53 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @VB2_MMAP, align 4
  %55 = load i32, i32* @VB2_DMABUF, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %58 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.iss_video_fh*, %struct.iss_video_fh** %5, align 8
  %60 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %61 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %60, i32 0, i32 6
  store %struct.iss_video_fh* %59, %struct.iss_video_fh** %61, align 8
  %62 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %63 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %62, i32 0, i32 5
  store i32* @iss_video_vb2ops, i32** %63, align 8
  %64 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %65 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %64, i32 0, i32 4
  store i32* @vb2_dma_contig_memops, i32** %65, align 8
  %66 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %67 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %66, i32 0, i32 1
  store i32 4, i32* %67, align 4
  %68 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %69 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %70 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %72 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %71, i32 0, i32 1
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %77 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %79 = call i32 @vb2_queue_init(%struct.vb2_queue* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %46
  %83 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %84 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %83, i32 0, i32 1
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = call i32 @omap4iss_put(%struct.TYPE_8__* %85)
  br label %107

87:                                               ; preds = %46
  %88 = load %struct.iss_video_fh*, %struct.iss_video_fh** %5, align 8
  %89 = getelementptr inbounds %struct.iss_video_fh, %struct.iss_video_fh* %88, i32 0, i32 3
  %90 = call i32 @memset(%struct.TYPE_9__* %89, i32 0, i32 4)
  %91 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %92 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.iss_video_fh*, %struct.iss_video_fh** %5, align 8
  %95 = getelementptr inbounds %struct.iss_video_fh, %struct.iss_video_fh* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 4
  %97 = load %struct.iss_video_fh*, %struct.iss_video_fh** %5, align 8
  %98 = getelementptr inbounds %struct.iss_video_fh, %struct.iss_video_fh* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %101 = load %struct.iss_video_fh*, %struct.iss_video_fh** %5, align 8
  %102 = getelementptr inbounds %struct.iss_video_fh, %struct.iss_video_fh* %101, i32 0, i32 1
  store %struct.iss_video* %100, %struct.iss_video** %102, align 8
  %103 = load %struct.iss_video_fh*, %struct.iss_video_fh** %5, align 8
  %104 = getelementptr inbounds %struct.iss_video_fh, %struct.iss_video_fh* %103, i32 0, i32 0
  %105 = load %struct.file*, %struct.file** %3, align 8
  %106 = getelementptr inbounds %struct.file, %struct.file* %105, i32 0, i32 0
  store i32* %104, i32** %106, align 8
  br label %107

107:                                              ; preds = %87, %82, %41, %31
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load %struct.iss_video_fh*, %struct.iss_video_fh** %5, align 8
  %112 = getelementptr inbounds %struct.iss_video_fh, %struct.iss_video_fh* %111, i32 0, i32 0
  %113 = call i32 @v4l2_fh_del(i32* %112)
  %114 = load %struct.iss_video_fh*, %struct.iss_video_fh** %5, align 8
  %115 = getelementptr inbounds %struct.iss_video_fh, %struct.iss_video_fh* %114, i32 0, i32 0
  %116 = call i32 @v4l2_fh_exit(i32* %115)
  %117 = load %struct.iss_video_fh*, %struct.iss_video_fh** %5, align 8
  %118 = call i32 @kfree(%struct.iss_video_fh* %117)
  br label %119

119:                                              ; preds = %110, %107
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %119, %14
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.iss_video* @video_drvdata(%struct.file*) #1

declare dso_local %struct.iss_video_fh* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_fh_init(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @v4l2_fh_add(i32*) #1

declare dso_local i32 @omap4iss_get(%struct.TYPE_8__*) #1

declare dso_local i32 @v4l2_pipeline_pm_use(i32*, i32) #1

declare dso_local i32 @omap4iss_put(%struct.TYPE_8__*) #1

declare dso_local i32 @vb2_queue_init(%struct.vb2_queue*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @v4l2_fh_del(i32*) #1

declare dso_local i32 @v4l2_fh_exit(i32*) #1

declare dso_local i32 @kfree(%struct.iss_video_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
