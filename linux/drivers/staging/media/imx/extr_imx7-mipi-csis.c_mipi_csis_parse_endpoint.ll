; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_parse_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_parse_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.v4l2_fwnode_endpoint = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.v4l2_async_subdev = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.csi_state = type { %struct.TYPE_3__, i32 }

@V4L2_MBUS_CSI2_DPHY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"invalid bus type, must be MIPI CSI2\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"data lanes: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"flags: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.v4l2_fwnode_endpoint*, %struct.v4l2_async_subdev*)* @mipi_csis_parse_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipi_csis_parse_endpoint(%struct.device* %0, %struct.v4l2_fwnode_endpoint* %1, %struct.v4l2_async_subdev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.v4l2_fwnode_endpoint*, align 8
  %7 = alloca %struct.v4l2_async_subdev*, align 8
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca %struct.csi_state*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.v4l2_fwnode_endpoint* %1, %struct.v4l2_fwnode_endpoint** %6, align 8
  store %struct.v4l2_async_subdev* %2, %struct.v4l2_async_subdev** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.v4l2_subdev* @dev_get_drvdata(%struct.device* %10)
  store %struct.v4l2_subdev* %11, %struct.v4l2_subdev** %8, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %13 = call %struct.csi_state* @mipi_sd_to_csis_state(%struct.v4l2_subdev* %12)
  store %struct.csi_state* %13, %struct.csi_state** %9, align 8
  %14 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @V4L2_MBUS_CSI2_DPHY, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %48

24:                                               ; preds = %3
  %25 = load %struct.csi_state*, %struct.csi_state** %9, align 8
  %26 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %25, i32 0, i32 0
  %27 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = bitcast %struct.TYPE_3__* %26 to i8*
  %31 = bitcast %struct.TYPE_3__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 8 %31, i64 8, i1 false)
  %32 = load %struct.csi_state*, %struct.csi_state** %9, align 8
  %33 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.csi_state*, %struct.csi_state** %9, align 8
  %36 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.csi_state*, %struct.csi_state** %9, align 8
  %41 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.csi_state*, %struct.csi_state** %9, align 8
  %44 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %24, %19
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.v4l2_subdev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.csi_state* @mipi_sd_to_csis_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

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
