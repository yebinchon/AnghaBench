; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sa1100fb.c_sa1100fb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sa1100fb.c_sa1100fb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sa1100fb_info = type { %struct.TYPE_5__, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"no platform LCD data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@sa1100fb_handle_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"LCD\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"request_irq failed: %d\0A\00", align 1
@SHANNON_GPIO_DISP_EN = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"display enable\00", align 1
@CPUFREQ_TRANSITION_NOTIFIER = common dso_local global i32 0, align 4
@sa1100fb_freq_transition = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sa1100fb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100fb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sa1100fb_info*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call i32 @dev_get_platdata(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call i32 (i32*, i8*, ...) @dev_err(i32* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %138

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = call i32 @platform_get_irq(%struct.platform_device* %19, i32 0)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %138

26:                                               ; preds = %18
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call %struct.sa1100fb_info* @sa1100fb_init_fbinfo(i32* %28)
  store %struct.sa1100fb_info* %29, %struct.sa1100fb_info** %4, align 8
  %30 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %31 = icmp ne %struct.sa1100fb_info* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %138

35:                                               ; preds = %26
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load i32, i32* @IORESOURCE_MEM, align 4
  %38 = call %struct.resource* @platform_get_resource(%struct.platform_device* %36, i32 %37, i32 0)
  store %struct.resource* %38, %struct.resource** %5, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.resource*, %struct.resource** %5, align 8
  %42 = call i32 @devm_ioremap_resource(i32* %40, %struct.resource* %41)
  %43 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %44 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 4
  %45 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %46 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %35
  %51 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %52 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @PTR_ERR(i32 %53)
  store i32 %54, i32* %2, align 4
  br label %138

55:                                               ; preds = %35
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 @devm_clk_get(i32* %57, i32* null)
  %59 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %60 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 4
  %61 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %62 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @IS_ERR(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %55
  %67 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %68 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @PTR_ERR(i32 %69)
  store i32 %70, i32* %2, align 4
  br label %138

71:                                               ; preds = %55
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @sa1100fb_handle_irq, align 4
  %76 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %77 = call i32 @devm_request_irq(i32* %73, i32 %74, i32 %75, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.sa1100fb_info* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %71
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load i32, i32* %6, align 4
  %84 = call i32 (i32*, i8*, ...) @dev_err(i32* %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %138

86:                                               ; preds = %71
  %87 = call i64 (...) @machine_is_shannon()
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = load i32, i32* @SHANNON_GPIO_DISP_EN, align 4
  %93 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %94 = call i32 @devm_gpio_request_one(i32* %91, i32 %92, i32 %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %2, align 4
  br label %138

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %99, %86
  %101 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %102 = call i32 @sa1100fb_map_video_memory(%struct.sa1100fb_info* %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %138

107:                                              ; preds = %100
  %108 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %109 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %112 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %111, i32 0, i32 5
  %113 = call i32 @sa1100fb_check_var(i32* %110, %struct.TYPE_4__* %112)
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %116 = call i32 @platform_set_drvdata(%struct.platform_device* %114, %struct.sa1100fb_info* %115)
  %117 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %118 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %117, i32 0, i32 5
  %119 = call i32 @register_framebuffer(%struct.TYPE_4__* %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %107
  %123 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %124 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %127 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %130 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %4, align 8
  %133 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @dma_free_wc(i32 %125, i32 %128, i32 %131, i32 %134)
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %2, align 4
  br label %138

137:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %137, %122, %105, %97, %80, %66, %50, %32, %23, %12
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.sa1100fb_info* @sa1100fb_init_fbinfo(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.sa1100fb_info*) #1

declare dso_local i64 @machine_is_shannon(...) #1

declare dso_local i32 @devm_gpio_request_one(i32*, i32, i32, i8*) #1

declare dso_local i32 @sa1100fb_map_video_memory(%struct.sa1100fb_info*) #1

declare dso_local i32 @sa1100fb_check_var(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sa1100fb_info*) #1

declare dso_local i32 @register_framebuffer(%struct.TYPE_4__*) #1

declare dso_local i32 @dma_free_wc(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
