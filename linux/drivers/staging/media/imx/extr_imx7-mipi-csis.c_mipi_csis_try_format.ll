; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_try_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c_mipi_csis_try_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csis_pix_format = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32 }
%struct.csi_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@mipi_csis_formats = common dso_local global %struct.csis_pix_format* null, align 8
@CSIS_MAX_PIX_WIDTH = common dso_local global i32 0, align 4
@CSIS_MAX_PIX_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.csis_pix_format* (%struct.v4l2_subdev*, %struct.v4l2_mbus_framefmt*)* @mipi_csis_try_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.csis_pix_format* @mipi_csis_try_format(%struct.v4l2_subdev* %0, %struct.v4l2_mbus_framefmt* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %5 = alloca %struct.csi_state*, align 8
  %6 = alloca %struct.csis_pix_format*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %4, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.csi_state* @mipi_sd_to_csis_state(%struct.v4l2_subdev* %7)
  store %struct.csi_state* %8, %struct.csi_state** %5, align 8
  %9 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %10 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.csis_pix_format* @find_csis_format(i32 %11)
  store %struct.csis_pix_format* %12, %struct.csis_pix_format** %6, align 8
  %13 = load %struct.csis_pix_format*, %struct.csis_pix_format** %6, align 8
  %14 = icmp ne %struct.csis_pix_format* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load %struct.csis_pix_format*, %struct.csis_pix_format** @mipi_csis_formats, align 8
  %17 = getelementptr inbounds %struct.csis_pix_format, %struct.csis_pix_format* %16, i64 0
  store %struct.csis_pix_format* %17, %struct.csis_pix_format** %6, align 8
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %20 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %19, i32 0, i32 1
  %21 = load i32, i32* @CSIS_MAX_PIX_WIDTH, align 4
  %22 = load %struct.csis_pix_format*, %struct.csis_pix_format** %6, align 8
  %23 = getelementptr inbounds %struct.csis_pix_format, %struct.csis_pix_format* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %26 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %25, i32 0, i32 0
  %27 = load i32, i32* @CSIS_MAX_PIX_HEIGHT, align 4
  %28 = call i32 @v4l_bound_align_image(i32* %20, i32 1, i32 %21, i32 %24, i32* %26, i32 1, i32 %27, i32 1, i32 0)
  %29 = load %struct.csis_pix_format*, %struct.csis_pix_format** %6, align 8
  %30 = getelementptr inbounds %struct.csis_pix_format, %struct.csis_pix_format* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.csi_state*, %struct.csi_state** %5, align 8
  %33 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 4
  %35 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %36 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.csi_state*, %struct.csi_state** %5, align 8
  %39 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %42 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.csi_state*, %struct.csi_state** %5, align 8
  %45 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.csis_pix_format*, %struct.csis_pix_format** %6, align 8
  ret %struct.csis_pix_format* %47
}

declare dso_local %struct.csi_state* @mipi_sd_to_csis_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.csis_pix_format* @find_csis_format(i32) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
