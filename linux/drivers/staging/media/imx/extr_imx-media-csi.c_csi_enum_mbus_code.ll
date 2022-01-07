; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_enum_mbus_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_enum_mbus_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32 }
%struct.csi_priv = type { i32, i32 }
%struct.v4l2_fwnode_endpoint = type { i32 }
%struct.imx_media_pixfmt = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32 }

@CS_SEL_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to find upstream endpoint\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IPUV3_COLORSPACE_YUV = common dso_local global i32 0, align 4
@CS_SEL_YUV = common dso_local global i32 0, align 4
@CS_SEL_RGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_mbus_code_enum*)* @csi_enum_mbus_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi_enum_mbus_code(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_mbus_code_enum* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %6 = alloca %struct.v4l2_subdev_mbus_code_enum*, align 8
  %7 = alloca %struct.csi_priv*, align 8
  %8 = alloca %struct.v4l2_fwnode_endpoint, align 4
  %9 = alloca %struct.imx_media_pixfmt*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %5, align 8
  store %struct.v4l2_subdev_mbus_code_enum* %2, %struct.v4l2_subdev_mbus_code_enum** %6, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %14 = call %struct.csi_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev* %13)
  store %struct.csi_priv* %14, %struct.csi_priv** %7, align 8
  %15 = bitcast %struct.v4l2_fwnode_endpoint* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  store i32 0, i32* %11, align 4
  %16 = load %struct.csi_priv*, %struct.csi_priv** %7, align 8
  %17 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.csi_priv*, %struct.csi_priv** %7, align 8
  %20 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %21 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %6, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.v4l2_mbus_framefmt* @__csi_get_fmt(%struct.csi_priv* %19, %struct.v4l2_subdev_pad_config* %20, i32 130, i32 %23)
  store %struct.v4l2_mbus_framefmt* %24, %struct.v4l2_mbus_framefmt** %10, align 8
  %25 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %26 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CS_SEL_ANY, align 4
  %29 = call %struct.imx_media_pixfmt* @imx_media_find_mbus_format(i32 %27, i32 %28, i32 1)
  store %struct.imx_media_pixfmt* %29, %struct.imx_media_pixfmt** %9, align 8
  %30 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %6, align 8
  %31 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %89 [
    i32 130, label %33
    i32 129, label %41
    i32 128, label %41
  ]

33:                                               ; preds = %3
  %34 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %34, i32 0, i32 2
  %36 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %6, align 8
  %37 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CS_SEL_ANY, align 4
  %40 = call i32 @imx_media_enum_mbus_format(i32* %35, i32 %38, i32 %39, i32 1)
  store i32 %40, i32* %11, align 4
  br label %92

41:                                               ; preds = %3, %3
  %42 = load %struct.csi_priv*, %struct.csi_priv** %7, align 8
  %43 = call i32 @csi_get_upstream_endpoint(%struct.csi_priv* %42, %struct.v4l2_fwnode_endpoint* %8)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.csi_priv*, %struct.csi_priv** %7, align 8
  %48 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %47, i32 0, i32 1
  %49 = call i32 @v4l2_err(i32* %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %93

50:                                               ; preds = %41
  %51 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %52 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %9, align 8
  %53 = call i32 @requires_passthrough(%struct.v4l2_fwnode_endpoint* %8, %struct.v4l2_mbus_framefmt* %51, %struct.imx_media_pixfmt* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %50
  %56 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %6, align 8
  %57 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %11, align 4
  br label %93

63:                                               ; preds = %55
  %64 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %65 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %6, align 8
  %68 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  br label %88

69:                                               ; preds = %50
  %70 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %9, align 8
  %71 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IPUV3_COLORSPACE_YUV, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* @CS_SEL_YUV, align 4
  br label %79

77:                                               ; preds = %69
  %78 = load i32, i32* @CS_SEL_RGB, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  store i32 %80, i32* %12, align 4
  %81 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %6, align 8
  %82 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %81, i32 0, i32 2
  %83 = load %struct.v4l2_subdev_mbus_code_enum*, %struct.v4l2_subdev_mbus_code_enum** %6, align 8
  %84 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @imx_media_enum_ipu_format(i32* %82, i32 %85, i32 %86)
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %79, %63
  br label %92

89:                                               ; preds = %3
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %89, %88, %33
  br label %93

93:                                               ; preds = %92, %60, %46
  %94 = load %struct.csi_priv*, %struct.csi_priv** %7, align 8
  %95 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %94, i32 0, i32 0
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i32, i32* %11, align 4
  ret i32 %97
}

declare dso_local %struct.csi_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__csi_get_fmt(%struct.csi_priv*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

declare dso_local %struct.imx_media_pixfmt* @imx_media_find_mbus_format(i32, i32, i32) #1

declare dso_local i32 @imx_media_enum_mbus_format(i32*, i32, i32, i32) #1

declare dso_local i32 @csi_get_upstream_endpoint(%struct.csi_priv*, %struct.v4l2_fwnode_endpoint*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @requires_passthrough(%struct.v4l2_fwnode_endpoint*, %struct.v4l2_mbus_framefmt*, %struct.imx_media_pixfmt*) #1

declare dso_local i32 @imx_media_enum_ipu_format(i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
