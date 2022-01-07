; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1685.c_ds1685_rtc_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1685.c_ds1685_rtc_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ds1685_priv = type { i32 (%struct.ds1685_priv*, i32)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mutex }
%struct.mutex = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@RTC_CTRL_B = common dso_local global i32 0, align 4
@RTC_CTRL_C = common dso_local global i32 0, align 4
@RTC_CTRL_C_IRQF = common dso_local global i32 0, align 4
@RTC_CTRL_B_PAU_MASK = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i64 0, align 8
@RTC_CTRL_B_PIE = common dso_local global i32 0, align 4
@RTC_CTRL_C_PF = common dso_local global i32 0, align 4
@RTC_PF = common dso_local global i64 0, align 8
@RTC_CTRL_B_AIE = common dso_local global i32 0, align 4
@RTC_CTRL_C_AF = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i64 0, align 8
@RTC_CTRL_B_UIE = common dso_local global i32 0, align 4
@RTC_CTRL_C_UF = common dso_local global i32 0, align 4
@RTC_UF = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ds1685_rtc_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1685_rtc_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.ds1685_priv*, align 8
  %8 = alloca %struct.mutex*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.platform_device*
  store %struct.platform_device* %14, %struct.platform_device** %6, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %16 = call %struct.ds1685_priv* @platform_get_drvdata(%struct.platform_device* %15)
  store %struct.ds1685_priv* %16, %struct.ds1685_priv** %7, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.ds1685_priv*, %struct.ds1685_priv** %7, align 8
  %18 = icmp ne %struct.ds1685_priv* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %24, i32* %3, align 4
  br label %127

25:                                               ; preds = %2
  %26 = load %struct.ds1685_priv*, %struct.ds1685_priv** %7, align 8
  %27 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store %struct.mutex* %29, %struct.mutex** %8, align 8
  %30 = load %struct.mutex*, %struct.mutex** %8, align 8
  %31 = call i32 @mutex_lock(%struct.mutex* %30)
  %32 = load %struct.ds1685_priv*, %struct.ds1685_priv** %7, align 8
  %33 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %32, i32 0, i32 0
  %34 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %33, align 8
  %35 = load %struct.ds1685_priv*, %struct.ds1685_priv** %7, align 8
  %36 = load i32, i32* @RTC_CTRL_B, align 4
  %37 = call i32 %34(%struct.ds1685_priv* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.ds1685_priv*, %struct.ds1685_priv** %7, align 8
  %39 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %38, i32 0, i32 0
  %40 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %39, align 8
  %41 = load %struct.ds1685_priv*, %struct.ds1685_priv** %7, align 8
  %42 = load i32, i32* @RTC_CTRL_C, align 4
  %43 = call i32 %40(%struct.ds1685_priv* %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @RTC_CTRL_C_IRQF, align 4
  %46 = and i32 %44, %45
  %47 = call i64 @likely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %110

49:                                               ; preds = %25
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @RTC_CTRL_B_PAU_MASK, align 4
  %52 = and i32 %50, %51
  %53 = call i64 @likely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %105

55:                                               ; preds = %49
  %56 = load i64, i64* @RTC_IRQF, align 8
  store i64 %56, i64* %11, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @RTC_CTRL_B_PIE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @RTC_CTRL_C_PF, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i64, i64* @RTC_PF, align 8
  %68 = load i64, i64* %11, align 8
  %69 = or i64 %68, %67
  store i64 %69, i64* %11, align 8
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %66, %61, %55
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @RTC_CTRL_B_AIE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %72
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @RTC_CTRL_C_AF, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i64, i64* @RTC_AF, align 8
  %84 = load i64, i64* %11, align 8
  %85 = or i64 %84, %83
  store i64 %85, i64* %11, align 8
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %82, %77, %72
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @RTC_CTRL_B_UIE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @RTC_CTRL_C_UF, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load i64, i64* @RTC_UF, align 8
  %100 = load i64, i64* %11, align 8
  %101 = or i64 %100, %99
  store i64 %101, i64* %11, align 8
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %98, %93, %88
  br label %109

105:                                              ; preds = %49
  %106 = load %struct.ds1685_priv*, %struct.ds1685_priv** %7, align 8
  %107 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %108 = call i32 @ds1685_rtc_extended_irq(%struct.ds1685_priv* %106, %struct.platform_device* %107)
  br label %109

109:                                              ; preds = %105, %104
  br label %110

110:                                              ; preds = %109, %25
  %111 = load %struct.ds1685_priv*, %struct.ds1685_priv** %7, align 8
  %112 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %111, i32 0, i32 1
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load i64, i64* %11, align 8
  %116 = call i32 @rtc_update_irq(%struct.TYPE_2__* %113, i32 %114, i64 %115)
  %117 = load %struct.mutex*, %struct.mutex** %8, align 8
  %118 = call i32 @mutex_unlock(%struct.mutex* %117)
  %119 = load i64, i64* %11, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %110
  %122 = load i32, i32* @IRQ_HANDLED, align 4
  br label %125

123:                                              ; preds = %110
  %124 = load i32, i32* @IRQ_NONE, align 4
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i32 [ %122, %121 ], [ %124, %123 ]
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %125, %23
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.ds1685_priv* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ds1685_rtc_extended_irq(%struct.ds1685_priv*, %struct.platform_device*) #1

declare dso_local i32 @rtc_update_irq(%struct.TYPE_2__*, i32, i64) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
