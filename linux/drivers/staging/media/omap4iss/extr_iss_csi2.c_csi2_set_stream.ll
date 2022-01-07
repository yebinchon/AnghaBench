; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_set_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_set_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.iss_csi2_device = type { i32, i32, i32, i32, i32, i32, %struct.iss_video, %struct.iss_device* }
%struct.iss_video = type { i32 }
%struct.iss_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@CSI2_OUTPUT_MEMORY = common dso_local global i32 0, align 4
@ISS_VIDEO_DMAQUEUE_QUEUED = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @csi2_set_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi2_set_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iss_csi2_device*, align 8
  %7 = alloca %struct.iss_device*, align 8
  %8 = alloca %struct.iss_video*, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.iss_csi2_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.iss_csi2_device* %11, %struct.iss_csi2_device** %6, align 8
  %12 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %13 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %12, i32 0, i32 7
  %14 = load %struct.iss_device*, %struct.iss_device** %13, align 8
  store %struct.iss_device* %14, %struct.iss_device** %7, align 8
  %15 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %16 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %15, i32 0, i32 6
  store %struct.iss_video* %16, %struct.iss_video** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %18 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 128
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 128
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %120

25:                                               ; preds = %21
  %26 = load %struct.iss_device*, %struct.iss_device** %7, align 8
  %27 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %28 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @omap4iss_subclk_enable(%struct.iss_device* %26, i32 %29)
  br label %31

31:                                               ; preds = %25, %2
  %32 = load i32, i32* %5, align 4
  switch i32 %32, label %115 [
    i32 129, label %33
    i32 128, label %79
  ]

33:                                               ; preds = %31
  %34 = load %struct.iss_device*, %struct.iss_device** %7, align 8
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %36 = call i32 @omap4iss_csiphy_config(%struct.iss_device* %34, %struct.v4l2_subdev* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  br label %120

41:                                               ; preds = %33
  %42 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %43 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @omap4iss_csiphy_acquire(i32 %44)
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %120

50:                                               ; preds = %41
  %51 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %52 = call i32 @csi2_configure(%struct.iss_csi2_device* %51)
  %53 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %54 = call i32 @csi2_print_status(%struct.iss_csi2_device* %53)
  %55 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %56 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CSI2_OUTPUT_MEMORY, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %50
  %62 = load %struct.iss_video*, %struct.iss_video** %8, align 8
  %63 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ISS_VIDEO_DMAQUEUE_QUEUED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %61
  br label %115

69:                                               ; preds = %61, %50
  %70 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %71 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %70, i32 0, i32 4
  %72 = call i32 @atomic_set(i32* %71, i32 0)
  %73 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %74 = call i32 @csi2_ctx_enable(%struct.iss_csi2_device* %73, i32 0, i32 1)
  %75 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %76 = call i32 @csi2_if_enable(%struct.iss_csi2_device* %75, i32 1)
  %77 = load %struct.iss_video*, %struct.iss_video** %8, align 8
  %78 = call i32 @iss_video_dmaqueue_flags_clr(%struct.iss_video* %77)
  br label %115

79:                                               ; preds = %31
  %80 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %81 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 128
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %120

85:                                               ; preds = %79
  %86 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %87 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %86, i32 0, i32 0
  %88 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %89 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %88, i32 0, i32 5
  %90 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %91 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %90, i32 0, i32 4
  %92 = call i32 @omap4iss_module_sync_idle(i32* %87, i32* %89, i32* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = load i32, i32* @ETIMEDOUT, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %94, %85
  %98 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %99 = call i32 @csi2_ctx_enable(%struct.iss_csi2_device* %98, i32 0, i32 0)
  %100 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %101 = call i32 @csi2_if_enable(%struct.iss_csi2_device* %100, i32 0)
  %102 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %103 = call i32 @csi2_irq_ctx_set(%struct.iss_csi2_device* %102, i32 0)
  %104 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %105 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @omap4iss_csiphy_release(i32 %106)
  %108 = load %struct.iss_device*, %struct.iss_device** %7, align 8
  %109 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %110 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @omap4iss_subclk_disable(%struct.iss_device* %108, i32 %111)
  %113 = load %struct.iss_video*, %struct.iss_video** %8, align 8
  %114 = call i32 @iss_video_dmaqueue_flags_clr(%struct.iss_video* %113)
  br label %115

115:                                              ; preds = %31, %97, %69, %68
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %6, align 8
  %118 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %115, %84, %47, %39, %24
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.iss_csi2_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @omap4iss_subclk_enable(%struct.iss_device*, i32) #1

declare dso_local i32 @omap4iss_csiphy_config(%struct.iss_device*, %struct.v4l2_subdev*) #1

declare dso_local i32 @omap4iss_csiphy_acquire(i32) #1

declare dso_local i32 @csi2_configure(%struct.iss_csi2_device*) #1

declare dso_local i32 @csi2_print_status(%struct.iss_csi2_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @csi2_ctx_enable(%struct.iss_csi2_device*, i32, i32) #1

declare dso_local i32 @csi2_if_enable(%struct.iss_csi2_device*, i32) #1

declare dso_local i32 @iss_video_dmaqueue_flags_clr(%struct.iss_video*) #1

declare dso_local i32 @omap4iss_module_sync_idle(i32*, i32*, i32*) #1

declare dso_local i32 @csi2_irq_ctx_set(%struct.iss_csi2_device*, i32) #1

declare dso_local i32 @omap4iss_csiphy_release(i32) #1

declare dso_local i32 @omap4iss_subclk_disable(%struct.iss_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
