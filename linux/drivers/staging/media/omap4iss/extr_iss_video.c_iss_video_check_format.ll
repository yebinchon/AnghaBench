; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_video.c_iss_video_check_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_video.c_iss_video_check_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_video = type { i32 }
%struct.iss_video_fh = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64 }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.v4l2_pix_format = type { i64, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iss_video*, %struct.iss_video_fh*)* @iss_video_check_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iss_video_check_format(%struct.iss_video* %0, %struct.iss_video_fh* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iss_video*, align 8
  %5 = alloca %struct.iss_video_fh*, align 8
  %6 = alloca %struct.v4l2_mbus_framefmt, align 4
  %7 = alloca %struct.v4l2_pix_format, align 8
  %8 = alloca i32, align 4
  store %struct.iss_video* %0, %struct.iss_video** %4, align 8
  store %struct.iss_video_fh* %1, %struct.iss_video_fh** %5, align 8
  %9 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %10 = call i32 @__iss_video_get_format(%struct.iss_video* %9, %struct.v4l2_mbus_framefmt* %6)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %3, align 4
  br label %73

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %7, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %18 = call i32 @iss_video_mbus_to_pix(%struct.iss_video* %17, %struct.v4l2_mbus_framefmt* %6, %struct.v4l2_pix_format* %7)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.iss_video_fh*, %struct.iss_video_fh** %5, align 8
  %20 = getelementptr inbounds %struct.iss_video_fh, %struct.iss_video_fh* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %7, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %24, %26
  br i1 %27, label %68, label %28

28:                                               ; preds = %15
  %29 = load %struct.iss_video_fh*, %struct.iss_video_fh** %5, align 8
  %30 = getelementptr inbounds %struct.iss_video_fh, %struct.iss_video_fh* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %7, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %34, %36
  br i1 %37, label %68, label %38

38:                                               ; preds = %28
  %39 = load %struct.iss_video_fh*, %struct.iss_video_fh** %5, align 8
  %40 = getelementptr inbounds %struct.iss_video_fh, %struct.iss_video_fh* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %7, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %44, %46
  br i1 %47, label %68, label %48

48:                                               ; preds = %38
  %49 = load %struct.iss_video_fh*, %struct.iss_video_fh** %5, align 8
  %50 = getelementptr inbounds %struct.iss_video_fh, %struct.iss_video_fh* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %7, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %54, %56
  br i1 %57, label %68, label %58

58:                                               ; preds = %48
  %59 = load %struct.iss_video_fh*, %struct.iss_video_fh** %5, align 8
  %60 = getelementptr inbounds %struct.iss_video_fh, %struct.iss_video_fh* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %7, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %58, %48, %38, %28, %15
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %73

71:                                               ; preds = %58
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %68, %13
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @__iss_video_get_format(%struct.iss_video*, %struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @iss_video_mbus_to_pix(%struct.iss_video*, %struct.v4l2_mbus_framefmt*, %struct.v4l2_pix_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
