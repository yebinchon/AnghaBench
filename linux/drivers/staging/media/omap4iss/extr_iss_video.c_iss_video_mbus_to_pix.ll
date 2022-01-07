; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_video.c_iss_video_mbus_to_pix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_video.c_iss_video_mbus_to_pix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.iss_video = type { i32, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i64, i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32 }

@formats = common dso_local global %struct.TYPE_3__* null, align 8
@V4L2_PIX_FMT_NV12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iss_video*, %struct.v4l2_mbus_framefmt*, %struct.v4l2_pix_format*)* @iss_video_mbus_to_pix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iss_video_mbus_to_pix(%struct.iss_video* %0, %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_pix_format* %2) #0 {
  %4 = alloca %struct.iss_video*, align 8
  %5 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %6 = alloca %struct.v4l2_pix_format*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iss_video* %0, %struct.iss_video** %4, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %5, align 8
  store %struct.v4l2_pix_format* %2, %struct.v4l2_pix_format** %6, align 8
  %10 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %11 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %14 = call i32 @memset(%struct.v4l2_pix_format* %13, i32 0, i32 28)
  %15 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %24 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %44, %3
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @formats, align 8
  %28 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %27)
  %29 = sub nsw i32 %28, 1
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @formats, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %47

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %25

47:                                               ; preds = %42, %25
  %48 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %49 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @formats, align 8
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ALIGN(i32 %56, i32 8)
  %58 = mul nsw i32 %50, %57
  %59 = sdiv i32 %58, 8
  store i32 %59, i32* %8, align 4
  %60 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %61 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %47
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %68 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @clamp(i32 %65, i32 %66, i32 %69)
  store i32 %70, i32* %7, align 4
  br label %73

71:                                               ; preds = %47
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %71, %64
  %74 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %75 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %78, %73
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %85 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ALIGN(i32 %83, i32 %86)
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %82, %78
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @formats, align 8
  %90 = load i32, i32* %9, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %96 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %99 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %101 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %104 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = mul i32 %102, %105
  %107 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %108 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %110 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %113 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %112, i32 0, i32 6
  store i32 %111, i32* %113, align 4
  %114 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %115 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %118 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 4
  %119 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %120 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @V4L2_PIX_FMT_NV12, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %137

124:                                              ; preds = %88
  %125 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %126 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %129 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = mul i32 %127, %130
  %132 = udiv i32 %131, 2
  %133 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %134 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = add i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %124, %88
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %8, align 4
  %140 = sub i32 %138, %139
  ret i32 %140
}

declare dso_local i32 @memset(%struct.v4l2_pix_format*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
