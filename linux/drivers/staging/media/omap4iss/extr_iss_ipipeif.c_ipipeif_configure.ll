; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipeif.c_ipipeif_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipeif.c_ipipeif_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_ipipeif_device = type { %struct.TYPE_2__, %struct.v4l2_mbus_framefmt*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32 }
%struct.iss_device = type { i32 }
%struct.iss_format_info = type { i32 }

@IPIPEIF_PAD_SINK = common dso_local global i64 0, align 8
@OMAP4_ISS_MEM_ISP_IPIPEIF = common dso_local global i32 0, align 4
@IPIPEIF_CFG1 = common dso_local global i32 0, align 4
@IPIPEIF_CFG1_INPSRC1_MASK = common dso_local global i32 0, align 4
@IPIPEIF_CFG1_INPSRC2_MASK = common dso_local global i32 0, align 4
@OMAP4_ISS_MEM_ISP_ISIF = common dso_local global i32 0, align 4
@ISIF_MODESET = common dso_local global i32 0, align 4
@ISIF_MODESET_CCDMD = common dso_local global i32 0, align 4
@ISIF_MODESET_INPMOD_MASK = common dso_local global i32 0, align 4
@ISIF_MODESET_CCDW_MASK = common dso_local global i32 0, align 4
@ISIF_MODESET_INPMOD_YCBCR16 = common dso_local global i32 0, align 4
@IPIPEIF_CFG2 = common dso_local global i32 0, align 4
@IPIPEIF_CFG2_YUV8 = common dso_local global i32 0, align 4
@IPIPEIF_CFG2_YUV16 = common dso_local global i32 0, align 4
@ISIF_CCOLP_CP0_F0_GR = common dso_local global i32 0, align 4
@ISIF_CCOLP_CP1_F0_R = common dso_local global i32 0, align 4
@ISIF_CCOLP_CP2_F0_B = common dso_local global i32 0, align 4
@ISIF_CCOLP_CP3_F0_GB = common dso_local global i32 0, align 4
@ISIF_CCOLP_CP0_F0_R = common dso_local global i32 0, align 4
@ISIF_CCOLP_CP1_F0_GR = common dso_local global i32 0, align 4
@ISIF_CCOLP_CP2_F0_GB = common dso_local global i32 0, align 4
@ISIF_CCOLP_CP3_F0_B = common dso_local global i32 0, align 4
@ISIF_CCOLP_CP0_F0_B = common dso_local global i32 0, align 4
@ISIF_CCOLP_CP1_F0_GB = common dso_local global i32 0, align 4
@ISIF_CCOLP_CP2_F0_GR = common dso_local global i32 0, align 4
@ISIF_CCOLP_CP3_F0_R = common dso_local global i32 0, align 4
@ISIF_CCOLP_CP0_F0_GB = common dso_local global i32 0, align 4
@ISIF_CCOLP_CP1_F0_B = common dso_local global i32 0, align 4
@ISIF_CCOLP_CP2_F0_R = common dso_local global i32 0, align 4
@ISIF_CCOLP_CP3_F0_GR = common dso_local global i32 0, align 4
@ISIF_MODESET_INPMOD_RAW = common dso_local global i32 0, align 4
@ISIF_MODESET_CCDW_2BIT = common dso_local global i32 0, align 4
@ISIF_CGAMMAWD = common dso_local global i32 0, align 4
@ISIF_CGAMMAWD_GWDI_MASK = common dso_local global i32 0, align 4
@ISIF_CCOLP = common dso_local global i32 0, align 4
@ISIF_SPH = common dso_local global i32 0, align 4
@ISIF_SPH_MASK = common dso_local global i32 0, align 4
@ISIF_LNH = common dso_local global i32 0, align 4
@ISIF_LNH_MASK = common dso_local global i32 0, align 4
@ISIF_LNV = common dso_local global i32 0, align 4
@ISIF_LNV_MASK = common dso_local global i32 0, align 4
@IPIPEIF_PAD_SOURCE_ISIF_SF = common dso_local global i64 0, align 8
@ISIF_HSIZE = common dso_local global i32 0, align 4
@ISIF_HSIZE_HSIZE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iss_ipipeif_device*)* @ipipeif_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipipeif_configure(%struct.iss_ipipeif_device* %0) #0 {
  %2 = alloca %struct.iss_ipipeif_device*, align 8
  %3 = alloca %struct.iss_device*, align 8
  %4 = alloca %struct.iss_format_info*, align 8
  %5 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %6 = alloca i32, align 4
  store %struct.iss_ipipeif_device* %0, %struct.iss_ipipeif_device** %2, align 8
  %7 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %2, align 8
  %8 = call %struct.iss_device* @to_iss_device(%struct.iss_ipipeif_device* %7)
  store %struct.iss_device* %8, %struct.iss_device** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %10 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %2, align 8
  %11 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @omap4iss_configure_bridge(%struct.iss_device* %9, i32 %12)
  %14 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %2, align 8
  %15 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %14, i32 0, i32 1
  %16 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %15, align 8
  %17 = load i64, i64* @IPIPEIF_PAD_SINK, align 8
  %18 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %16, i64 %17
  store %struct.v4l2_mbus_framefmt* %18, %struct.v4l2_mbus_framefmt** %5, align 8
  %19 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %20 = load i32, i32* @OMAP4_ISS_MEM_ISP_IPIPEIF, align 4
  %21 = load i32, i32* @IPIPEIF_CFG1, align 4
  %22 = load i32, i32* @IPIPEIF_CFG1_INPSRC1_MASK, align 4
  %23 = load i32, i32* @IPIPEIF_CFG1_INPSRC2_MASK, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @iss_reg_clr(%struct.iss_device* %19, i32 %20, i32 %21, i32 %24)
  %26 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %114 [
    i32 129, label %29
    i32 128, label %29
    i32 131, label %46
    i32 130, label %54
    i32 133, label %62
    i32 132, label %70
  ]

