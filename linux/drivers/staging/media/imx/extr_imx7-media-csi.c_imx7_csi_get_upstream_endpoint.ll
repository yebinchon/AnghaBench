; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_get_upstream_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_get_upstream_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx7_csi = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.media_entity }
%struct.media_entity = type { i64 }
%struct.TYPE_4__ = type { %struct.media_entity }
%struct.v4l2_fwnode_endpoint = type { i32 }
%struct.device_node = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_6__*, %struct.media_entity }
%struct.TYPE_6__ = type { i32 }
%struct.media_pad = type { i32, i32 }

@EPIPE = common dso_local global i32 0, align 4
@MEDIA_ENT_F_VID_IF_BRIDGE = common dso_local global i64 0, align 8
@MEDIA_ENT_F_VID_MUX = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx7_csi*, %struct.v4l2_fwnode_endpoint*, i32)* @imx7_csi_get_upstream_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx7_csi_get_upstream_endpoint(%struct.imx7_csi* %0, %struct.v4l2_fwnode_endpoint* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.imx7_csi*, align 8
  %6 = alloca %struct.v4l2_fwnode_endpoint*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.media_entity*, align 8
  %11 = alloca %struct.v4l2_subdev*, align 8
  %12 = alloca %struct.media_pad*, align 8
  store %struct.imx7_csi* %0, %struct.imx7_csi** %5, align 8
  store %struct.v4l2_fwnode_endpoint* %1, %struct.v4l2_fwnode_endpoint** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %14 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EPIPE, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %97

20:                                               ; preds = %3
  %21 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %22 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.media_entity* %24, %struct.media_entity** %10, align 8
  %25 = load %struct.media_entity*, %struct.media_entity** %10, align 8
  %26 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MEDIA_ENT_F_VID_IF_BRIDGE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %20
  %31 = load %struct.media_entity*, %struct.media_entity** %10, align 8
  %32 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MEDIA_ENT_F_VID_MUX, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.imx7_csi*, %struct.imx7_csi** %5, align 8
  %38 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store %struct.media_entity* %39, %struct.media_entity** %10, align 8
  br label %40

40:                                               ; preds = %36, %30, %20
  br label %41

41:                                               ; preds = %62, %40
  %42 = load %struct.media_entity*, %struct.media_entity** %10, align 8
  %43 = call %struct.media_pad* @imx_media_pipeline_pad(%struct.media_entity* %42, i32 0, i32 0, i32 1)
  store %struct.media_pad* %43, %struct.media_pad** %12, align 8
  %44 = load %struct.media_pad*, %struct.media_pad** %12, align 8
  %45 = icmp ne %struct.media_pad* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %97

49:                                               ; preds = %41
  %50 = load %struct.media_pad*, %struct.media_pad** %12, align 8
  %51 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32 %52)
  store %struct.v4l2_subdev* %53, %struct.v4l2_subdev** %11, align 8
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load %struct.media_entity*, %struct.media_entity** %10, align 8
  %58 = getelementptr inbounds %struct.media_entity, %struct.media_entity* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MEDIA_ENT_F_VID_MUX, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %11, align 8
  %64 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %63, i32 0, i32 1
  store %struct.media_entity* %64, %struct.media_entity** %10, align 8
  br label %41

65:                                               ; preds = %56, %49
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %11, align 8
  %67 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.media_pad*, %struct.media_pad** %12, align 8
  %72 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.device_node* @of_graph_get_port_by_id(i32 %70, i32 %73)
  store %struct.device_node* %74, %struct.device_node** %9, align 8
  %75 = load %struct.device_node*, %struct.device_node** %9, align 8
  %76 = icmp ne %struct.device_node* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %65
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %97

80:                                               ; preds = %65
  %81 = load %struct.device_node*, %struct.device_node** %9, align 8
  %82 = call %struct.device_node* @of_get_next_child(%struct.device_node* %81, i32* null)
  store %struct.device_node* %82, %struct.device_node** %8, align 8
  %83 = load %struct.device_node*, %struct.device_node** %9, align 8
  %84 = call i32 @of_node_put(%struct.device_node* %83)
  %85 = load %struct.device_node*, %struct.device_node** %8, align 8
  %86 = icmp ne %struct.device_node* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* @ENODEV, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %97

90:                                               ; preds = %80
  %91 = load %struct.device_node*, %struct.device_node** %8, align 8
  %92 = call i32 @of_fwnode_handle(%struct.device_node* %91)
  %93 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %6, align 8
  %94 = call i32 @v4l2_fwnode_endpoint_parse(i32 %92, %struct.v4l2_fwnode_endpoint* %93)
  %95 = load %struct.device_node*, %struct.device_node** %8, align 8
  %96 = call i32 @of_node_put(%struct.device_node* %95)
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %90, %87, %77, %46, %17
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

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
