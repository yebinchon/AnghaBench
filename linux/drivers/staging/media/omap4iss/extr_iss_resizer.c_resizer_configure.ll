; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_resizer.c_resizer_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_resizer.c_resizer_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_resizer_device = type { i64, %struct.TYPE_2__, %struct.v4l2_mbus_framefmt* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i64 }
%struct.iss_device = type { i32 }

@RESIZER_PAD_SINK = common dso_local global i64 0, align 8
@RESIZER_PAD_SOURCE_MEM = common dso_local global i64 0, align 8
@OMAP4_ISS_MEM_ISP_RESIZER = common dso_local global i32 0, align 4
@RSZ_SRC_FMT0 = common dso_local global i32 0, align 4
@RSZ_SRC_FMT0_BYPASS = common dso_local global i32 0, align 4
@RSZ_SRC_FMT0_SEL = common dso_local global i32 0, align 4
@RESIZER_INPUT_IPIPEIF = common dso_local global i64 0, align 8
@RSZ_SRC_MODE = common dso_local global i32 0, align 4
@RSZ_SRC_MODE_WRT = common dso_local global i32 0, align 4
@RSZ_SRC_MODE_OST = common dso_local global i32 0, align 4
@RZA_MODE = common dso_local global i32 0, align 4
@RZA_MODE_ONE_SHOT = common dso_local global i32 0, align 4
@RSZ_SRC_VPS = common dso_local global i32 0, align 4
@RSZ_SRC_HPS = common dso_local global i32 0, align 4
@RSZ_SRC_VSZ = common dso_local global i32 0, align 4
@RSZ_SRC_HSZ = common dso_local global i32 0, align 4
@RZA_I_VPS = common dso_local global i32 0, align 4
@RZA_I_HPS = common dso_local global i32 0, align 4
@RZA_O_VSZ = common dso_local global i32 0, align 4
@RZA_O_HSZ = common dso_local global i32 0, align 4
@RZA_V_DIF = common dso_local global i32 0, align 4
@RZA_H_DIF = common dso_local global i32 0, align 4
@RZA_SDR_Y_PTR_S = common dso_local global i32 0, align 4
@RZA_SDR_Y_PTR_E = common dso_local global i32 0, align 4
@RZA_SDR_Y_OFT = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_UYVY8_1X16 = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_YUYV8_1_5X8 = common dso_local global i64 0, align 8
@RZA_420 = common dso_local global i32 0, align 4
@RSZ_420_CEN = common dso_local global i32 0, align 4
@RSZ_420_YEN = common dso_local global i32 0, align 4
@RZA_SDR_C_PTR_S = common dso_local global i32 0, align 4
@RZA_SDR_C_PTR_E = common dso_local global i32 0, align 4
@RZA_SDR_C_OFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iss_resizer_device*)* @resizer_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resizer_configure(%struct.iss_resizer_device* %0) #0 {
  %2 = alloca %struct.iss_resizer_device*, align 8
  %3 = alloca %struct.iss_device*, align 8
  %4 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %5 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.iss_resizer_device* %0, %struct.iss_resizer_device** %2, align 8
  %6 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %2, align 8
  %7 = call %struct.iss_device* @to_iss_device(%struct.iss_resizer_device* %6)
  store %struct.iss_device* %7, %struct.iss_device** %3, align 8
  %8 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %2, align 8
  %9 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %8, i32 0, i32 2
  %10 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %11 = load i64, i64* @RESIZER_PAD_SINK, align 8
  %12 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %10, i64 %11
  store %struct.v4l2_mbus_framefmt* %12, %struct.v4l2_mbus_framefmt** %4, align 8
  %13 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %2, align 8
  %14 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %13, i32 0, i32 2
  %15 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %14, align 8
  %16 = load i64, i64* @RESIZER_PAD_SOURCE_MEM, align 8
  %17 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %15, i64 %16
  store %struct.v4l2_mbus_framefmt* %17, %struct.v4l2_mbus_framefmt** %5, align 8
  %18 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %19 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %20 = load i32, i32* @RSZ_SRC_FMT0, align 4
  %21 = load i32, i32* @RSZ_SRC_FMT0_BYPASS, align 4
  %22 = call i32 @iss_reg_clr(%struct.iss_device* %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %24 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %25 = load i32, i32* @RSZ_SRC_FMT0, align 4
  %26 = load i32, i32* @RSZ_SRC_FMT0_SEL, align 4
  %27 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %2, align 8
  %28 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RESIZER_INPUT_IPIPEIF, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @RSZ_SRC_FMT0_SEL, align 4
  br label %35

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  %37 = call i32 @iss_reg_update(%struct.iss_device* %23, i32 %24, i32 %25, i32 %26, i32 %36)
  %38 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %39 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %40 = load i32, i32* @RSZ_SRC_MODE, align 4
  %41 = load i32, i32* @RSZ_SRC_MODE_WRT, align 4
  %42 = call i32 @iss_reg_clr(%struct.iss_device* %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %44 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %45 = load i32, i32* @RSZ_SRC_MODE, align 4
  %46 = load i32, i32* @RSZ_SRC_MODE_OST, align 4
  %47 = call i32 @iss_reg_clr(%struct.iss_device* %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %49 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %50 = load i32, i32* @RZA_MODE, align 4
  %51 = load i32, i32* @RZA_MODE_ONE_SHOT, align 4
  %52 = call i32 @iss_reg_clr(%struct.iss_device* %48, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %54 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %55 = load i32, i32* @RSZ_SRC_VPS, align 4
  %56 = call i32 @iss_reg_write(%struct.iss_device* %53, i32 %54, i32 %55, i32 0)
  %57 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %58 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %59 = load i32, i32* @RSZ_SRC_HPS, align 4
  %60 = call i32 @iss_reg_write(%struct.iss_device* %57, i32 %58, i32 %59, i32 0)
  %61 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %62 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %63 = load i32, i32* @RSZ_SRC_VSZ, align 4
  %64 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %65 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 2
  %68 = call i32 @iss_reg_write(%struct.iss_device* %61, i32 %62, i32 %63, i32 %67)
  %69 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %70 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %71 = load i32, i32* @RSZ_SRC_HSZ, align 4
  %72 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %73 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 1
  %76 = call i32 @iss_reg_write(%struct.iss_device* %69, i32 %70, i32 %71, i32 %75)
  %77 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %78 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %79 = load i32, i32* @RZA_I_VPS, align 4
  %80 = call i32 @iss_reg_write(%struct.iss_device* %77, i32 %78, i32 %79, i32 0)
  %81 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %82 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %83 = load i32, i32* @RZA_I_HPS, align 4
  %84 = call i32 @iss_reg_write(%struct.iss_device* %81, i32 %82, i32 %83, i32 0)
  %85 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %86 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %87 = load i32, i32* @RZA_O_VSZ, align 4
  %88 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %89 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %90, 2
  %92 = call i32 @iss_reg_write(%struct.iss_device* %85, i32 %86, i32 %87, i32 %91)
  %93 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %94 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %95 = load i32, i32* @RZA_O_HSZ, align 4
  %96 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %97 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, 1
  %100 = call i32 @iss_reg_write(%struct.iss_device* %93, i32 %94, i32 %95, i32 %99)
  %101 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %102 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %103 = load i32, i32* @RZA_V_DIF, align 4
  %104 = call i32 @iss_reg_write(%struct.iss_device* %101, i32 %102, i32 %103, i32 256)
  %105 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %106 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %107 = load i32, i32* @RZA_H_DIF, align 4
  %108 = call i32 @iss_reg_write(%struct.iss_device* %105, i32 %106, i32 %107, i32 256)
  %109 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %110 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %111 = load i32, i32* @RZA_SDR_Y_PTR_S, align 4
  %112 = call i32 @iss_reg_write(%struct.iss_device* %109, i32 %110, i32 %111, i32 0)
  %113 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %114 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %115 = load i32, i32* @RZA_SDR_Y_PTR_E, align 4
  %116 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %117 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %118, 1
  %120 = call i32 @iss_reg_write(%struct.iss_device* %113, i32 %114, i32 %115, i32 %119)
  %121 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %122 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %123 = load i32, i32* @RZA_SDR_Y_OFT, align 4
  %124 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %2, align 8
  %125 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @iss_reg_write(%struct.iss_device* %121, i32 %122, i32 %123, i32 %127)
  %129 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %130 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @MEDIA_BUS_FMT_UYVY8_1X16, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %168

134:                                              ; preds = %35
  %135 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %136 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @MEDIA_BUS_FMT_YUYV8_1_5X8, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %168

140:                                              ; preds = %134
  %141 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %142 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %143 = load i32, i32* @RZA_420, align 4
  %144 = load i32, i32* @RSZ_420_CEN, align 4
  %145 = load i32, i32* @RSZ_420_YEN, align 4
  %146 = or i32 %144, %145
  %147 = call i32 @iss_reg_write(%struct.iss_device* %141, i32 %142, i32 %143, i32 %146)
  %148 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %149 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %150 = load i32, i32* @RZA_SDR_C_PTR_S, align 4
  %151 = call i32 @iss_reg_write(%struct.iss_device* %148, i32 %149, i32 %150, i32 0)
  %152 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %153 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %154 = load i32, i32* @RZA_SDR_C_PTR_E, align 4
  %155 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %156 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sub nsw i32 %157, 1
  %159 = call i32 @iss_reg_write(%struct.iss_device* %152, i32 %153, i32 %154, i32 %158)
  %160 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %161 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %162 = load i32, i32* @RZA_SDR_C_OFT, align 4
  %163 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %2, align 8
  %164 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @iss_reg_write(%struct.iss_device* %160, i32 %161, i32 %162, i32 %166)
  br label %173

168:                                              ; preds = %134, %35
  %169 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %170 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %171 = load i32, i32* @RZA_420, align 4
  %172 = call i32 @iss_reg_write(%struct.iss_device* %169, i32 %170, i32 %171, i32 0)
  br label %173

173:                                              ; preds = %168, %140
  ret void
}

declare dso_local %struct.iss_device* @to_iss_device(%struct.iss_resizer_device*) #1

declare dso_local i32 @iss_reg_clr(%struct.iss_device*, i32, i32, i32) #1

declare dso_local i32 @iss_reg_update(%struct.iss_device*, i32, i32, i32, i32) #1

declare dso_local i32 @iss_reg_write(%struct.iss_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
