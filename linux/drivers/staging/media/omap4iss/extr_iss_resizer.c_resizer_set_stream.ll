; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_resizer.c_resizer_set_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_resizer.c_resizer_set_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.iss_resizer_device = type { i32, i32, i32, i32, %struct.iss_video }
%struct.iss_video = type { i32 }
%struct.iss_device = type { i32 }

@OMAP4_ISS_ISP_SUBCLK_RSZ = common dso_local global i32 0, align 4
@OMAP4_ISS_MEM_ISP_RESIZER = common dso_local global i32 0, align 4
@RSZ_GCK_MMR = common dso_local global i32 0, align 4
@RSZ_GCK_MMR_MMR = common dso_local global i32 0, align 4
@RSZ_GCK_SDR = common dso_local global i32 0, align 4
@RSZ_GCK_SDR_CORE = common dso_local global i32 0, align 4
@RSZ_SYSCONFIG = common dso_local global i32 0, align 4
@RSZ_SYSCONFIG_RSZA_CLK_EN = common dso_local global i32 0, align 4
@RESIZER_OUTPUT_MEMORY = common dso_local global i32 0, align 4
@ISS_VIDEO_DMAQUEUE_QUEUED = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @resizer_set_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resizer_set_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iss_resizer_device*, align 8
  %7 = alloca %struct.iss_device*, align 8
  %8 = alloca %struct.iss_video*, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.iss_resizer_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.iss_resizer_device* %11, %struct.iss_resizer_device** %6, align 8
  %12 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %6, align 8
  %13 = call %struct.iss_device* @to_iss_device(%struct.iss_resizer_device* %12)
  store %struct.iss_device* %13, %struct.iss_device** %7, align 8
  %14 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %6, align 8
  %15 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %14, i32 0, i32 4
  store %struct.iss_video* %15, %struct.iss_video** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %6, align 8
  %17 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 128
  br i1 %19, label %20, label %43

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 128
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %118

