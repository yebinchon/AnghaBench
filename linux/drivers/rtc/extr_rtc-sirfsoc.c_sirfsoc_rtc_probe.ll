; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sirfsoc.c_sirfsoc_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sirfsoc.c_sirfsoc_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.sirfsoc_rtc_drv = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"unable to find base address of rtc node in dtb\0A\00", align 1
@sysrtc_regmap_config = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@RTC_HZ = common dso_local global i32 0, align 4
@RTC_DIV = common dso_local global i32 0, align 4
@RTC_CLOCK_SWITCH = common dso_local global i32 0, align 4
@SIRFSOC_RTC_CLK = common dso_local global i32 0, align 4
@RTC_ALARM0 = common dso_local global i32 0, align 4
@RTC_ALARM1 = common dso_local global i32 0, align 4
@RTC_SW_VALUE = common dso_local global i32 0, align 4
@sirfsoc_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"can't register RTC device\0A\00", align 1
@sirfsoc_rtc_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Unable to register for the SiRF SOC RTC IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sirfsoc_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.sirfsoc_rtc_drv*, align 8
  %7 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %7, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.sirfsoc_rtc_drv* @devm_kzalloc(%struct.TYPE_7__* %13, i32 24, i32 %14)
  store %struct.sirfsoc_rtc_drv* %15, %struct.sirfsoc_rtc_drv** %6, align 8
  %16 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %6, align 8
  %17 = icmp eq %struct.sirfsoc_rtc_drv* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %137

21:                                               ; preds = %1
  %22 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %6, align 8
  %23 = getelementptr inbounds %struct.sirfsoc_rtc_drv, %struct.sirfsoc_rtc_drv* %22, i32 0, i32 5
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.device_node*, %struct.device_node** %7, align 8
  %26 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %6, align 8
  %27 = getelementptr inbounds %struct.sirfsoc_rtc_drv, %struct.sirfsoc_rtc_drv* %26, i32 0, i32 4
  %28 = call i32 @of_property_read_u32(%struct.device_node* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %33, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %137

36:                                               ; preds = %21
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %6, align 8
  %39 = call i32 @platform_set_drvdata(%struct.platform_device* %37, %struct.sirfsoc_rtc_drv* %38)
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i32 @device_init_wakeup(%struct.TYPE_7__* %41, i32 1)
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @devm_regmap_init_iobg(%struct.TYPE_7__* %44, i32* @sysrtc_regmap_config)
  %46 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %6, align 8
  %47 = getelementptr inbounds %struct.sirfsoc_rtc_drv, %struct.sirfsoc_rtc_drv* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %6, align 8
  %49 = getelementptr inbounds %struct.sirfsoc_rtc_drv, %struct.sirfsoc_rtc_drv* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @IS_ERR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %36
  %54 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %6, align 8
  %55 = getelementptr inbounds %struct.sirfsoc_rtc_drv, %struct.sirfsoc_rtc_drv* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @PTR_ERR(i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %137

63:                                               ; preds = %36
  %64 = load i32, i32* @RTC_HZ, align 4
  %65 = sdiv i32 32768, %64
  %66 = sdiv i32 %65, 2
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %5, align 8
  %69 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %6, align 8
  %70 = load i32, i32* @RTC_DIV, align 4
  %71 = load i64, i64* %5, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @sirfsoc_rtc_writel(%struct.sirfsoc_rtc_drv* %69, i32 %70, i32 %72)
  %74 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %6, align 8
  %75 = load i32, i32* @RTC_CLOCK_SWITCH, align 4
  %76 = load i32, i32* @SIRFSOC_RTC_CLK, align 4
  %77 = call i32 @sirfsoc_rtc_writel(%struct.sirfsoc_rtc_drv* %74, i32 %75, i32 %76)
  %78 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %6, align 8
  %79 = load i32, i32* @RTC_ALARM0, align 4
  %80 = call i32 @sirfsoc_rtc_writel(%struct.sirfsoc_rtc_drv* %78, i32 %79, i32 0)
  %81 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %6, align 8
  %82 = load i32, i32* @RTC_ALARM1, align 4
  %83 = call i32 @sirfsoc_rtc_writel(%struct.sirfsoc_rtc_drv* %81, i32 %82, i32 0)
  %84 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %6, align 8
  %85 = load i32, i32* @RTC_SW_VALUE, align 4
  %86 = call i32 @sirfsoc_rtc_readl(%struct.sirfsoc_rtc_drv* %84, i32 %85)
  %87 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %6, align 8
  %88 = getelementptr inbounds %struct.sirfsoc_rtc_drv, %struct.sirfsoc_rtc_drv* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @THIS_MODULE, align 4
  %95 = call i32 @devm_rtc_device_register(%struct.TYPE_7__* %90, i32 %93, i32* @sirfsoc_rtc_ops, i32 %94)
  %96 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %6, align 8
  %97 = getelementptr inbounds %struct.sirfsoc_rtc_drv, %struct.sirfsoc_rtc_drv* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %6, align 8
  %99 = getelementptr inbounds %struct.sirfsoc_rtc_drv, %struct.sirfsoc_rtc_drv* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @IS_ERR(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %63
  %104 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %6, align 8
  %105 = getelementptr inbounds %struct.sirfsoc_rtc_drv, %struct.sirfsoc_rtc_drv* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @PTR_ERR(i32 %106)
  store i32 %107, i32* %4, align 4
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %109, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %111 = load i32, i32* %4, align 4
  store i32 %111, i32* %2, align 4
  br label %137

112:                                              ; preds = %63
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = call i32 @platform_get_irq(%struct.platform_device* %113, i32 0)
  %115 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %6, align 8
  %116 = getelementptr inbounds %struct.sirfsoc_rtc_drv, %struct.sirfsoc_rtc_drv* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %6, align 8
  %120 = getelementptr inbounds %struct.sirfsoc_rtc_drv, %struct.sirfsoc_rtc_drv* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @sirfsoc_rtc_irq_handler, align 4
  %123 = load i32, i32* @IRQF_SHARED, align 4
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.sirfsoc_rtc_drv*, %struct.sirfsoc_rtc_drv** %6, align 8
  %128 = call i32 @devm_request_irq(%struct.TYPE_7__* %118, i32 %121, i32 %122, i32 %123, i32 %126, %struct.sirfsoc_rtc_drv* %127)
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* %4, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %112
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %133, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %135 = load i32, i32* %4, align 4
  store i32 %135, i32* %2, align 4
  br label %137

136:                                              ; preds = %112
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %136, %131, %103, %53, %31, %18
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.sirfsoc_rtc_drv* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sirfsoc_rtc_drv*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @devm_regmap_init_iobg(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sirfsoc_rtc_writel(%struct.sirfsoc_rtc_drv*, i32, i32) #1

declare dso_local i32 @sirfsoc_rtc_readl(%struct.sirfsoc_rtc_drv*, i32) #1

declare dso_local i32 @devm_rtc_device_register(%struct.TYPE_7__*, i32, i32*, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_7__*, i32, i32, i32, i32, %struct.sirfsoc_rtc_drv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
