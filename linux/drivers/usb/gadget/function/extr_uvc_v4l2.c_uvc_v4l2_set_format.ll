; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_v4l2.c_uvc_v4l2_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_v4l2.c_uvc_v4l2_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_format = type { i32, i64 }
%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i32, i32, i64 }
%struct.video_device = type { i32 }
%struct.uvc_device = type { i32, %struct.uvc_video }
%struct.uvc_video = type { i32, i32, i32, i32, i64 }

@uvc_formats = common dso_local global %struct.uvc_format* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Unsupported format 0x%08x.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @uvc_v4l2_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_v4l2_set_format(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca %struct.uvc_device*, align 8
  %10 = alloca %struct.uvc_video*, align 8
  %11 = alloca %struct.uvc_format*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = call %struct.video_device* @video_devdata(%struct.file* %15)
  store %struct.video_device* %16, %struct.video_device** %8, align 8
  %17 = load %struct.video_device*, %struct.video_device** %8, align 8
  %18 = call %struct.uvc_device* @video_get_drvdata(%struct.video_device* %17)
  store %struct.uvc_device* %18, %struct.uvc_device** %9, align 8
  %19 = load %struct.uvc_device*, %struct.uvc_device** %9, align 8
  %20 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %19, i32 0, i32 1
  store %struct.uvc_video* %20, %struct.uvc_video** %10, align 8
  store i32 0, i32* %14, align 4
  br label %21

21:                                               ; preds = %42, %3
  %22 = load i32, i32* %14, align 4
  %23 = load %struct.uvc_format*, %struct.uvc_format** @uvc_formats, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.uvc_format* %23)
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %21
  %27 = load %struct.uvc_format*, %struct.uvc_format** @uvc_formats, align 8
  %28 = load i32, i32* %14, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %27, i64 %29
  store %struct.uvc_format* %30, %struct.uvc_format** %11, align 8
  %31 = load %struct.uvc_format*, %struct.uvc_format** %11, align 8
  %32 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %33, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %45

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %14, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %14, align 4
  br label %21

45:                                               ; preds = %40, %21
  %46 = load i32, i32* %14, align 4
  %47 = load %struct.uvc_format*, %struct.uvc_format** @uvc_formats, align 8
  %48 = call i32 @ARRAY_SIZE(%struct.uvc_format* %47)
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load %struct.uvc_device*, %struct.uvc_device** %9, align 8
  %52 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %51, i32 0, i32 0
  %53 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 7
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @uvcg_info(i32* %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %141

61:                                               ; preds = %45
  %62 = load %struct.uvc_format*, %struct.uvc_format** %11, align 8
  %63 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 %64, %69
  %71 = sdiv i32 %70, 8
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %61
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = mul i32 %75, %80
  br label %88

82:                                               ; preds = %61
  %83 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  br label %88

88:                                               ; preds = %82, %74
  %89 = phi i32 [ %81, %74 ], [ %87, %82 ]
  store i32 %89, i32* %12, align 4
  %90 = load %struct.uvc_format*, %struct.uvc_format** %11, align 8
  %91 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.uvc_video*, %struct.uvc_video** %10, align 8
  %94 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %93, i32 0, i32 4
  store i64 %92, i64* %94, align 8
  %95 = load %struct.uvc_format*, %struct.uvc_format** %11, align 8
  %96 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.uvc_video*, %struct.uvc_video** %10, align 8
  %99 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %101 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.uvc_video*, %struct.uvc_video** %10, align 8
  %106 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %108 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.uvc_video*, %struct.uvc_video** %10, align 8
  %113 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load %struct.uvc_video*, %struct.uvc_video** %10, align 8
  %116 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %118 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %119 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 6
  store i32 %117, i32* %121, align 4
  %122 = load i32, i32* %13, align 4
  %123 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %124 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 3
  store i32 %122, i32* %126, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %129 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  store i32 %127, i32* %131, align 8
  %132 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %133 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %134 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 5
  store i32 %132, i32* %136, align 8
  %137 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %138 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 4
  store i64 0, i64* %140, align 8
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %88, %50
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.uvc_device* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.uvc_format*) #1

declare dso_local i32 @uvcg_info(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
