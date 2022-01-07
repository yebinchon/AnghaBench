; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_video.c_cedrus_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_video.c_cedrus_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cedrus_ctx = type { i32, %struct.TYPE_4__, %struct.cedrus_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.cedrus_dev = type { i32 }
%struct.vb2_queue = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @cedrus_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cedrus_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.cedrus_ctx*, align 8
  %9 = alloca %struct.cedrus_dev*, align 8
  %10 = alloca %struct.vb2_queue*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.cedrus_ctx* @cedrus_file2ctx(%struct.file* %12)
  store %struct.cedrus_ctx* %13, %struct.cedrus_ctx** %8, align 8
  %14 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %8, align 8
  %15 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %14, i32 0, i32 2
  %16 = load %struct.cedrus_dev*, %struct.cedrus_dev** %15, align 8
  store %struct.cedrus_dev* %16, %struct.cedrus_dev** %9, align 8
  %17 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %8, align 8
  %18 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %20, i32 %23)
  store %struct.vb2_queue* %24, %struct.vb2_queue** %10, align 8
  %25 = load %struct.vb2_queue*, %struct.vb2_queue** %10, align 8
  %26 = call i64 @vb2_is_busy(%struct.vb2_queue* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %51

31:                                               ; preds = %3
  %32 = load %struct.file*, %struct.file** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %35 = call i32 @cedrus_try_fmt_vid_cap(%struct.file* %32, i8* %33, %struct.v4l2_format* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %4, align 4
  br label %51

40:                                               ; preds = %31
  %41 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %8, align 8
  %46 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.cedrus_dev*, %struct.cedrus_dev** %9, align 8
  %48 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %8, align 8
  %49 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %48, i32 0, i32 0
  %50 = call i32 @cedrus_dst_format_set(%struct.cedrus_dev* %47, i32* %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %40, %38, %28
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.cedrus_ctx* @cedrus_file2ctx(%struct.file*) #1

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local i64 @vb2_is_busy(%struct.vb2_queue*) #1

declare dso_local i32 @cedrus_try_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i32 @cedrus_dst_format_set(%struct.cedrus_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