24:                                               ; preds = %20
  %25 = load %struct.iss_device*, %struct.iss_device** %7, align 8
  %26 = load i32, i32* @OMAP4_ISS_ISP_SUBCLK_RSZ, align 4
  %27 = call i32 @omap4iss_isp_subclk_enable(%struct.iss_device* %25, i32 %26)
  %28 = load %struct.iss_device*, %struct.iss_device** %7, align 8
  %29 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %30 = load i32, i32* @RSZ_GCK_MMR, align 4
  %31 = load i32, i32* @RSZ_GCK_MMR_MMR, align 4
  %32 = call i32 @iss_reg_set(%struct.iss_device* %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.iss_device*, %struct.iss_device** %7, align 8
  %34 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %35 = load i32, i32* @RSZ_GCK_SDR, align 4
  %36 = load i32, i32* @RSZ_GCK_SDR_CORE, align 4
  %37 = call i32 @iss_reg_set(%struct.iss_device* %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.iss_device*, %struct.iss_device** %7, align 8
  %39 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %40 = load i32, i32* @RSZ_SYSCONFIG, align 4
  %41 = load i32, i32* @RSZ_SYSCONFIG_RSZA_CLK_EN, align 4
  %42 = call i32 @iss_reg_set(%struct.iss_device* %38, i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %24, %2
  %44 = load i32, i32* %5, align 4
  switch i32 %44, label %113 [
    i32 129, label %45
    i32 128, label %72
  ]

45:                                               ; preds = %43
  %46 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %6, align 8
  %47 = call i32 @resizer_configure(%struct.iss_resizer_device* %46)
  %48 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %6, align 8
  %49 = call i32 @resizer_print_status(%struct.iss_resizer_device* %48)
  %50 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %6, align 8
  %51 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @RESIZER_OUTPUT_MEMORY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %45
  %57 = load %struct.iss_video*, %struct.iss_video** %8, align 8
  %58 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ISS_VIDEO_DMAQUEUE_QUEUED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  br label %113

64:                                               ; preds = %56, %45
  %65 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %6, align 8
  %66 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %65, i32 0, i32 2
  %67 = call i32 @atomic_set(i32* %66, i32 0)
  %68 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %6, align 8
  %69 = call i32 @resizer_enable(%struct.iss_resizer_device* %68, i32 1)
  %70 = load %struct.iss_video*, %struct.iss_video** %8, align 8
  %71 = call i32 @iss_video_dmaqueue_flags_clr(%struct.iss_video* %70)
  br label %113

72:                                               ; preds = %43
  %73 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %6, align 8
  %74 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 128
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %118

78:                                               ; preds = %72
  %79 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %80 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %79, i32 0, i32 0
  %81 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %6, align 8
  %82 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %81, i32 0, i32 3
  %83 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %6, align 8
  %84 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %83, i32 0, i32 2
  %85 = call i32 @omap4iss_module_sync_idle(i32* %80, i32* %82, i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %78
  %88 = load i32, i32* @ETIMEDOUT, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %87, %78
  %91 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %6, align 8
  %92 = call i32 @resizer_enable(%struct.iss_resizer_device* %91, i32 0)
  %93 = load %struct.iss_device*, %struct.iss_device** %7, align 8
  %94 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %95 = load i32, i32* @RSZ_SYSCONFIG, align 4
  %96 = load i32, i32* @RSZ_SYSCONFIG_RSZA_CLK_EN, align 4
  %97 = call i32 @iss_reg_clr(%struct.iss_device* %93, i32 %94, i32 %95, i32 %96)
  %98 = load %struct.iss_device*, %struct.iss_device** %7, align 8
  %99 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %100 = load i32, i32* @RSZ_GCK_SDR, align 4
  %101 = load i32, i32* @RSZ_GCK_SDR_CORE, align 4
  %102 = call i32 @iss_reg_clr(%struct.iss_device* %98, i32 %99, i32 %100, i32 %101)
  %103 = load %struct.iss_device*, %struct.iss_device** %7, align 8
  %104 = load i32, i32* @OMAP4_ISS_MEM_ISP_RESIZER, align 4
  %105 = load i32, i32* @RSZ_GCK_MMR, align 4
  %106 = load i32, i32* @RSZ_GCK_MMR_MMR, align 4
  %107 = call i32 @iss_reg_clr(%struct.iss_device* %103, i32 %104, i32 %105, i32 %106)
  %108 = load %struct.iss_device*, %struct.iss_device** %7, align 8
  %109 = load i32, i32* @OMAP4_ISS_ISP_SUBCLK_RSZ, align 4
  %110 = call i32 @omap4iss_isp_subclk_disable(%struct.iss_device* %108, i32 %109)
  %111 = load %struct.iss_video*, %struct.iss_video** %8, align 8
  %112 = call i32 @iss_video_dmaqueue_flags_clr(%struct.iss_video* %111)
  br label %113

113:                                              ; preds = %43, %90, %64, %63
  %114 = load i32, i32* %5, align 4
  %115 = load %struct.iss_resizer_device*, %struct.iss_resizer_device** %6, align 8
  %116 = getelementptr inbounds %struct.iss_resizer_device, %struct.iss_resizer_device* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %113, %77, %23
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.iss_resizer_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.iss_device* @to_iss_device(%struct.iss_resizer_device*) #1

declare dso_local i32 @omap4iss_isp_subclk_enable(%struct.iss_device*, i32) #1

declare dso_local i32 @iss_reg_set(%struct.iss_device*, i32, i32, i32) #1

declare dso_local i32 @resizer_configure(%struct.iss_resizer_device*) #1

declare dso_local i32 @resizer_print_status(%struct.iss_resizer_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @resizer_enable(%struct.iss_resizer_device*, i32) #1

declare dso_local i32 @iss_video_dmaqueue_flags_clr(%struct.iss_video*) #1

declare dso_local i32 @omap4iss_module_sync_idle(i32*, i32*, i32*) #1

declare dso_local i32 @iss_reg_clr(%struct.iss_device*, i32, i32, i32) #1

declare dso_local i32 @omap4iss_isp_subclk_disable(%struct.iss_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
