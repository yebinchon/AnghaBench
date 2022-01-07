; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_imx_media_mbus_fmt_to_pix_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_imx_media_mbus_fmt_to_pix_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.imx_media_pixfmt = type { i64, i32, i64, i32, i64 }

@CS_SEL_ANY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPUV3_COLORSPACE_YUV = common dso_local global i64 0, align 8
@CS_SEL_YUV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_media_mbus_fmt_to_pix_fmt(%struct.v4l2_pix_format* %0, %struct.v4l2_mbus_framefmt* %1, %struct.imx_media_pixfmt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_pix_format*, align 8
  %6 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %7 = alloca %struct.imx_media_pixfmt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.v4l2_pix_format* %0, %struct.v4l2_pix_format** %5, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %6, align 8
  store %struct.imx_media_pixfmt* %2, %struct.imx_media_pixfmt** %7, align 8
  %11 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %7, align 8
  %12 = icmp ne %struct.imx_media_pixfmt* %11, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %3
  %14 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CS_SEL_ANY, align 4
  %18 = call %struct.imx_media_pixfmt* @imx_media_find_ipu_format(i32 %16, i32 %17)
  store %struct.imx_media_pixfmt* %18, %struct.imx_media_pixfmt** %7, align 8
  %19 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %7, align 8
  %20 = icmp ne %struct.imx_media_pixfmt* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %13
  %22 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CS_SEL_ANY, align 4
  %26 = call %struct.imx_media_pixfmt* @imx_media_find_mbus_format(i32 %24, i32 %25, i32 1)
  store %struct.imx_media_pixfmt* %26, %struct.imx_media_pixfmt** %7, align 8
  br label %27

27:                                               ; preds = %21, %13
  %28 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %7, align 8
  %29 = icmp ne %struct.imx_media_pixfmt* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %138

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %7, align 8
  %36 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %7, align 8
  %41 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IPUV3_COLORSPACE_YUV, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32, i32* @CS_SEL_YUV, align 4
  %47 = call i32 @imx_media_enum_mbus_format(i32* %10, i32 0, i32 %46, i32 0)
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @CS_SEL_YUV, align 4
  %50 = call %struct.imx_media_pixfmt* @imx_media_find_mbus_format(i32 %48, i32 %49, i32 0)
  store %struct.imx_media_pixfmt* %50, %struct.imx_media_pixfmt** %7, align 8
  br label %51

51:                                               ; preds = %45, %39, %34
  %52 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %53 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @round_up(i32 %54, i32 8)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %7, align 8
  %57 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @round_up(i32 %61, i32 16)
  store i32 %62, i32* %9, align 4
  br label %71

63:                                               ; preds = %51
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %7, align 8
  %66 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = mul nsw i32 %64, %67
  %69 = ashr i32 %68, 3
  %70 = call i32 @round_up(i32 %69, i32 8)
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %63, %60
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %74 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %76 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %79 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %7, align 8
  %81 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %83, i32 0, i32 9
  store i32 %82, i32* %84, align 4
  %85 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %86 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %89 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %88, i32 0, i32 8
  store i32 %87, i32* %89, align 4
  %90 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %91 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %94 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %93, i32 0, i32 7
  store i32 %92, i32* %94, align 4
  %95 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %96 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %99 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 4
  %100 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %101 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %104 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 4
  %105 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %106 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %109 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %112 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  %113 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %7, align 8
  %114 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %71
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %120 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %118, %121
  %123 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %7, align 8
  %124 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = mul nsw i32 %122, %125
  %127 = ashr i32 %126, 3
  br label %134

128:                                              ; preds = %71
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %131 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %129, %132
  br label %134

134:                                              ; preds = %128, %117
  %135 = phi i32 [ %127, %117 ], [ %133, %128 ]
  %136 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %137 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %134, %30
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local %struct.imx_media_pixfmt* @imx_media_find_ipu_format(i32, i32) #1

declare dso_local %struct.imx_media_pixfmt* @imx_media_find_mbus_format(i32, i32, i32) #1

declare dso_local i32 @imx_media_enum_mbus_format(i32*, i32, i32, i32) #1

declare dso_local i32 @round_up(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
