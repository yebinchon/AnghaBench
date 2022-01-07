; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipeif.c_ipipeif_try_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipeif.c_ipipeif_try_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_ipipeif_device = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32 }

@ipipeif_fmts = common dso_local global i32* null, align 8
@MEDIA_BUS_FMT_SGRBG10_1X10 = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iss_ipipeif_device*, %struct.v4l2_subdev_pad_config*, i32, %struct.v4l2_mbus_framefmt*, i32)* @ipipeif_try_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipipeif_try_format(%struct.iss_ipipeif_device* %0, %struct.v4l2_subdev_pad_config* %1, i32 %2, %struct.v4l2_mbus_framefmt* %3, i32 %4) #0 {
  %6 = alloca %struct.iss_ipipeif_device*, align 8
  %7 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iss_ipipeif_device* %0, %struct.iss_ipipeif_device** %6, align 8
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
  switch i32 %21, label %123 [
    i32 130, label %22
    i32 129, label %65
    i32 128, label %97
  ]

22:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %40, %22
  %24 = load i32, i32* %14, align 4
  %25 = load i32*, i32** @ipipeif_fmts, align 8
  %26 = call i32 @ARRAY_SIZE(i32* %25)
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %30 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** @ipipeif_fmts, align 8
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
  %45 = load i32*, i32** @ipipeif_fmts, align 8
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
  br label %123

65:                                               ; preds = %5
  %66 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %6, align 8
  %67 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %7, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call %struct.v4l2_mbus_framefmt* @__ipipeif_get_format(%struct.iss_ipipeif_device* %66, %struct.v4l2_subdev_pad_config* %67, i32 130, i32 %68)
  store %struct.v4l2_mbus_framefmt* %69, %struct.v4l2_mbus_framefmt** %11, align 8
  %70 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %71 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %72 = call i32 @memcpy(%struct.v4l2_mbus_framefmt* %70, %struct.v4l2_mbus_framefmt* %71, i32 20)
  %73 = load i32, i32* @u32, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %76 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add i32 %77, 15
  %79 = and i32 %78, -16
  %80 = call i8* @clamp_t(i32 %73, i32 %74, i32 32, i32 %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %83 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %85 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, -16
  store i32 %87, i32* %85, align 4
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
  br label %123

97:                                               ; preds = %5
  %98 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %6, align 8
  %99 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %7, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call %struct.v4l2_mbus_framefmt* @__ipipeif_get_format(%struct.iss_ipipeif_device* %98, %struct.v4l2_subdev_pad_config* %99, i32 130, i32 %100)
  store %struct.v4l2_mbus_framefmt* %101, %struct.v4l2_mbus_framefmt** %11, align 8
  %102 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %103 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %104 = call i32 @memcpy(%struct.v4l2_mbus_framefmt* %102, %struct.v4l2_mbus_framefmt* %103, i32 20)
  %105 = load i32, i32* @u32, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %108 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @clamp_t(i32 %105, i32 %106, i32 32, i32 %109)
  %111 = ptrtoint i8* %110 to i32
  %112 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %113 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @u32, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %117 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @clamp_t(i32 %114, i32 %115, i32 32, i32 %118)
  %120 = ptrtoint i8* %119 to i32
  %121 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %122 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %5, %97, %65, %52
  %124 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %125 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %126 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %128 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %129 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i8* @clamp_t(i32, i32, i32, i32) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__ipipeif_get_format(%struct.iss_ipipeif_device*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
