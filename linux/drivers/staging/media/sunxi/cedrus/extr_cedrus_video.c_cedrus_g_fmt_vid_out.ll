; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_video.c_cedrus_g_fmt_vid_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_video.c_cedrus_g_fmt_vid_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.cedrus_ctx = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@V4L2_PIX_FMT_MPEG2_SLICE = common dso_local global i32 0, align 4
@SZ_1K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @cedrus_g_fmt_vid_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cedrus_g_fmt_vid_out(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.cedrus_ctx*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.cedrus_ctx* @cedrus_file2ctx(%struct.file* %9)
  store %struct.cedrus_ctx* %10, %struct.cedrus_ctx** %8, align 8
  %11 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %8, align 8
  %12 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %8, align 8
  %18 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %16, %3
  %23 = load i32, i32* @V4L2_PIX_FMT_MPEG2_SLICE, align 4
  %24 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* @SZ_1K, align 4
  %29 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  %33 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = call i32 @cedrus_prepare_format(%struct.TYPE_6__* %35)
  store i32 0, i32* %4, align 4
  br label %45

37:                                               ; preds = %16
  %38 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %8, align 8
  %42 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %41, i32 0, i32 0
  %43 = bitcast %struct.TYPE_6__* %40 to i8*
  %44 = bitcast %struct.TYPE_6__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 8, i1 false)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %37, %22
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.cedrus_ctx* @cedrus_file2ctx(%struct.file*) #1

declare dso_local i32 @cedrus_prepare_format(%struct.TYPE_6__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
