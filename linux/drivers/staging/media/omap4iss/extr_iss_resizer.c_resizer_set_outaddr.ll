; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_resizer.c_resizer_set_outaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_resizer.c_resizer_set_outaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_resizer_device = type { %struct.TYPE_2__, %struct.v4l2_mbus_framefmt* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_mbus_framefmt = type { i64, i32 }
%struct.iss_device = type { i32 }

@RESIZER_PAD_SINK = common dso_local global i64 0, align 8
@RESIZER_PAD_SOURCE_MEM = common dso_local global i64 0, align 8
@OMAP4_ISS_MEM_ISP_RESIZER = common dso_local global i32 0, align 4
@RZA_SDR_Y_BAD_H = common dso_local global i32 0, align 4
@RZA_SDR_Y_BAD_L = common dso_local global i32 0, align 4
@RZA_SDR_Y_SAD_H = common dso_local global i32 0, align 4
@RZA_SDR_Y_SAD_L = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_UYVY8_1X16 = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_YUYV8_1_5X8 = common dso_local global i64 0, align 8
@RZA_SDR_C_BAD_H = common dso_local global i32 0, align 4
@RZA_SDR_C_BAD_L = common dso_local global i32 0, align 4
@RZA_SDR_C_SAD_H = common dso_local global i32 0, align 4
@RZA_SDR_C_SAD_L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iss_resizer_device*, i32)* @resizer_set_outaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resizer_set_outaddr(%struct.iss_resizer_device* %0, i32 %1) #0 {
  %3 = alloca %struct.iss_resizer_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iss_device*, align 8
  %6 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %7 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %8 = alloca i32, align 4
  store %struct.iss_resizer_device* %0, %struct.iss_resizer_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %3, align 8
  %10 = call %struct.iss_device* @to_iss_device(%struct.iss_resizer_device* %9)
  store %struct.iss_device* %10, %struct.iss_device** %5, align 8
  %11 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %3, align 8
  %12 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %11, i32 0, i32 1
  %13 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %12, align 8
  %14 = load i64, i64* @RESIZER_PAD_SINK, align 8
  %15 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %13, i64 %14
  store %struct.v4l2_mbus_framefmt* %15, %struct.v4l2_mbus_framefmt** %6, align 8
  %16 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %3, align 8
  %17 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %16, i32 0, i32 1
  %18 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %17, align 8
  %19 = load i64, i64* @RESIZER_PAD_SOURCE_MEM, align 8
  %20 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %18, i64 %19
  store %struct.v4l2_mbus_framefmt* %20, %struct.v4l2_mbus_framefmt** %7, align 8
  %21 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %22 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %23 = load i32, i32* @RZA_SDR_Y_BAD_H, align 4
  %24 = load i32, i32* %4, align 4
  %25 = ashr i32 %24, 16
  %26 = and i32 %25, 65535
  %27 = call i32 @iss_reg_write(%struct.iss_device* %21, i32 %22, i32 %23, i32 %26)
  %28 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %29 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %30 = load i32, i32* @RZA_SDR_Y_BAD_L, align 4
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 65535
  %33 = call i32 @iss_reg_write(%struct.iss_device* %28, i32 %29, i32 %30, i32 %32)
  %34 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %35 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %36 = load i32, i32* @RZA_SDR_Y_SAD_H, align 4
  %37 = load i32, i32* %4, align 4
  %38 = ashr i32 %37, 16
  %39 = and i32 %38, 65535
  %40 = call i32 @iss_reg_write(%struct.iss_device* %34, i32 %35, i32 %36, i32 %39)
  %41 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %42 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %43 = load i32, i32* @RZA_SDR_Y_SAD_L, align 4
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, 65535
  %46 = call i32 @iss_reg_write(%struct.iss_device* %41, i32 %42, i32 %43, i32 %45)
  %47 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %48 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MEDIA_BUS_FMT_UYVY8_1X16, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %110

52:                                               ; preds = %2
  %53 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MEDIA_BUS_FMT_YUYV8_1_5X8, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %110

58:                                               ; preds = %52
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %3, align 8
  %61 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %63, %66
  %68 = add nsw i32 %59, %67
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %4, align 4
  %71 = xor i32 %69, %70
  %72 = and i32 %71, 127
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %58
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, -128
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 128
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %4, align 4
  %80 = and i32 %79, 127
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %74, %58
  %84 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %85 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %86 = load i32, i32* @RZA_SDR_C_BAD_H, align 4
  %87 = load i32, i32* %8, align 4
  %88 = ashr i32 %87, 16
  %89 = and i32 %88, 65535
  %90 = call i32 @iss_reg_write(%struct.iss_device* %84, i32 %85, i32 %86, i32 %89)
  %91 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %92 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %93 = load i32, i32* @RZA_SDR_C_BAD_L, align 4
  %94 = load i32, i32* %8, align 4
  %95 = and i32 %94, 65535
  %96 = call i32 @iss_reg_write(%struct.iss_device* %91, i32 %92, i32 %93, i32 %95)
  %97 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %98 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %99 = load i32, i32* @RZA_SDR_C_SAD_H, align 4
  %100 = load i32, i32* %8, align 4
  %101 = ashr i32 %100, 16
  %102 = and i32 %101, 65535
  %103 = call i32 @iss_reg_write(%struct.iss_device* %97, i32 %98, i32 %99, i32 %102)
  %104 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %105 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %106 = load i32, i32* @RZA_SDR_C_SAD_L, align 4
  %107 = load i32, i32* %8, align 4
  %108 = and i32 %107, 65535
  %109 = call i32 @iss_reg_write(%struct.iss_device* %104, i32 %105, i32 %106, i32 %108)
  br label %110

110:                                              ; preds = %83, %52, %2
  ret void
}

declare dso_local %struct.iss_device* @to_iss_device(%struct.iss_resizer_device*) #1

declare dso_local i32 @iss_reg_write(%struct.iss_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