29:                                               ; preds = %1, %1
  %30 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %31 = load i32, i32* @OMAP4_ISS_MEM_ISP_ISIF, align 4
  %32 = load i32, i32* @ISIF_MODESET, align 4
  %33 = load i32, i32* @ISIF_MODESET_CCDMD, align 4
  %34 = load i32, i32* @ISIF_MODESET_INPMOD_MASK, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @ISIF_MODESET_CCDW_MASK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @ISIF_MODESET_INPMOD_YCBCR16, align 4
  %39 = call i32 @iss_reg_update(%struct.iss_device* %30, i32 %31, i32 %32, i32 %37, i32 %38)
  %40 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %41 = load i32, i32* @OMAP4_ISS_MEM_ISP_IPIPEIF, align 4
  %42 = load i32, i32* @IPIPEIF_CFG2, align 4
  %43 = load i32, i32* @IPIPEIF_CFG2_YUV8, align 4
  %44 = load i32, i32* @IPIPEIF_CFG2_YUV16, align 4
  %45 = call i32 @iss_reg_update(%struct.iss_device* %40, i32 %41, i32 %42, i32 %43, i32 %44)
  br label %114

46:                                               ; preds = %1
  %47 = load i32, i32* @ISIF_CCOLP_CP0_F0_GR, align 4
  %48 = load i32, i32* @ISIF_CCOLP_CP1_F0_R, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @ISIF_CCOLP_CP2_F0_B, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @ISIF_CCOLP_CP3_F0_GB, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %6, align 4
  br label %78

54:                                               ; preds = %1
  %55 = load i32, i32* @ISIF_CCOLP_CP0_F0_R, align 4
  %56 = load i32, i32* @ISIF_CCOLP_CP1_F0_GR, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @ISIF_CCOLP_CP2_F0_GB, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @ISIF_CCOLP_CP3_F0_B, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %6, align 4
  br label %78

62:                                               ; preds = %1
  %63 = load i32, i32* @ISIF_CCOLP_CP0_F0_B, align 4
  %64 = load i32, i32* @ISIF_CCOLP_CP1_F0_GB, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @ISIF_CCOLP_CP2_F0_GR, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @ISIF_CCOLP_CP3_F0_R, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %6, align 4
  br label %78

