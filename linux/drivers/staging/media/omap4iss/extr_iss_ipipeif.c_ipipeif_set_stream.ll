; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipeif.c_ipipeif_set_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipeif.c_ipipeif_set_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.iss_ipipeif_device = type { i32, i32, i32, i32, %struct.iss_video }
%struct.iss_video = type { i32 }
%struct.iss_device = type { i32 }

@IPIPEIF_DRV_SUBCLK_MASK = common dso_local global i32 0, align 4
@IPIPEIF_OUTPUT_MEMORY = common dso_local global i32 0, align 4
@ISS_VIDEO_DMAQUEUE_QUEUED = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ipipeif_set_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipipeif_set_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iss_ipipeif_device*, align 8
  %7 = alloca %struct.iss_device*, align 8
  %8 = alloca %struct.iss_video*, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.iss_ipipeif_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.iss_ipipeif_device* %11, %struct.iss_ipipeif_device** %6, align 8
  %12 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %6, align 8
  %13 = call %struct.iss_device* @to_iss_device(%struct.iss_ipipeif_device* %12)
  store %struct.iss_device* %13, %struct.iss_device** %7, align 8
  %14 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %6, align 8
  %15 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %14, i32 0, i32 4
  store %struct.iss_video* %15, %struct.iss_video** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %6, align 8
  %17 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 128
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 128
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %108

24:                                               ; preds = %20
  %25 = load %struct.iss_device*, %struct.iss_device** %7, align 8
  %26 = load i32, i32* @IPIPEIF_DRV_SUBCLK_MASK, align 4
  %27 = call i32 @omap4iss_isp_subclk_enable(%struct.iss_device* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %2
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %103 [
    i32 129, label %30
    i32 128, label %67
  ]

30:                                               ; preds = %28
  %31 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %6, align 8
  %32 = call i32 @ipipeif_configure(%struct.iss_ipipeif_device* %31)
  %33 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %6, align 8
  %34 = call i32 @ipipeif_print_status(%struct.iss_ipipeif_device* %33)
  %35 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %6, align 8
  %36 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IPIPEIF_OUTPUT_MEMORY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %30
  %42 = load %struct.iss_video*, %struct.iss_video** %8, align 8
  %43 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ISS_VIDEO_DMAQUEUE_QUEUED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %103

49:                                               ; preds = %41, %30
  %50 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %6, align 8
  %51 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %50, i32 0, i32 2
  %52 = call i32 @atomic_set(i32* %51, i32 0)
  %53 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %6, align 8
  %54 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IPIPEIF_OUTPUT_MEMORY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %6, align 8
  %61 = call i32 @ipipeif_write_enable(%struct.iss_ipipeif_device* %60, i32 1)
  br label %62

62:                                               ; preds = %59, %49
  %63 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %6, align 8
  %64 = call i32 @ipipeif_enable(%struct.iss_ipipeif_device* %63, i32 1)
  %65 = load %struct.iss_video*, %struct.iss_video** %8, align 8
  %66 = call i32 @iss_video_dmaqueue_flags_clr(%struct.iss_video* %65)
  br label %103

67:                                               ; preds = %28
  %68 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %6, align 8
  %69 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 128
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %108

73:                                               ; preds = %67
  %74 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %75 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %74, i32 0, i32 0
  %76 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %6, align 8
  %77 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %76, i32 0, i32 3
  %78 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %6, align 8
  %79 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %78, i32 0, i32 2
  %80 = call i32 @omap4iss_module_sync_idle(i32* %75, i32* %77, i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %73
  %83 = load i32, i32* @ETIMEDOUT, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %82, %73
  %86 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %6, align 8
  %87 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IPIPEIF_OUTPUT_MEMORY, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %6, align 8
  %94 = call i32 @ipipeif_write_enable(%struct.iss_ipipeif_device* %93, i32 0)
  br label %95

95:                                               ; preds = %92, %85
  %96 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %6, align 8
  %97 = call i32 @ipipeif_enable(%struct.iss_ipipeif_device* %96, i32 0)
  %98 = load %struct.iss_device*, %struct.iss_device** %7, align 8
  %99 = load i32, i32* @IPIPEIF_DRV_SUBCLK_MASK, align 4
  %100 = call i32 @omap4iss_isp_subclk_disable(%struct.iss_device* %98, i32 %99)
  %101 = load %struct.iss_video*, %struct.iss_video** %8, align 8
  %102 = call i32 @iss_video_dmaqueue_flags_clr(%struct.iss_video* %101)
  br label %103

103:                                              ; preds = %28, %95, %62, %48
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.iss_ipipeif_device*, %struct.iss_ipipeif_device** %6, align 8
  %106 = getelementptr inbounds %struct.iss_ipipeif_device, %struct.iss_ipipeif_device* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %103, %72, %23
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.iss_ipipeif_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.iss_device* @to_iss_device(%struct.iss_ipipeif_device*) #1

declare dso_local i32 @omap4iss_isp_subclk_enable(%struct.iss_device*, i32) #1

declare dso_local i32 @ipipeif_configure(%struct.iss_ipipeif_device*) #1

declare dso_local i32 @ipipeif_print_status(%struct.iss_ipipeif_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ipipeif_write_enable(%struct.iss_ipipeif_device*, i32) #1

declare dso_local i32 @ipipeif_enable(%struct.iss_ipipeif_device*, i32) #1

declare dso_local i32 @iss_video_dmaqueue_flags_clr(%struct.iss_video*) #1

declare dso_local i32 @omap4iss_module_sync_idle(i32*, i32*, i32*) #1

declare dso_local i32 @omap4iss_isp_subclk_disable(%struct.iss_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
