; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx6-mipi-csi2.c_csi2_dphy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx6-mipi-csi2.c_csi2_dphy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi2_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_ctrl = type { i32*, i64 }

@V4L2_CID_LINK_FREQ = common dso_local global i32 0, align 4
@CSI2_DEFAULT_MAX_MBPS = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csi2_dev*)* @csi2_dphy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi2_dphy_init(%struct.csi2_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csi2_dev*, align 8
  %4 = alloca %struct.v4l2_ctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.csi2_dev* %0, %struct.csi2_dev** %3, align 8
  %7 = load %struct.csi2_dev*, %struct.csi2_dev** %3, align 8
  %8 = getelementptr inbounds %struct.csi2_dev, %struct.csi2_dev* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @V4L2_CID_LINK_FREQ, align 4
  %13 = call %struct.v4l2_ctrl* @v4l2_ctrl_find(i32 %11, i32 %12)
  store %struct.v4l2_ctrl* %13, %struct.v4l2_ctrl** %4, align 8
  %14 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %15 = icmp ne %struct.v4l2_ctrl* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @CSI2_DEFAULT_MAX_MBPS, align 4
  store i32 %17, i32* %5, align 4
  br label %30

18:                                               ; preds = %1
  %19 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %20 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %23 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 2, %26
  %28 = load i32, i32* @USEC_PER_SEC, align 4
  %29 = call i32 @DIV_ROUND_UP_ULL(i32 %27, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %18, %16
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @max_mbps_to_hsfreqrange_sel(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %41

37:                                               ; preds = %30
  %38 = load %struct.csi2_dev*, %struct.csi2_dev** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @dw_mipi_csi2_phy_write(%struct.csi2_dev* %38, i32 68, i32 %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %35
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_find(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP_ULL(i32, i32) #1

declare dso_local i32 @max_mbps_to_hsfreqrange_sel(i32) #1

declare dso_local i32 @dw_mipi_csi2_phy_write(%struct.csi2_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
