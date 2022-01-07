; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lpc32xx.c_lpc32xx_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-lpc32xx.c_lpc32xx_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.resource = type { i32 }
%struct.lpc32xx_rtc = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@LPC32XX_RTC_CTRL = common dso_local global i32 0, align 4
@LPC32XX_RTC_KEY = common dso_local global i32 0, align 4
@LPC32XX_RTC_KEY_ONSW_LOADVAL = common dso_local global i32 0, align 4
@LPC32XX_RTC_CTRL_SW_RESET = common dso_local global i32 0, align 4
@LPC32XX_RTC_CTRL_CNTR_DIS = common dso_local global i32 0, align 4
@LPC32XX_RTC_CTRL_MATCH0 = common dso_local global i32 0, align 4
@LPC32XX_RTC_CTRL_MATCH1 = common dso_local global i32 0, align 4
@LPC32XX_RTC_CTRL_ONSW_MATCH0 = common dso_local global i32 0, align 4
@LPC32XX_RTC_CTRL_ONSW_MATCH1 = common dso_local global i32 0, align 4
@LPC32XX_RTC_CTRL_ONSW_FORCE_HI = common dso_local global i32 0, align 4
@LPC32XX_RTC_MATCH0 = common dso_local global i32 0, align 4
@LPC32XX_RTC_INTSTAT = common dso_local global i32 0, align 4
@LPC32XX_RTC_INTSTAT_MATCH0 = common dso_local global i32 0, align 4
@LPC32XX_RTC_INTSTAT_MATCH1 = common dso_local global i32 0, align 4
@LPC32XX_RTC_INTSTAT_ONSW = common dso_local global i32 0, align 4
@lpc32xx_rtc_ops = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Can't get interrupt resource\0A\00", align 1
@lpc32xx_rtc_alarm_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't request interrupt.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpc32xx_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.lpc32xx_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.lpc32xx_rtc* @devm_kzalloc(i32* %9, i32 32, i32 %10)
  store %struct.lpc32xx_rtc* %11, %struct.lpc32xx_rtc** %5, align 8
  %12 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %13 = icmp ne %struct.lpc32xx_rtc* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %172

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 0)
  store %struct.resource* %24, %struct.resource** %4, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.resource*, %struct.resource** %4, align 8
  %28 = call %struct.TYPE_6__* @devm_ioremap_resource(i32* %26, %struct.resource* %27)
  %29 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %30 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %29, i32 0, i32 3
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %30, align 8
  %31 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %32 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %31, i32 0, i32 3
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = call i64 @IS_ERR(%struct.TYPE_6__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %38 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = call i32 @PTR_ERR(%struct.TYPE_6__* %39)
  store i32 %40, i32* %2, align 4
  br label %172

41:                                               ; preds = %21
  %42 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %43 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %42, i32 0, i32 2
  %44 = call i32 @spin_lock_init(i32* %43)
  %45 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %46 = load i32, i32* @LPC32XX_RTC_CTRL, align 4
  %47 = call i32 @rtc_readl(%struct.lpc32xx_rtc* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %49 = load i32, i32* @LPC32XX_RTC_KEY, align 4
  %50 = call i32 @rtc_readl(%struct.lpc32xx_rtc* %48, i32 %49)
  %51 = load i32, i32* @LPC32XX_RTC_KEY_ONSW_LOADVAL, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %89

53:                                               ; preds = %41
  %54 = load i32, i32* @LPC32XX_RTC_CTRL_SW_RESET, align 4
  %55 = load i32, i32* @LPC32XX_RTC_CTRL_CNTR_DIS, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @LPC32XX_RTC_CTRL_MATCH0, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @LPC32XX_RTC_CTRL_MATCH1, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @LPC32XX_RTC_CTRL_ONSW_MATCH0, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @LPC32XX_RTC_CTRL_ONSW_MATCH1, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @LPC32XX_RTC_CTRL_ONSW_FORCE_HI, align 4
  %66 = or i32 %64, %65
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %71 = load i32, i32* @LPC32XX_RTC_CTRL, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @rtc_writel(%struct.lpc32xx_rtc* %70, i32 %71, i32 %72)
  %74 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %75 = load i32, i32* @LPC32XX_RTC_MATCH0, align 4
  %76 = call i32 @rtc_writel(%struct.lpc32xx_rtc* %74, i32 %75, i32 -1)
  %77 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %78 = load i32, i32* @LPC32XX_RTC_INTSTAT, align 4
  %79 = load i32, i32* @LPC32XX_RTC_INTSTAT_MATCH0, align 4
  %80 = load i32, i32* @LPC32XX_RTC_INTSTAT_MATCH1, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @LPC32XX_RTC_INTSTAT_ONSW, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @rtc_writel(%struct.lpc32xx_rtc* %77, i32 %78, i32 %83)
  %85 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %86 = load i32, i32* @LPC32XX_RTC_KEY, align 4
  %87 = load i32, i32* @LPC32XX_RTC_KEY_ONSW_LOADVAL, align 4
  %88 = call i32 @rtc_writel(%struct.lpc32xx_rtc* %85, i32 %86, i32 %87)
  br label %97

89:                                               ; preds = %41
  %90 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %91 = load i32, i32* @LPC32XX_RTC_CTRL, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @LPC32XX_RTC_CTRL_MATCH0, align 4
  %94 = xor i32 %93, -1
  %95 = and i32 %92, %94
  %96 = call i32 @rtc_writel(%struct.lpc32xx_rtc* %90, i32 %91, i32 %95)
  br label %97

97:                                               ; preds = %89, %53
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %100 = call i32 @platform_set_drvdata(%struct.platform_device* %98, %struct.lpc32xx_rtc* %99)
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = call %struct.TYPE_6__* @devm_rtc_allocate_device(i32* %102)
  %104 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %105 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %104, i32 0, i32 1
  store %struct.TYPE_6__* %103, %struct.TYPE_6__** %105, align 8
  %106 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %107 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %106, i32 0, i32 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = call i64 @IS_ERR(%struct.TYPE_6__* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %97
  %112 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %113 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %112, i32 0, i32 1
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = call i32 @PTR_ERR(%struct.TYPE_6__* %114)
  store i32 %115, i32* %2, align 4
  br label %172

116:                                              ; preds = %97
  %117 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %118 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %117, i32 0, i32 1
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  store i32* @lpc32xx_rtc_ops, i32** %120, align 8
  %121 = load i32, i32* @U32_MAX, align 4
  %122 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %123 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %122, i32 0, i32 1
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  store i32 %121, i32* %125, align 8
  %126 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %127 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %126, i32 0, i32 1
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = call i32 @rtc_register_device(%struct.TYPE_6__* %128)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %116
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %2, align 4
  br label %172

134:                                              ; preds = %116
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = call i32 @platform_get_irq(%struct.platform_device* %135, i32 0)
  %137 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %138 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %140 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %134
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = call i32 @dev_warn(i32* %145, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %171

147:                                              ; preds = %134
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %151 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @lpc32xx_rtc_alarm_interrupt, align 4
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %158 = call i64 @devm_request_irq(i32* %149, i32 %152, i32 %153, i32 0, i32 %156, %struct.lpc32xx_rtc* %157)
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %147
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = call i32 @dev_warn(i32* %162, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %164 = load %struct.lpc32xx_rtc*, %struct.lpc32xx_rtc** %5, align 8
  %165 = getelementptr inbounds %struct.lpc32xx_rtc, %struct.lpc32xx_rtc* %164, i32 0, i32 0
  store i32 -1, i32* %165, align 8
  br label %170

166:                                              ; preds = %147
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = call i32 @device_init_wakeup(i32* %168, i32 1)
  br label %170

170:                                              ; preds = %166, %160
  br label %171

171:                                              ; preds = %170, %143
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %171, %132, %111, %36, %18
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.lpc32xx_rtc* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rtc_readl(%struct.lpc32xx_rtc*, i32) #1

declare dso_local i32 @rtc_writel(%struct.lpc32xx_rtc*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lpc32xx_rtc*) #1

declare dso_local %struct.TYPE_6__* @devm_rtc_allocate_device(i32*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_6__*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i64 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.lpc32xx_rtc*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
