; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_subdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_subdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.v4l2_subdev = type { i32*, i32*, %struct.TYPE_4__, i32*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.platform_device = type { i32 }
%struct.v4l2_subdev_ops = type { i32 }
%struct.csi_state = type { i32, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@CSIS_SUBDEV_NAME = common dso_local global i8* null, align 8
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@MEDIA_ENT_F_VID_IF_BRIDGE = common dso_local global i32 0, align 4
@mipi_csis_entity_ops = common dso_local global i32 0, align 4
@mipi_csis_internal_ops = common dso_local global i32 0, align 4
@mipi_csis_formats = common dso_local global %struct.TYPE_6__* null, align 8
@MIPI_CSIS_DEF_PIX_WIDTH = common dso_local global i32 0, align 4
@MIPI_CSIS_DEF_PIX_HEIGHT = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@mipi_csis_parse_endpoint = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"async fwnode register failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.platform_device*, %struct.v4l2_subdev_ops*)* @mipi_csis_subdev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipi_csis_subdev_init(%struct.v4l2_subdev* %0, %struct.platform_device* %1, %struct.v4l2_subdev_ops* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.v4l2_subdev_ops*, align 8
  %7 = alloca %struct.csi_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  store %struct.v4l2_subdev_ops* %2, %struct.v4l2_subdev_ops** %6, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.csi_state* @mipi_sd_to_csis_state(%struct.v4l2_subdev* %10)
  store %struct.csi_state* %11, %struct.csi_state** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %13 = load %struct.v4l2_subdev_ops*, %struct.v4l2_subdev_ops** %6, align 8
  %14 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %12, %struct.v4l2_subdev_ops* %13)
  %15 = load i32, i32* @THIS_MODULE, align 4
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %16, i32 0, i32 6
  store i32 %15, i32* %17, align 8
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** @CSIS_SUBDEV_NAME, align 8
  %22 = load %struct.csi_state*, %struct.csi_state** %7, align 8
  %23 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @snprintf(i32 %20, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %24)
  %26 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %28 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %32 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %31, i32 0, i32 3
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* @MEDIA_ENT_F_VID_IF_BRIDGE, align 4
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %35 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 8
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32* @mipi_csis_entity_ops, i32** %39, align 8
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %41 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %40, i32 0, i32 1
  store i32* @mipi_csis_internal_ops, i32** %41, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %45 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %44, i32 0, i32 0
  store i32* %43, i32** %45, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mipi_csis_formats, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 0
  %48 = load %struct.csi_state*, %struct.csi_state** %7, align 8
  %49 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %48, i32 0, i32 2
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %49, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mipi_csis_formats, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.csi_state*, %struct.csi_state** %7, align 8
  %55 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @MIPI_CSIS_DEF_PIX_WIDTH, align 4
  %58 = load %struct.csi_state*, %struct.csi_state** %7, align 8
  %59 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @MIPI_CSIS_DEF_PIX_HEIGHT, align 4
  %62 = load %struct.csi_state*, %struct.csi_state** %7, align 8
  %63 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %66 = load %struct.csi_state*, %struct.csi_state** %7, align 8
  %67 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  %69 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %70 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %69, i32* %71)
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %74 = load i32, i32* @mipi_csis_parse_endpoint, align 4
  %75 = call i32 @v4l2_async_register_fwnode_subdev(%struct.v4l2_subdev* %73, i32 4, i32* %8, i32 1, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %3
  %79 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %78, %3
  %84 = load i32, i32* %9, align 4
  ret i32 %84
}

declare dso_local %struct.csi_state* @mipi_sd_to_csis_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, %struct.v4l2_subdev_ops*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @v4l2_async_register_fwnode_subdev(%struct.v4l2_subdev*, i32, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
