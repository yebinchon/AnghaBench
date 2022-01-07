; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_video.c_cedrus_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_video.c_cedrus_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32 }
%struct.cedrus_ctx = type { %struct.cedrus_dev* }
%struct.cedrus_dev = type { i32 }

@CEDRUS_DECODE_DST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @cedrus_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cedrus_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.cedrus_ctx*, align 8
  %9 = alloca %struct.cedrus_dev*, align 8
  %10 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.cedrus_ctx* @cedrus_file2ctx(%struct.file* %11)
  store %struct.cedrus_ctx* %12, %struct.cedrus_ctx** %8, align 8
  %13 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %8, align 8
  %14 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %13, i32 0, i32 0
  %15 = load %struct.cedrus_dev*, %struct.cedrus_dev** %14, align 8
  store %struct.cedrus_dev* %15, %struct.cedrus_dev** %9, align 8
  %16 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.v4l2_pix_format* %18, %struct.v4l2_pix_format** %10, align 8
  %19 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %20 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CEDRUS_DECODE_DST, align 4
  %23 = load %struct.cedrus_dev*, %struct.cedrus_dev** %9, align 8
  %24 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cedrus_check_format(i32 %21, i32 %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %34

31:                                               ; preds = %3
  %32 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %33 = call i32 @cedrus_prepare_format(%struct.v4l2_pix_format* %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.cedrus_ctx* @cedrus_file2ctx(%struct.file*) #1

declare dso_local i32 @cedrus_check_format(i32, i32, i32) #1

declare dso_local i32 @cedrus_prepare_format(%struct.v4l2_pix_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
