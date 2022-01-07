; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_v4l2.c_vidioc_enum_framesizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_v4l2.c_vidioc_enum_framesizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frmsizeenum = type { i64, i64, i32, i32 }
%struct.hantro_ctx = type { i32 }
%struct.hantro_fmt = type { i64, i32 }

@.str = private unnamed_addr constant [47 x i8] c"invalid frame size index (expected 0, got %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"unsupported bitstream format (%08x)\0A\00", align 1
@HANTRO_MODE_NONE = common dso_local global i64 0, align 8
@V4L2_FRMSIZE_TYPE_STEPWISE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frmsizeenum*)* @vidioc_enum_framesizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enum_framesizes(%struct.file* %0, i8* %1, %struct.v4l2_frmsizeenum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frmsizeenum*, align 8
  %8 = alloca %struct.hantro_ctx*, align 8
  %9 = alloca %struct.hantro_fmt*, align 8
  %10 = alloca %struct.hantro_fmt*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frmsizeenum* %2, %struct.v4l2_frmsizeenum** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.hantro_ctx* @fh_to_ctx(i8* %12)
  store %struct.hantro_ctx* %13, %struct.hantro_ctx** %8, align 8
  %14 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @vpu_debug(i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %61

25:                                               ; preds = %3
  %26 = load %struct.hantro_ctx*, %struct.hantro_ctx** %8, align 8
  %27 = call %struct.hantro_fmt* @hantro_get_formats(%struct.hantro_ctx* %26, i32* %11)
  store %struct.hantro_fmt* %27, %struct.hantro_fmt** %9, align 8
  %28 = load %struct.hantro_fmt*, %struct.hantro_fmt** %9, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.hantro_fmt* @hantro_find_format(%struct.hantro_fmt* %28, i32 %29, i64 %32)
  store %struct.hantro_fmt* %33, %struct.hantro_fmt** %10, align 8
  %34 = load %struct.hantro_fmt*, %struct.hantro_fmt** %10, align 8
  %35 = icmp ne %struct.hantro_fmt* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %25
  %37 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @vpu_debug(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %61

43:                                               ; preds = %25
  %44 = load %struct.hantro_fmt*, %struct.hantro_fmt** %10, align 8
  %45 = getelementptr inbounds %struct.hantro_fmt, %struct.hantro_fmt* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @HANTRO_MODE_NONE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %61

52:                                               ; preds = %43
  %53 = load i32, i32* @V4L2_FRMSIZE_TYPE_STEPWISE, align 4
  %54 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.hantro_fmt*, %struct.hantro_fmt** %10, align 8
  %57 = getelementptr inbounds %struct.hantro_fmt, %struct.hantro_fmt* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %52, %49, %36, %18
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.hantro_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @vpu_debug(i32, i8*, i64) #1

declare dso_local %struct.hantro_fmt* @hantro_get_formats(%struct.hantro_ctx*, i32*) #1

declare dso_local %struct.hantro_fmt* @hantro_find_format(%struct.hantro_fmt*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
