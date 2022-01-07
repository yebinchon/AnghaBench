; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_pad_link_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_pad_link_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.media_link = type { i32 }
%struct.v4l2_subdev_format = type { i32 }
%struct.imx7_csi = type { i32, i32, %struct.v4l2_fwnode_endpoint, i32 }
%struct.v4l2_fwnode_endpoint = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"failed to find upstream endpoint\0A\00", align 1
@V4L2_MBUS_CSI2_DPHY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.media_link*, %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format*)* @imx7_csi_pad_link_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx7_csi_pad_link_validate(%struct.v4l2_subdev* %0, %struct.media_link* %1, %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.media_link*, align 8
  %8 = alloca %struct.v4l2_subdev_format*, align 8
  %9 = alloca %struct.v4l2_subdev_format*, align 8
  %10 = alloca %struct.imx7_csi*, align 8
  %11 = alloca %struct.v4l2_fwnode_endpoint, align 8
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store %struct.media_link* %1, %struct.media_link** %7, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %8, align 8
  store %struct.v4l2_subdev_format* %3, %struct.v4l2_subdev_format** %9, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %14 = call %struct.imx7_csi* @v4l2_get_subdevdata(%struct.v4l2_subdev* %13)
  store %struct.imx7_csi* %14, %struct.imx7_csi** %10, align 8
  %15 = bitcast %struct.v4l2_fwnode_endpoint* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 8, i1 false)
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %17 = load %struct.media_link*, %struct.media_link** %7, align 8
  %18 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %19 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %9, align 8
  %20 = call i32 @v4l2_subdev_link_validate_default(%struct.v4l2_subdev* %16, %struct.media_link* %17, %struct.v4l2_subdev_format* %18, %struct.v4l2_subdev_format* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %53

25:                                               ; preds = %4
  %26 = load %struct.imx7_csi*, %struct.imx7_csi** %10, align 8
  %27 = call i32 @imx7_csi_get_upstream_endpoint(%struct.imx7_csi* %26, %struct.v4l2_fwnode_endpoint* %11, i32 1)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.imx7_csi*, %struct.imx7_csi** %10, align 8
  %32 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %31, i32 0, i32 3
  %33 = call i32 @v4l2_err(i32* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %5, align 4
  br label %53

35:                                               ; preds = %25
  %36 = load %struct.imx7_csi*, %struct.imx7_csi** %10, align 8
  %37 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %36, i32 0, i32 1
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.imx7_csi*, %struct.imx7_csi** %10, align 8
  %40 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %39, i32 0, i32 2
  %41 = bitcast %struct.v4l2_fwnode_endpoint* %40 to i8*
  %42 = bitcast %struct.v4l2_fwnode_endpoint* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 8, i1 false)
  %43 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %11, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @V4L2_MBUS_CSI2_DPHY, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load %struct.imx7_csi*, %struct.imx7_csi** %10, align 8
  %49 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.imx7_csi*, %struct.imx7_csi** %10, align 8
  %51 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %35, %30, %23
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.imx7_csi* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @v4l2_subdev_link_validate_default(%struct.v4l2_subdev*, %struct.media_link*, %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format*) #1

declare dso_local i32 @imx7_csi_get_upstream_endpoint(%struct.imx7_csi*, %struct.v4l2_fwnode_endpoint*, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