70:                                               ; preds = %1
  %71 = load i32, i32* @ISIF_CCOLP_CP0_F0_GB, align 4
  %72 = load i32, i32* @ISIF_CCOLP_CP1_F0_B, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @ISIF_CCOLP_CP2_F0_R, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @ISIF_CCOLP_CP3_F0_GR, align 4
  %77 = or i32 %75, %76
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %70, %62, %54, %46
  %79 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %80 = load i32, i32* @OMAP4_ISS_MEM_ISP_IPIPEIF, align 4
  %81 = load i32, i32* @IPIPEIF_CFG2, align 4
  %82 = load i32, i32* @IPIPEIF_CFG2_YUV16, align 4
  %83 = call i32 @iss_reg_clr(%struct.iss_device* %79, i32 %80, i32 %81, i32 %82)
  %84 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %85 = load i32, i32* @OMAP4_ISS_MEM_ISP_ISIF, align 4
  %86 = load i32, i32* @ISIF_MODESET, align 4
  %87 = load i32, i32* @ISIF_MODESET_CCDMD, align 4
  %88 = load i32, i32* @ISIF_MODESET_INPMOD_MASK, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @ISIF_MODESET_CCDW_MASK, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @ISIF_MODESET_INPMOD_RAW, align 4
  %93 = load i32, i32* @ISIF_MODESET_CCDW_2BIT, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @iss_reg_update(%struct.iss_device* %84, i32 %85, i32 %86, i32 %91, i32 %94)
  %96 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %97 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call %struct.iss_format_info* @omap4iss_video_format_info(i32 %98)
  store %struct.iss_format_info* %99, %struct.iss_format_info** %4, align 8
  %100 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %101 = load i32, i32* @OMAP4_ISS_MEM_ISP_ISIF, align 4
  %102 = load i32, i32* @ISIF_CGAMMAWD, align 4
  %103 = load i32, i32* @ISIF_CGAMMAWD_GWDI_MASK, align 4
  %104 = load %struct.iss_format_info*, %struct.iss_format_info** %4, align 8
  %105 = getelementptr inbounds %struct.iss_format_info, %struct.iss_format_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ISIF_CGAMMAWD_GWDI(i32 %106)
  %108 = call i32 @iss_reg_update(%struct.iss_device* %100, i32 %101, i32 %102, i32 %103, i32 %107)
  %109 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %110 = load i32, i32* @OMAP4_ISS_MEM_ISP_ISIF, align 4
  %111 = load i32, i32* @ISIF_CCOLP, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @iss_reg_write(%struct.iss_device* %109, i32 %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %1, %78, %29
  %115 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %116 = load i32, i32* @OMAP4_ISS_MEM_ISP_ISIF, align 4
  %117 = load i32, i32* @ISIF_SPH, align 4
  %118 = load i32, i32* @ISIF_SPH_MASK, align 4
  %119 = and i32 0, %118
  %120 = call i32 @iss_reg_write(%struct.iss_device* %115, i32 %116, i32 %117, i32 %119)
  %121 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %122 = load i32, i32* @OMAP4_ISS_MEM_ISP_ISIF, align 4
  %123 = load i32, i32* @ISIF_LNH, align 4
  %124 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %125 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, 1
  %128 = load i32, i32* @ISIF_LNH_MASK, align 4
  %129 = and i32 %127, %128
  %130 = call i32 @iss_reg_write(%struct.iss_device* %121, i32 %122, i32 %123, i32 %129)
  %131 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %132 = load i32, i32* @OMAP4_ISS_MEM_ISP_ISIF, align 4
  %133 = load i32, i32* @ISIF_LNV, align 4
  %134 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %135 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %136, 1
  %138 = load i32, i32* @ISIF_LNV_MASK, align 4
  %139 = and i32 %137, %138
  %140 = call i32 @iss_reg_write(%struct.iss_device* %131, i32 %132, i32 %133, i32 %139)
  %141 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %142 = load i32, i32* @OMAP4_ISS_MEM_ISP_ISIF, align 4
  %143 = call i32 @ISIF_VDINT(i32 0)
  %144 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %145 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %146, 1
  %148 = call i32 @iss_reg_write(%struct.iss_device* %141, i32 %142, i32 %143, i32 %147)
  %149 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %2, align 8
  %150 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %149, i32 0, i32 1
  %151 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %150, align 8
  %152 = load i64, i64* @IPIPEIF_PAD_SOURCE_ISIF_SF, align 8
  %153 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %151, i64 %152
  store %struct.v4l2_mbus_framefmt* %153, %struct.v4l2_mbus_framefmt** %5, align 8
  %154 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %155 = load i32, i32* @OMAP4_ISS_MEM_ISP_ISIF, align 4
  %156 = load i32, i32* @ISIF_HSIZE, align 4
  %157 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %2, align 8
  %158 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = ashr i32 %160, 5
  %162 = load i32, i32* @ISIF_HSIZE_HSIZE_MASK, align 4
  %163 = and i32 %161, %162
  %164 = call i32 @iss_reg_write(%struct.iss_device* %154, i32 %155, i32 %156, i32 %163)
  ret void
}

declare dso_local %struct.iss_device* @to_iss_device(%struct.iss_ipipeif_device*) #1

declare dso_local i32 @omap4iss_configure_bridge(%struct.iss_device*, i32) #1

declare dso_local i32 @iss_reg_clr(%struct.iss_device*, i32, i32, i32) #1

declare dso_local i32 @iss_reg_update(%struct.iss_device*, i32, i32, i32, i32) #1

declare dso_local %struct.iss_format_info* @omap4iss_video_format_info(i32) #1

declare dso_local i32 @ISIF_CGAMMAWD_GWDI(i32) #1

declare dso_local i32 @iss_reg_write(%struct.iss_device*, i32, i32, i32) #1

declare dso_local i32 @ISIF_VDINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
