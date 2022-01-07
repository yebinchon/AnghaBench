; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_link_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_link_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.media_link = type { i32 }
%struct.v4l2_subdev_format = type { i32 }
%struct.csi_priv = type { i32, i32, i32, i32*, i32, %struct.TYPE_2__, %struct.v4l2_fwnode_endpoint }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_fwnode_endpoint = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"failed to find upstream endpoint\0A\00", align 1
@CSI_SINK_PAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.media_link*, %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format*)* @csi_link_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi_link_validate(%struct.v4l2_subdev* %0, %struct.media_link* %1, %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.media_link*, align 8
  %8 = alloca %struct.v4l2_subdev_format*, align 8
  %9 = alloca %struct.v4l2_subdev_format*, align 8
  %10 = alloca %struct.csi_priv*, align 8
  %11 = alloca %struct.v4l2_fwnode_endpoint, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store %struct.media_link* %1, %struct.media_link** %7, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %8, align 8
  store %struct.v4l2_subdev_format* %3, %struct.v4l2_subdev_format** %9, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %16 = call %struct.csi_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev* %15)
  store %struct.csi_priv* %16, %struct.csi_priv** %10, align 8
  %17 = bitcast %struct.v4l2_fwnode_endpoint* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 4, i1 false)
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %19 = load %struct.media_link*, %struct.media_link** %7, align 8
  %20 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %21 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %9, align 8
  %22 = call i32 @v4l2_subdev_link_validate_default(%struct.v4l2_subdev* %18, %struct.media_link* %19, %struct.v4l2_subdev_format* %20, %struct.v4l2_subdev_format* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %5, align 4
  br label %75

27:                                               ; preds = %4
  %28 = load %struct.csi_priv*, %struct.csi_priv** %10, align 8
  %29 = call i32 @csi_get_upstream_endpoint(%struct.csi_priv* %28, %struct.v4l2_fwnode_endpoint* %11)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.csi_priv*, %struct.csi_priv** %10, align 8
  %34 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %33, i32 0, i32 5
  %35 = call i32 @v4l2_err(%struct.TYPE_2__* %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %5, align 4
  br label %75

37:                                               ; preds = %27
  %38 = load %struct.csi_priv*, %struct.csi_priv** %10, align 8
  %39 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.csi_priv*, %struct.csi_priv** %10, align 8
  %42 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %41, i32 0, i32 6
  %43 = bitcast %struct.v4l2_fwnode_endpoint* %42 to i8*
  %44 = bitcast %struct.v4l2_fwnode_endpoint* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 4 %44, i64 4, i1 false)
  %45 = call i32 @is_parallel_bus(%struct.v4l2_fwnode_endpoint* %11)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %37
  store i32 0, i32* %14, align 4
  %52 = load %struct.csi_priv*, %struct.csi_priv** %10, align 8
  %53 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.csi_priv*, %struct.csi_priv** %10, align 8
  %57 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @CSI_SINK_PAD, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = call i32 @ipu_csi_set_mipi_datatype(i32 %54, i32 %55, i32* %60)
  br label %62

62:                                               ; preds = %51, %37
  %63 = load %struct.csi_priv*, %struct.csi_priv** %10, align 8
  %64 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.csi_priv*, %struct.csi_priv** %10, align 8
  %67 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @ipu_set_csi_src_mux(i32 %65, i32 %68, i32 %69)
  %71 = load %struct.csi_priv*, %struct.csi_priv** %10, align 8
  %72 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %13, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %62, %32, %25
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.csi_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @v4l2_subdev_link_validate_default(%struct.v4l2_subdev*, %struct.media_link*, %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format*) #1

declare dso_local i32 @csi_get_upstream_endpoint(%struct.csi_priv*, %struct.v4l2_fwnode_endpoint*) #1

declare dso_local i32 @v4l2_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @is_parallel_bus(%struct.v4l2_fwnode_endpoint*) #1

declare dso_local i32 @ipu_csi_set_mipi_datatype(i32, i32, i32*) #1

declare dso_local i32 @ipu_set_csi_src_mux(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
