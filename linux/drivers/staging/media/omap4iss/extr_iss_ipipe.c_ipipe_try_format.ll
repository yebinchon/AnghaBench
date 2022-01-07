; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipe.c_ipipe_try_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipe.c_ipipe_try_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_ipipe_device = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32 }

@ipipe_fmts = common dso_local global i32* null, align 8
@MEDIA_BUS_FMT_SGRBG10_1X10 = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_UYVY8_1X16 = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_JPEG = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iss_ipipe_device*, %struct.v4l2_subdev_pad_config*, i32, %struct.v4l2_mbus_framefmt*, i32)* @ipipe_try_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipipe_try_format(%struct.iss_ipipe_device* %0, %struct.v4l2_subdev_pad_config* %1, i32 %2, %struct.v4l2_mbus_framefmt* %3, i32 %4) #0 {
  %6 = alloca %struct.iss_ipipe_device*, align 8
  %7 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iss_ipipe_device* %0, %struct.iss_ipipe_device** %6, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.v4l2_mbus_framefmt* %3, %struct.v4l2_mbus_framefmt** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %16 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %12, align 4
  %18 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %19 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %100 [
    i32 129, label %22
    i32 128, label %68
  ]

22:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %40, %22
  %24 = load i32, i32* %14, align 4
  %25 = load i32*, i32** @ipipe_fmts, align 8
  %26 = call i32 @ARRAY_SIZE(i32* %25)
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %30 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** @ipipe_fmts, align 8
  %33 = load i32, i32* %14, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %31, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %43

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %14, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %14, align 4
  br label %23

43:                                               ; preds = %38, %23
  %44 = load i32, i32* %14, align 4
  %45 = load i32*, i32** @ipipe_fmts, align 8
  %46 = call i32 @ARRAY_SIZE(i32* %45)
  %47 = icmp uge i32 %44, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @MEDIA_BUS_FMT_SGRBG10_1X10, align 4
  %50 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %51 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i32, i32* @u32, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i8* @clamp_t(i32 %53, i32 %54, i32 1, i32 8192)
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %58 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @u32, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i8* @clamp_t(i32 %59, i32 %60, i32 1, i32 8192)
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %64 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %66 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %67 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  br label %100

68:                                               ; preds = %5
  %69 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %6, align 8
  %70 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %7, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call %struct.v4l2_mbus_framefmt* @__ipipe_get_format(%struct.iss_ipipe_device* %69, %struct.v4l2_subdev_pad_config* %70, i32 129, i32 %71)
  store %struct.v4l2_mbus_framefmt* %72, %struct.v4l2_mbus_framefmt** %11, align 8
  %73 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %74 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %75 = call i32 @memcpy(%struct.v4l2_mbus_framefmt* %73, %struct.v4l2_mbus_framefmt* %74, i32 20)
  %76 = load i32, i32* @MEDIA_BUS_FMT_UYVY8_1X16, align 4
  %77 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %78 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @u32, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %82 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @clamp_t(i32 %79, i32 %80, i32 32, i32 %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %87 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @u32, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %91 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @clamp_t(i32 %88, i32 %89, i32 32, i32 %92)
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %96 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @V4L2_COLORSPACE_JPEG, align 4
  %98 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %99 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %5, %68, %52
  %101 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %102 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %103 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i8* @clamp_t(i32, i32, i32, i32) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__ipipe_get_format(%struct.iss_ipipe_device*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
