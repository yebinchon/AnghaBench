; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx6-mipi-csi2.c_csi2_parse_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx6-mipi-csi2.c_csi2_parse_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.v4l2_fwnode_endpoint = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.v4l2_async_subdev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.csi2_dev = type { %struct.TYPE_5__, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"remote is not available\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_MBUS_CSI2_DPHY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"invalid bus type, must be MIPI CSI2\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"data lanes: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"flags: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.v4l2_fwnode_endpoint*, %struct.v4l2_async_subdev*)* @csi2_parse_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi2_parse_endpoint(%struct.device* %0, %struct.v4l2_fwnode_endpoint* %1, %struct.v4l2_async_subdev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.v4l2_fwnode_endpoint*, align 8
  %7 = alloca %struct.v4l2_async_subdev*, align 8
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca %struct.csi2_dev*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.v4l2_fwnode_endpoint* %1, %struct.v4l2_fwnode_endpoint** %6, align 8
  store %struct.v4l2_async_subdev* %2, %struct.v4l2_async_subdev** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.v4l2_subdev* @dev_get_drvdata(%struct.device* %10)
  store %struct.v4l2_subdev* %11, %struct.v4l2_subdev** %8, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %13 = call %struct.csi2_dev* @sd_to_dev(%struct.v4l2_subdev* %12)
  store %struct.csi2_dev* %13, %struct.csi2_dev** %9, align 8
  %14 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @fwnode_device_is_available(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load %struct.csi2_dev*, %struct.csi2_dev** %9, align 8
  %22 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %21, i32 0, i32 2
  %23 = call i32 @v4l2_err(i32* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %62

26:                                               ; preds = %3
  %27 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @V4L2_MBUS_CSI2_DPHY, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.csi2_dev*, %struct.csi2_dev** %9, align 8
  %34 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %33, i32 0, i32 2
  %35 = call i32 @v4l2_err(i32* %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %62

38:                                               ; preds = %26
  %39 = load %struct.csi2_dev*, %struct.csi2_dev** %9, align 8
  %40 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %39, i32 0, i32 0
  %41 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = bitcast %struct.TYPE_5__* %40 to i8*
  %45 = bitcast %struct.TYPE_5__* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 8 %45, i64 8, i1 false)
  %46 = load %struct.csi2_dev*, %struct.csi2_dev** %9, align 8
  %47 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.csi2_dev*, %struct.csi2_dev** %9, align 8
  %50 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load %struct.csi2_dev*, %struct.csi2_dev** %9, align 8
  %55 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.csi2_dev*, %struct.csi2_dev** %9, align 8
  %58 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_dbg(i32 %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %38, %32, %20
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.v4l2_subdev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.csi2_dev* @sd_to_dev(%struct.v4l2_subdev*) #1

declare dso_local i32 @fwnode_device_is_available(i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
