; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-of.c_create_of_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-of.c_create_of_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_media_dev = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_fwnode_link = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s:%d -> %s:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_media_dev*, %struct.v4l2_subdev*, %struct.v4l2_fwnode_link*)* @create_of_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_of_link(%struct.imx_media_dev* %0, %struct.v4l2_subdev* %1, %struct.v4l2_fwnode_link* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.imx_media_dev*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.v4l2_fwnode_link*, align 8
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca %struct.v4l2_subdev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.imx_media_dev* %0, %struct.imx_media_dev** %5, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %6, align 8
  store %struct.v4l2_fwnode_link* %2, %struct.v4l2_fwnode_link** %7, align 8
  %13 = load %struct.v4l2_fwnode_link*, %struct.v4l2_fwnode_link** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_fwnode_link, %struct.v4l2_fwnode_link* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp uge i64 %15, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %105

24:                                               ; preds = %3
  %25 = load %struct.imx_media_dev*, %struct.imx_media_dev** %5, align 8
  %26 = load %struct.v4l2_fwnode_link*, %struct.v4l2_fwnode_link** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_fwnode_link, %struct.v4l2_fwnode_link* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.v4l2_subdev* @imx_media_find_subdev_by_fwnode(%struct.imx_media_dev* %25, i32 %28)
  store %struct.v4l2_subdev* %29, %struct.v4l2_subdev** %8, align 8
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %31 = icmp ne %struct.v4l2_subdev* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %105

33:                                               ; preds = %24
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load %struct.v4l2_fwnode_link*, %struct.v4l2_fwnode_link** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_fwnode_link, %struct.v4l2_fwnode_link* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %33
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  store %struct.v4l2_subdev* %48, %struct.v4l2_subdev** %9, align 8
  %49 = load %struct.v4l2_fwnode_link*, %struct.v4l2_fwnode_link** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_fwnode_link, %struct.v4l2_fwnode_link* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %11, align 4
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  store %struct.v4l2_subdev* %52, %struct.v4l2_subdev** %10, align 8
  %53 = load %struct.v4l2_fwnode_link*, %struct.v4l2_fwnode_link** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_fwnode_link, %struct.v4l2_fwnode_link* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %12, align 4
  br label %67

57:                                               ; preds = %33
  %58 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  store %struct.v4l2_subdev* %58, %struct.v4l2_subdev** %9, align 8
  %59 = load %struct.v4l2_fwnode_link*, %struct.v4l2_fwnode_link** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_fwnode_link, %struct.v4l2_fwnode_link* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %11, align 4
  %63 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  store %struct.v4l2_subdev* %63, %struct.v4l2_subdev** %10, align 8
  %64 = load %struct.v4l2_fwnode_link*, %struct.v4l2_fwnode_link** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_fwnode_link, %struct.v4l2_fwnode_link* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %57, %47
  %68 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %69 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %76 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %80
  %82 = call i64 @media_entity_find_link(%struct.TYPE_5__* %74, %struct.TYPE_5__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %105

85:                                               ; preds = %67
  %86 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %87 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %90 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %94 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @v4l2_info(i32 %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %92, i32 %95, i32 %96)
  %98 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %99 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %98, i32 0, i32 0
  %100 = load i32, i32* %11, align 4
  %101 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %102 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %101, i32 0, i32 0
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @media_create_pad_link(%struct.TYPE_6__* %99, i32 %100, %struct.TYPE_6__* %102, i32 %103, i32 0)
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %85, %84, %32, %21
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.v4l2_subdev* @imx_media_find_subdev_by_fwnode(%struct.imx_media_dev*, i32) #1

declare dso_local i64 @media_entity_find_link(%struct.TYPE_5__*, %struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_info(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @media_create_pad_link(%struct.TYPE_6__*, i32, %struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
