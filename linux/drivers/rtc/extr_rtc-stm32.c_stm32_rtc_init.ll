; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stm32.c_stm32_rtc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stm32.c_stm32_rtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.stm32_rtc = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.stm32_rtc_registers }
%struct.stm32_rtc_registers = type { i32, i32 }

@STM32_RTC_PRER_PRED_A = common dso_local global i32 0, align 4
@STM32_RTC_PRER_PRED_A_SHIFT = common dso_local global i32 0, align 4
@STM32_RTC_PRER_PRED_S = common dso_local global i32 0, align 4
@STM32_RTC_PRER_PRED_S_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"rtc_ck is %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"slow\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Can't enter in init mode. Prescaler config failed.\0A\00", align 1
@STM32_RTC_CR_FMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.stm32_rtc*)* @stm32_rtc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_rtc_init(%struct.platform_device* %0, %struct.stm32_rtc* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stm32_rtc*, align 8
  %5 = alloca %struct.stm32_rtc_registers*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.stm32_rtc* %1, %struct.stm32_rtc** %4, align 8
  %14 = load %struct.stm32_rtc*, %struct.stm32_rtc** %4, align 8
  %15 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.stm32_rtc_registers* %17, %struct.stm32_rtc_registers** %5, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.stm32_rtc*, %struct.stm32_rtc** %4, align 8
  %19 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @clk_get_rate(i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* @STM32_RTC_PRER_PRED_A, align 4
  %23 = load i32, i32* @STM32_RTC_PRER_PRED_A_SHIFT, align 4
  %24 = lshr i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @STM32_RTC_PRER_PRED_S, align 4
  %26 = load i32, i32* @STM32_RTC_PRER_PRED_S_SHIFT, align 4
  %27 = lshr i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %48, %2
  %30 = load i32, i32* %7, align 4
  %31 = add i32 %30, 1
  %32 = icmp ugt i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %35, 1
  %37 = udiv i32 %34, %36
  %38 = sub i32 %37, 1
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = add i32 %39, 1
  %41 = load i32, i32* %7, align 4
  %42 = add i32 %41, 1
  %43 = mul i32 %40, %42
  %44 = load i32, i32* %12, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %51

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = add i32 %49, -1
  store i32 %50, i32* %7, align 4
  br label %29

51:                                               ; preds = %46, %29
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ugt i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ugt i32 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %55, %51
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %7, align 4
  %63 = add i32 %62, 1
  %64 = udiv i32 %61, %63
  %65 = sub i32 %64, 1
  store i32 %65, i32* %8, align 4
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %7, align 4
  %70 = add i32 %69, 1
  %71 = load i32, i32* %8, align 4
  %72 = add i32 %71, 1
  %73 = mul i32 %70, %72
  %74 = icmp ult i32 %68, %73
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %77 = call i32 @dev_warn(i32* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %59, %55
  %79 = load %struct.stm32_rtc*, %struct.stm32_rtc** %4, align 8
  %80 = call i32 @stm32_rtc_wpr_unlock(%struct.stm32_rtc* %79)
  %81 = load %struct.stm32_rtc*, %struct.stm32_rtc** %4, align 8
  %82 = call i32 @stm32_rtc_enter_init_mode(%struct.stm32_rtc* %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %149

89:                                               ; preds = %78
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @STM32_RTC_PRER_PRED_S_SHIFT, align 4
  %92 = shl i32 %90, %91
  %93 = load i32, i32* @STM32_RTC_PRER_PRED_S, align 4
  %94 = and i32 %92, %93
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.stm32_rtc*, %struct.stm32_rtc** %4, align 8
  %97 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %5, align 8
  %100 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %98, %102
  %104 = call i32 @writel_relaxed(i32 %95, i64 %103)
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @STM32_RTC_PRER_PRED_A_SHIFT, align 4
  %107 = shl i32 %105, %106
  %108 = load i32, i32* @STM32_RTC_PRER_PRED_A, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* %6, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.stm32_rtc*, %struct.stm32_rtc** %4, align 8
  %114 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %5, align 8
  %117 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %115, %119
  %121 = call i32 @writel_relaxed(i32 %112, i64 %120)
  %122 = load %struct.stm32_rtc*, %struct.stm32_rtc** %4, align 8
  %123 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %5, align 8
  %126 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %124, %128
  %130 = call i32 @readl_relaxed(i64 %129)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* @STM32_RTC_CR_FMT, align 4
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %11, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.stm32_rtc*, %struct.stm32_rtc** %4, align 8
  %137 = getelementptr inbounds %struct.stm32_rtc, %struct.stm32_rtc* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.stm32_rtc_registers*, %struct.stm32_rtc_registers** %5, align 8
  %140 = getelementptr inbounds %struct.stm32_rtc_registers, %struct.stm32_rtc_registers* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %138, %142
  %144 = call i32 @writel_relaxed(i32 %135, i64 %143)
  %145 = load %struct.stm32_rtc*, %struct.stm32_rtc** %4, align 8
  %146 = call i32 @stm32_rtc_exit_init_mode(%struct.stm32_rtc* %145)
  %147 = load %struct.stm32_rtc*, %struct.stm32_rtc** %4, align 8
  %148 = call i32 @stm32_rtc_wait_sync(%struct.stm32_rtc* %147)
  store i32 %148, i32* %13, align 4
  br label %149

149:                                              ; preds = %89, %85
  %150 = load %struct.stm32_rtc*, %struct.stm32_rtc** %4, align 8
  %151 = call i32 @stm32_rtc_wpr_lock(%struct.stm32_rtc* %150)
  %152 = load i32, i32* %13, align 4
  ret i32 %152
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i8*) #1

declare dso_local i32 @stm32_rtc_wpr_unlock(%struct.stm32_rtc*) #1

declare dso_local i32 @stm32_rtc_enter_init_mode(%struct.stm32_rtc*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @stm32_rtc_exit_init_mode(%struct.stm32_rtc*) #1

declare dso_local i32 @stm32_rtc_wait_sync(%struct.stm32_rtc*) #1

declare dso_local i32 @stm32_rtc_wpr_lock(%struct.stm32_rtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
