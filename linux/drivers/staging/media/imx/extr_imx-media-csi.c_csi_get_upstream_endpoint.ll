; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_get_upstream_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_get_upstream_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi_priv = type { %struct.TYPE_3__, %struct.v4l2_subdev* }
%struct.TYPE_3__ = type { %struct.media_entity }
%struct.media_entity = type { i64 }
%struct.v4l2_subdev = type { i64, %struct.TYPE_4__*, %struct.media_entity }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_fwnode_endpoint = type { i32 }
%struct.device_node = type { i32 }
%struct.media_pad = type { i32, i32 }

@CONFIG_OF = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@MEDIA_ENT_F_VID_MUX = common dso_local global i64 0, align 8
@IMX_MEDIA_GRP_ID_CSI2 = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csi_priv*, %struct.v4l2_fwnode_endpoint*)* @csi_get_upstream_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi_get_upstream_endpoint(%struct.csi_priv* %0, %struct.v4l2_fwnode_endpoint* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.csi_priv*, align 8
  %5 = alloca %struct.v4l2_fwnode_endpoint*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.media_entity*, align 8
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca %struct.media_pad*, align 8
  store %struct.csi_priv* %0, %struct.csi_priv** %4, align 8
  store %struct.v4l2_fwnode_endpoint* %1, %struct.v4l2_fwnode_endpoint** %5, align 8
  %11 = load i32, i32* @CONFIG_OF, align 4
  %12 = call i32 @IS_ENABLED(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENXIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %107

17:                                               ; preds = %2
  %18 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %19 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %18, i32 0, i32 1
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %19, align 8
  %21 = icmp ne %struct.v4l2_subdev* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @EPIPE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %107

25:                                               ; preds = %17
  %26 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %27 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %26, i32 0, i32 1
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %27, align 8
  store %struct.v4l2_subdev* %28, %struct.v4l2_subdev** %9, align 8
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %30 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %29, i32 0, i32 2
  store %struct.media_entity* %30, %struct.media_entity** %8, align 8
  %31 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %32 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MEDIA_ENT_F_VID_MUX, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %25
  %37 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %38 = load i64, i64* @IMX_MEDIA_GRP_ID_CSI2, align 8
  %39 = call %struct.v4l2_subdev* @imx_media_pipeline_subdev(%struct.media_entity* %37, i64 %38, i32 1)
  store %struct.v4l2_subdev* %39, %struct.v4l2_subdev** %9, align 8
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %41 = call i32 @IS_ERR(%struct.v4l2_subdev* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %45 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %44, i32 0, i32 2
  store %struct.media_entity* %45, %struct.media_entity** %8, align 8
  br label %46

46:                                               ; preds = %43, %36
  br label %47

47:                                               ; preds = %46, %25
  %48 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %49 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MEDIA_ENT_F_VID_MUX, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %55 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IMX_MEDIA_GRP_ID_CSI2, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %61 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store %struct.media_entity* %62, %struct.media_entity** %8, align 8
  br label %63

63:                                               ; preds = %59, %53, %47
  %64 = load %struct.media_entity*, %struct.media_entity** %8, align 8
  %65 = call %struct.media_pad* @imx_media_pipeline_pad(%struct.media_entity* %64, i32 0, i32 0, i32 1)
  store %struct.media_pad* %65, %struct.media_pad** %10, align 8
  %66 = load %struct.media_pad*, %struct.media_pad** %10, align 8
  %67 = icmp ne %struct.media_pad* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %107

71:                                               ; preds = %63
  %72 = load %struct.media_pad*, %struct.media_pad** %10, align 8
  %73 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32 %74)
  store %struct.v4l2_subdev* %75, %struct.v4l2_subdev** %9, align 8
  %76 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %77 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.media_pad*, %struct.media_pad** %10, align 8
  %82 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call %struct.device_node* @of_graph_get_port_by_id(i32 %80, i32 %83)
  store %struct.device_node* %84, %struct.device_node** %7, align 8
  %85 = load %struct.device_node*, %struct.device_node** %7, align 8
  %86 = icmp ne %struct.device_node* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %71
  %88 = load i32, i32* @ENODEV, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %107

90:                                               ; preds = %71
  %91 = load %struct.device_node*, %struct.device_node** %7, align 8
  %92 = call %struct.device_node* @of_get_next_child(%struct.device_node* %91, i32* null)
  store %struct.device_node* %92, %struct.device_node** %6, align 8
  %93 = load %struct.device_node*, %struct.device_node** %7, align 8
  %94 = call i32 @of_node_put(%struct.device_node* %93)
  %95 = load %struct.device_node*, %struct.device_node** %6, align 8
  %96 = icmp ne %struct.device_node* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* @ENODEV, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %107

100:                                              ; preds = %90
  %101 = load %struct.device_node*, %struct.device_node** %6, align 8
  %102 = call i32 @of_fwnode_handle(%struct.device_node* %101)
  %103 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %5, align 8
  %104 = call i32 @v4l2_fwnode_endpoint_parse(i32 %102, %struct.v4l2_fwnode_endpoint* %103)
  %105 = load %struct.device_node*, %struct.device_node** %6, align 8
  %106 = call i32 @of_node_put(%struct.device_node* %105)
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %100, %97, %87, %68, %22, %14
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local %struct.v4l2_subdev* @imx_media_pipeline_subdev(%struct.media_entity*, i64, i32) #1

declare dso_local i32 @IS_ERR(%struct.v4l2_subdev*) #1

declare dso_local %struct.media_pad* @imx_media_pipeline_pad(%struct.media_entity*, i32, i32, i32) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32) #1

declare dso_local %struct.device_node* @of_graph_get_port_by_id(i32, i32) #1

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @v4l2_fwnode_endpoint_parse(i32, %struct.v4l2_fwnode_endpoint*) #1

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
