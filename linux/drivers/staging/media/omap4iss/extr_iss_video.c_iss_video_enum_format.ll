; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_video.c_iss_video_enum_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_video.c_iss_video_enum_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_format_info = type { i64, i32 }
%struct.file = type { i32 }
%struct.v4l2_fmtdesc = type { i32, i64, i32 }
%struct.iss_video = type { i64 }
%struct.v4l2_mbus_framefmt = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@formats = common dso_local global %struct.iss_format_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* @iss_video_enum_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iss_video_enum_format(%struct.file* %0, i8* %1, %struct.v4l2_fmtdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_fmtdesc*, align 8
  %8 = alloca %struct.iss_video*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iss_format_info*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_fmtdesc* %2, %struct.v4l2_fmtdesc** %7, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call %struct.iss_video* @video_drvdata(%struct.file* %14)
  store %struct.iss_video* %15, %struct.iss_video** %8, align 8
  %16 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.iss_video*, %struct.iss_video** %8, align 8
  %23 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %72

29:                                               ; preds = %3
  %30 = load %struct.iss_video*, %struct.iss_video** %8, align 8
  %31 = call i32 @__iss_video_get_format(%struct.iss_video* %30, %struct.v4l2_mbus_framefmt* %9)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %4, align 4
  br label %72

36:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %66, %36
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.iss_format_info*, %struct.iss_format_info** @formats, align 8
  %40 = call i32 @ARRAY_SIZE(%struct.iss_format_info* %39)
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %37
  %43 = load %struct.iss_format_info*, %struct.iss_format_info** @formats, align 8
  %44 = load i32, i32* %11, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.iss_format_info, %struct.iss_format_info* %43, i64 %45
  store %struct.iss_format_info* %46, %struct.iss_format_info** %13, align 8
  %47 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.iss_format_info*, %struct.iss_format_info** %13, align 8
  %50 = getelementptr inbounds %struct.iss_format_info, %struct.iss_format_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %66

54:                                               ; preds = %42
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.iss_format_info*, %struct.iss_format_info** %13, align 8
  %59 = getelementptr inbounds %struct.iss_format_info, %struct.iss_format_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  store i32 0, i32* %4, align 4
  br label %72

63:                                               ; preds = %54
  %64 = load i32, i32* %10, align 4
  %65 = add i32 %64, -1
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %63, %53
  %67 = load i32, i32* %11, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %37

69:                                               ; preds = %37
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %69, %57, %34, %26
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.iss_video* @video_drvdata(%struct.file*) #1

declare dso_local i32 @__iss_video_get_format(%struct.iss_video*, %struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.iss_format_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
