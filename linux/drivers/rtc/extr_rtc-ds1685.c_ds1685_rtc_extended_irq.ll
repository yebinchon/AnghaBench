; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1685.c_ds1685_rtc_extended_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1685.c_ds1685_rtc_extended_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1685_priv = type { i32 (%struct.ds1685_priv*, i32)*, i32 (...)*, i32 (%struct.ds1685_priv*, i32, i32)*, i32 (...)*, i32 (...)* }
%struct.platform_device = type { i32 }

@RTC_EXT_CTRL_4A = common dso_local global i32 0, align 4
@RTC_EXT_CTRL_4B = common dso_local global i32 0, align 4
@RTC_CTRL_4B_KSE = common dso_local global i32 0, align 4
@RTC_CTRL_4A_KF = common dso_local global i32 0, align 4
@RTC_CTRL_4B_WIE = common dso_local global i32 0, align 4
@RTC_CTRL_4A_WF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Wake Alarm IRQ just occurred!\0A\00", align 1
@RTC_CTRL_4B_RIE = common dso_local global i32 0, align 4
@RTC_CTRL_4A_RF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"RAM-Clear IRQ just occurred!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ds1685_priv*, %struct.platform_device*)* @ds1685_rtc_extended_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds1685_rtc_extended_irq(%struct.ds1685_priv* %0, %struct.platform_device* %1) #0 {
  %3 = alloca %struct.ds1685_priv*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ds1685_priv* %0, %struct.ds1685_priv** %3, align 8
  store %struct.platform_device* %1, %struct.platform_device** %4, align 8
  %7 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %8 = call i32 @ds1685_rtc_switch_to_bank1(%struct.ds1685_priv* %7)
  %9 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %10 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %9, i32 0, i32 0
  %11 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %10, align 8
  %12 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %13 = load i32, i32* @RTC_EXT_CTRL_4A, align 4
  %14 = call i32 %11(%struct.ds1685_priv* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %16 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %15, i32 0, i32 0
  %17 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %16, align 8
  %18 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %19 = load i32, i32* @RTC_EXT_CTRL_4B, align 4
  %20 = call i32 %17(%struct.ds1685_priv* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @RTC_CTRL_4B_KSE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %84

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @RTC_CTRL_4A_KF, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %84

30:                                               ; preds = %25
  %31 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %32 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %31, i32 0, i32 2
  %33 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %32, align 8
  %34 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %35 = load i32, i32* @RTC_EXT_CTRL_4B, align 4
  %36 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %37 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %36, i32 0, i32 0
  %38 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %37, align 8
  %39 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %40 = load i32, i32* @RTC_EXT_CTRL_4B, align 4
  %41 = call i32 %38(%struct.ds1685_priv* %39, i32 %40)
  %42 = load i32, i32* @RTC_CTRL_4B_KSE, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = call i32 %33(%struct.ds1685_priv* %34, i32 %35, i32 %44)
  %46 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %47 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %46, i32 0, i32 2
  %48 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %47, align 8
  %49 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %50 = load i32, i32* @RTC_EXT_CTRL_4A, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @RTC_CTRL_4A_KF, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = call i32 %48(%struct.ds1685_priv* %49, i32 %50, i32 %54)
  %56 = call i32 @msleep(i32 500)
  %57 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %58 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %57, i32 0, i32 2
  %59 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %58, align 8
  %60 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %61 = load i32, i32* @RTC_EXT_CTRL_4B, align 4
  %62 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %63 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %62, i32 0, i32 0
  %64 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %63, align 8
  %65 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %66 = load i32, i32* @RTC_EXT_CTRL_4B, align 4
  %67 = call i32 %64(%struct.ds1685_priv* %65, i32 %66)
  %68 = load i32, i32* @RTC_CTRL_4B_KSE, align 4
  %69 = or i32 %67, %68
  %70 = call i32 %59(%struct.ds1685_priv* %60, i32 %61, i32 %69)
  %71 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %72 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %71, i32 0, i32 4
  %73 = load i32 (...)*, i32 (...)** %72, align 8
  %74 = icmp ne i32 (...)* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %30
  %76 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %77 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %76, i32 0, i32 4
  %78 = load i32 (...)*, i32 (...)** %77, align 8
  %79 = call i32 (...) %78()
  br label %83

80:                                               ; preds = %30
  %81 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %82 = call i32 @ds1685_rtc_poweroff(%struct.platform_device* %81)
  br label %83

83:                                               ; preds = %80, %75
  br label %84

84:                                               ; preds = %83, %25, %2
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @RTC_CTRL_4B_WIE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %119

89:                                               ; preds = %84
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @RTC_CTRL_4A_WF, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %119

94:                                               ; preds = %89
  %95 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %96 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %95, i32 0, i32 2
  %97 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %96, align 8
  %98 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %99 = load i32, i32* @RTC_EXT_CTRL_4A, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @RTC_CTRL_4A_WF, align 4
  %102 = xor i32 %101, -1
  %103 = and i32 %100, %102
  %104 = call i32 %97(%struct.ds1685_priv* %98, i32 %99, i32 %103)
  %105 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %106 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %105, i32 0, i32 3
  %107 = load i32 (...)*, i32 (...)** %106, align 8
  %108 = icmp ne i32 (...)* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %94
  %110 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %111 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %110, i32 0, i32 3
  %112 = load i32 (...)*, i32 (...)** %111, align 8
  %113 = call i32 (...) %112()
  br label %118

114:                                              ; preds = %94
  %115 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = call i32 @dev_warn(i32* %116, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %118

118:                                              ; preds = %114, %109
  br label %119

119:                                              ; preds = %118, %89, %84
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @RTC_CTRL_4B_RIE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %155

124:                                              ; preds = %119
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @RTC_CTRL_4A_RF, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %155

129:                                              ; preds = %124
  %130 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %131 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %130, i32 0, i32 2
  %132 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %131, align 8
  %133 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %134 = load i32, i32* @RTC_EXT_CTRL_4A, align 4
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @RTC_CTRL_4A_RF, align 4
  %137 = xor i32 %136, -1
  %138 = and i32 %135, %137
  %139 = call i32 %132(%struct.ds1685_priv* %133, i32 %134, i32 %138)
  %140 = call i32 @msleep(i32 150)
  %141 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %142 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %141, i32 0, i32 1
  %143 = load i32 (...)*, i32 (...)** %142, align 8
  %144 = icmp ne i32 (...)* %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %129
  %146 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %147 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %146, i32 0, i32 1
  %148 = load i32 (...)*, i32 (...)** %147, align 8
  %149 = call i32 (...) %148()
  br label %154

150:                                              ; preds = %129
  %151 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 0
  %153 = call i32 @dev_warn(i32* %152, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %154

154:                                              ; preds = %150, %145
  br label %155

155:                                              ; preds = %154, %124, %119
  %156 = load %struct.ds1685_priv*, %struct.ds1685_priv** %3, align 8
  %157 = call i32 @ds1685_rtc_switch_to_bank0(%struct.ds1685_priv* %156)
  ret void
}

declare dso_local i32 @ds1685_rtc_switch_to_bank1(%struct.ds1685_priv*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ds1685_rtc_poweroff(%struct.platform_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @ds1685_rtc_switch_to_bank0(%struct.ds1685_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
