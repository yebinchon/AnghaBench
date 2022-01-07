; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-internal-sd.c_create_ipu_internal_links.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-internal-sd.c_create_ipu_internal_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_media_dev = type { %struct.v4l2_subdev*** }
%struct.internal_subdev = type { %struct.internal_pad* }
%struct.internal_pad = type { i32, %struct.internal_link* }
%struct.internal_link = type { i64 }
%struct.v4l2_subdev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.media_pad* }
%struct.media_pad = type { i32 }

@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_media_dev*, %struct.internal_subdev*, %struct.v4l2_subdev*, i32)* @create_ipu_internal_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_ipu_internal_links(%struct.imx_media_dev* %0, %struct.internal_subdev* %1, %struct.v4l2_subdev* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.imx_media_dev*, align 8
  %7 = alloca %struct.internal_subdev*, align 8
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.internal_pad*, align 8
  %11 = alloca %struct.internal_link*, align 8
  %12 = alloca %struct.media_pad*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.v4l2_subdev*, align 8
  store %struct.imx_media_dev* %0, %struct.imx_media_dev** %6, align 8
  store %struct.internal_subdev* %1, %struct.internal_subdev** %7, align 8
  store %struct.v4l2_subdev* %2, %struct.v4l2_subdev** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %85, %4
  %18 = load i32, i32* %13, align 4
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %20 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %88

24:                                               ; preds = %17
  %25 = load %struct.internal_subdev*, %struct.internal_subdev** %7, align 8
  %26 = getelementptr inbounds %struct.internal_subdev, %struct.internal_subdev* %25, i32 0, i32 0
  %27 = load %struct.internal_pad*, %struct.internal_pad** %26, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.internal_pad, %struct.internal_pad* %27, i64 %29
  store %struct.internal_pad* %30, %struct.internal_pad** %10, align 8
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %32 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load %struct.media_pad*, %struct.media_pad** %33, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %34, i64 %36
  store %struct.media_pad* %37, %struct.media_pad** %12, align 8
  %38 = load %struct.media_pad*, %struct.media_pad** %12, align 8
  %39 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %24
  br label %85

45:                                               ; preds = %24
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %81, %45
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.internal_pad*, %struct.internal_pad** %10, align 8
  %49 = getelementptr inbounds %struct.internal_pad, %struct.internal_pad* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %84

52:                                               ; preds = %46
  %53 = load %struct.internal_pad*, %struct.internal_pad** %10, align 8
  %54 = getelementptr inbounds %struct.internal_pad, %struct.internal_pad* %53, i32 0, i32 1
  %55 = load %struct.internal_link*, %struct.internal_link** %54, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.internal_link, %struct.internal_link* %55, i64 %57
  store %struct.internal_link* %58, %struct.internal_link** %11, align 8
  %59 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %60 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %59, i32 0, i32 0
  %61 = load %struct.v4l2_subdev***, %struct.v4l2_subdev**** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.v4l2_subdev**, %struct.v4l2_subdev*** %61, i64 %63
  %65 = load %struct.v4l2_subdev**, %struct.v4l2_subdev*** %64, align 8
  %66 = load %struct.internal_link*, %struct.internal_link** %11, align 8
  %67 = getelementptr inbounds %struct.internal_link, %struct.internal_link* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.v4l2_subdev*, %struct.v4l2_subdev** %65, i64 %68
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %69, align 8
  store %struct.v4l2_subdev* %70, %struct.v4l2_subdev** %16, align 8
  %71 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %72 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %16, align 8
  %74 = load %struct.internal_link*, %struct.internal_link** %11, align 8
  %75 = call i32 @create_internal_link(%struct.imx_media_dev* %71, %struct.v4l2_subdev* %72, %struct.v4l2_subdev* %73, %struct.internal_link* %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %52
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %5, align 4
  br label %89

80:                                               ; preds = %52
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %14, align 4
  br label %46

84:                                               ; preds = %46
  br label %85

85:                                               ; preds = %84, %44
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %17

88:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %78
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @create_internal_link(%struct.imx_media_dev*, %struct.v4l2_subdev*, %struct.v4l2_subdev*, %struct.internal_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
