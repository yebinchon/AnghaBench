; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c___mipi_csis_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-mipi-csis.c___mipi_csis_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi_state = type { %struct.TYPE_2__*, %struct.v4l2_mbus_framefmt }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32 }

@MIPI_CSIS_ISPCONFIG_CH0 = common dso_local global i32 0, align 4
@MIPI_CSIS_ISPCFG_FMT_MASK = common dso_local global i32 0, align 4
@MIPI_CSIS_ISPRESOL_CH0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csi_state*)* @__mipi_csis_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mipi_csis_set_format(%struct.csi_state* %0) #0 {
  %2 = alloca %struct.csi_state*, align 8
  %3 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %4 = alloca i32, align 4
  store %struct.csi_state* %0, %struct.csi_state** %2, align 8
  %5 = load %struct.csi_state*, %struct.csi_state** %2, align 8
  %6 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %5, i32 0, i32 1
  store %struct.v4l2_mbus_framefmt* %6, %struct.v4l2_mbus_framefmt** %3, align 8
  %7 = load %struct.csi_state*, %struct.csi_state** %2, align 8
  %8 = load i32, i32* @MIPI_CSIS_ISPCONFIG_CH0, align 4
  %9 = call i32 @mipi_csis_read(%struct.csi_state* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @MIPI_CSIS_ISPCFG_FMT_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = load %struct.csi_state*, %struct.csi_state** %2, align 8
  %15 = getelementptr inbounds %struct.csi_state, %struct.csi_state* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %13, %18
  store i32 %19, i32* %4, align 4
  %20 = load %struct.csi_state*, %struct.csi_state** %2, align 8
  %21 = load i32, i32* @MIPI_CSIS_ISPCONFIG_CH0, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @mipi_csis_write(%struct.csi_state* %20, i32 %21, i32 %22)
  %24 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %25 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %28 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 16
  %31 = or i32 %26, %30
  store i32 %31, i32* %4, align 4
  %32 = load %struct.csi_state*, %struct.csi_state** %2, align 8
  %33 = load i32, i32* @MIPI_CSIS_ISPRESOL_CH0, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @mipi_csis_write(%struct.csi_state* %32, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @mipi_csis_read(%struct.csi_state*, i32) #1

declare dso_local i32 @mipi_csis_write(%struct.csi_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
