; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipe.c_ipipe_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipe.c_ipipe_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_ipipe_device = type { %struct.v4l2_mbus_framefmt* }
%struct.v4l2_mbus_framefmt = type { i32, i32 }
%struct.iss_device = type { i32 }

@IPIPE_PAD_SINK = common dso_local global i64 0, align 8
@OMAP4_ISS_MEM_ISP_IPIPE = common dso_local global i32 0, align 4
@IPIPE_SRC_FMT = common dso_local global i32 0, align 4
@IPIPE_SRC_FMT_RAW2YUV = common dso_local global i32 0, align 4
@IPIPE_YUV_PHS = common dso_local global i32 0, align 4
@IPIPE_YUV_PHS_LPF = common dso_local global i32 0, align 4
@IPIPE_SRC_VPS = common dso_local global i32 0, align 4
@IPIPE_SRC_HPS = common dso_local global i32 0, align 4
@IPIPE_SRC_VSZ = common dso_local global i32 0, align 4
@IPIPE_SRC_VSZ_MASK = common dso_local global i32 0, align 4
@IPIPE_SRC_HSZ = common dso_local global i32 0, align 4
@IPIPE_SRC_HSZ_MASK = common dso_local global i32 0, align 4
@IPIPE_SRC_MODE = common dso_local global i32 0, align 4
@IPIPE_SRC_MODE_WRT = common dso_local global i32 0, align 4
@IPIPE_SRC_MODE_OST = common dso_local global i32 0, align 4
@IPIPE_SRC_COL = common dso_local global i32 0, align 4
@IPIPE_SRC_COL_EE_B = common dso_local global i32 0, align 4
@IPIPE_SRC_COL_EO_GB = common dso_local global i32 0, align 4
@IPIPE_SRC_COL_OE_GR = common dso_local global i32 0, align 4
@IPIPE_SRC_COL_OO_R = common dso_local global i32 0, align 4
@IPIPE_PAD_SOURCE_VP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iss_ipipe_device*)* @ipipe_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipipe_configure(%struct.iss_ipipe_device* %0) #0 {
  %2 = alloca %struct.iss_ipipe_device*, align 8
  %3 = alloca %struct.iss_device*, align 8
  %4 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.iss_ipipe_device* %0, %struct.iss_ipipe_device** %2, align 8
  %5 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %2, align 8
  %6 = call %struct.iss_device* @to_iss_device(%struct.iss_ipipe_device* %5)
  store %struct.iss_device* %6, %struct.iss_device** %3, align 8
  %7 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %2, align 8
  %8 = getelementptr inbounds %struct.iss_ipipe_device, %struct.iss_ipipe_device* %7, i32 0, i32 0
  %9 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %10 = load i64, i64* @IPIPE_PAD_SINK, align 8
  %11 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i64 %10
  store %struct.v4l2_mbus_framefmt* %11, %struct.v4l2_mbus_framefmt** %4, align 8
  %12 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %13 = load i32, i32* @OMAP4_ISS_MEM_ISP_IPIPE, align 4
  %14 = load i32, i32* @IPIPE_SRC_FMT, align 4
  %15 = load i32, i32* @IPIPE_SRC_FMT_RAW2YUV, align 4
  %16 = call i32 @iss_reg_write(%struct.iss_device* %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %18 = load i32, i32* @OMAP4_ISS_MEM_ISP_IPIPE, align 4
  %19 = load i32, i32* @IPIPE_YUV_PHS, align 4
  %20 = load i32, i32* @IPIPE_YUV_PHS_LPF, align 4
  %21 = call i32 @iss_reg_write(%struct.iss_device* %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %23 = load i32, i32* @OMAP4_ISS_MEM_ISP_IPIPE, align 4
  %24 = load i32, i32* @IPIPE_SRC_VPS, align 4
  %25 = call i32 @iss_reg_write(%struct.iss_device* %22, i32 %23, i32 %24, i32 0)
  %26 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %27 = load i32, i32* @OMAP4_ISS_MEM_ISP_IPIPE, align 4
  %28 = load i32, i32* @IPIPE_SRC_HPS, align 4
  %29 = call i32 @iss_reg_write(%struct.iss_device* %26, i32 %27, i32 %28, i32 0)
  %30 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %31 = load i32, i32* @OMAP4_ISS_MEM_ISP_IPIPE, align 4
  %32 = load i32, i32* @IPIPE_SRC_VSZ, align 4
  %33 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %34 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 2
  %37 = load i32, i32* @IPIPE_SRC_VSZ_MASK, align 4
  %38 = and i32 %36, %37
  %39 = call i32 @iss_reg_write(%struct.iss_device* %30, i32 %31, i32 %32, i32 %38)
  %40 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %41 = load i32, i32* @OMAP4_ISS_MEM_ISP_IPIPE, align 4
  %42 = load i32, i32* @IPIPE_SRC_HSZ, align 4
  %43 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %44 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 1
  %47 = load i32, i32* @IPIPE_SRC_HSZ_MASK, align 4
  %48 = and i32 %46, %47
  %49 = call i32 @iss_reg_write(%struct.iss_device* %40, i32 %41, i32 %42, i32 %48)
  %50 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %51 = load i32, i32* @OMAP4_ISS_MEM_ISP_IPIPE, align 4
  %52 = load i32, i32* @IPIPE_SRC_MODE, align 4
  %53 = load i32, i32* @IPIPE_SRC_MODE_WRT, align 4
  %54 = load i32, i32* @IPIPE_SRC_MODE_OST, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @iss_reg_clr(%struct.iss_device* %50, i32 %51, i32 %52, i32 %55)
  %57 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %58 = load i32, i32* @OMAP4_ISS_MEM_ISP_IPIPE, align 4
  %59 = load i32, i32* @IPIPE_SRC_COL, align 4
  %60 = load i32, i32* @IPIPE_SRC_COL_EE_B, align 4
  %61 = load i32, i32* @IPIPE_SRC_COL_EO_GB, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @IPIPE_SRC_COL_OE_GR, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @IPIPE_SRC_COL_OO_R, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @iss_reg_write(%struct.iss_device* %57, i32 %58, i32 %59, i32 %66)
  %68 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %2, align 8
  %69 = getelementptr inbounds %struct.iss_ipipe_device, %struct.iss_ipipe_device* %68, i32 0, i32 0
  %70 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %69, align 8
  %71 = load i64, i64* @IPIPE_PAD_SOURCE_VP, align 8
  %72 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %70, i64 %71
  store %struct.v4l2_mbus_framefmt* %72, %struct.v4l2_mbus_framefmt** %4, align 8
  ret void
}

declare dso_local %struct.iss_device* @to_iss_device(%struct.iss_ipipe_device*) #1

declare dso_local i32 @iss_reg_write(%struct.iss_device*, i32, i32, i32) #1

declare dso_local i32 @iss_reg_clr(%struct.iss_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
