; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_mx3fb.c_mx3fb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_mx3fb.c_mx3fb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.mx3fb_data = type { i32, i32, %struct.device*, i32 }
%struct.dma_chan = type { i32 }
%struct.dma_chan_request = type { i32, %struct.mx3fb_data* }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Remapped %pR at %p\0A\00", align 1
@DMA_SLAVE = common dso_local global i32 0, align 4
@DMA_PRIVATE = common dso_local global i32 0, align 4
@IDMAC_SDC_0 = common dso_local global i32 0, align 4
@chan_filter = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"mx3fb: failed to register fb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mx3fb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx3fb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.mx3fb_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dma_chan*, align 8
  %10 = alloca %struct.dma_chan_request, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = load i32, i32* @IORESOURCE_MEM, align 4
  %15 = call %struct.resource* @platform_get_resource(%struct.platform_device* %13, i32 %14, i32 0)
  store %struct.resource* %15, %struct.resource** %6, align 8
  %16 = load %struct.resource*, %struct.resource** %6, align 8
  %17 = icmp ne %struct.resource* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %109

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.mx3fb_data* @devm_kzalloc(%struct.device* %23, i32 24, i32 %24)
  store %struct.mx3fb_data* %25, %struct.mx3fb_data** %7, align 8
  %26 = load %struct.mx3fb_data*, %struct.mx3fb_data** %7, align 8
  %27 = icmp ne %struct.mx3fb_data* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %109

31:                                               ; preds = %21
  %32 = load %struct.mx3fb_data*, %struct.mx3fb_data** %7, align 8
  %33 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %32, i32 0, i32 3
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = load %struct.resource*, %struct.resource** %6, align 8
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.resource*, %struct.resource** %6, align 8
  %39 = call i32 @resource_size(%struct.resource* %38)
  %40 = call i32 @ioremap(i32 %37, i32 %39)
  %41 = load %struct.mx3fb_data*, %struct.mx3fb_data** %7, align 8
  %42 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.mx3fb_data*, %struct.mx3fb_data** %7, align 8
  %44 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %31
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %105

50:                                               ; preds = %31
  %51 = load %struct.resource*, %struct.resource** %6, align 8
  %52 = load %struct.mx3fb_data*, %struct.mx3fb_data** %7, align 8
  %53 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.resource* %51, i32 %54)
  %56 = call i32 (...) @dmaengine_get()
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load %struct.mx3fb_data*, %struct.mx3fb_data** %7, align 8
  %59 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %58, i32 0, i32 2
  store %struct.device* %57, %struct.device** %59, align 8
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = load %struct.mx3fb_data*, %struct.mx3fb_data** %7, align 8
  %62 = call i32 @platform_set_drvdata(%struct.platform_device* %60, %struct.mx3fb_data* %61)
  %63 = load %struct.mx3fb_data*, %struct.mx3fb_data** %7, align 8
  %64 = getelementptr inbounds %struct.dma_chan_request, %struct.dma_chan_request* %10, i32 0, i32 1
  store %struct.mx3fb_data* %63, %struct.mx3fb_data** %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @dma_cap_zero(i32 %65)
  %67 = load i32, i32* @DMA_SLAVE, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @dma_cap_set(i32 %67, i32 %68)
  %70 = load i32, i32* @DMA_PRIVATE, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @dma_cap_set(i32 %70, i32 %71)
  %73 = load i32, i32* @IDMAC_SDC_0, align 4
  %74 = getelementptr inbounds %struct.dma_chan_request, %struct.dma_chan_request* %10, i32 0, i32 0
  store i32 %73, i32* %74, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @chan_filter, align 4
  %77 = call %struct.dma_chan* @dma_request_channel(i32 %75, i32 %76, %struct.dma_chan_request* %10)
  store %struct.dma_chan* %77, %struct.dma_chan** %9, align 8
  %78 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %79 = icmp ne %struct.dma_chan* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %50
  %81 = load i32, i32* @EBUSY, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %99

83:                                               ; preds = %50
  %84 = load %struct.mx3fb_data*, %struct.mx3fb_data** %7, align 8
  %85 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %84, i32 0, i32 0
  store i32 255, i32* %85, align 8
  %86 = load %struct.mx3fb_data*, %struct.mx3fb_data** %7, align 8
  %87 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %88 = call i32 @to_idmac_chan(%struct.dma_chan* %87)
  %89 = call i32 @init_fb_chan(%struct.mx3fb_data* %86, i32 %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  br label %96

93:                                               ; preds = %83
  %94 = load %struct.mx3fb_data*, %struct.mx3fb_data** %7, align 8
  %95 = call i32 @mx3fb_init_backlight(%struct.mx3fb_data* %94)
  store i32 0, i32* %2, align 4
  br label %109

96:                                               ; preds = %92
  %97 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %98 = call i32 @dma_release_channel(%struct.dma_chan* %97)
  br label %99

99:                                               ; preds = %96, %80
  %100 = call i32 (...) @dmaengine_put()
  %101 = load %struct.mx3fb_data*, %struct.mx3fb_data** %7, align 8
  %102 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @iounmap(i32 %103)
  br label %105

105:                                              ; preds = %99, %47
  %106 = load %struct.device*, %struct.device** %4, align 8
  %107 = call i32 @dev_err(%struct.device* %106, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i32, i32* %5, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %105, %93, %28, %18
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.mx3fb_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @pr_debug(i8*, %struct.resource*, i32) #1

declare dso_local i32 @dmaengine_get(...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mx3fb_data*) #1

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local %struct.dma_chan* @dma_request_channel(i32, i32, %struct.dma_chan_request*) #1

declare dso_local i32 @init_fb_chan(%struct.mx3fb_data*, i32) #1

declare dso_local i32 @to_idmac_chan(%struct.dma_chan*) #1

declare dso_local i32 @mx3fb_init_backlight(%struct.mx3fb_data*) #1

declare dso_local i32 @dma_release_channel(%struct.dma_chan*) #1

declare dso_local i32 @dmaengine_put(...) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
