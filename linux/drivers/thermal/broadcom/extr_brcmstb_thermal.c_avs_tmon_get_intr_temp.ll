; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/broadcom/extr_brcmstb_thermal.c_avs_tmon_get_intr_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/broadcom/extr_brcmstb_thermal.c_avs_tmon_get_intr_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmstb_thermal_priv = type { i32, i64 }

@AVS_TMON_TEMP_INT_CODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmstb_thermal_priv*)* @avs_tmon_get_intr_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avs_tmon_get_intr_temp(%struct.brcmstb_thermal_priv* %0) #0 {
  %2 = alloca %struct.brcmstb_thermal_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.brcmstb_thermal_priv* %0, %struct.brcmstb_thermal_priv** %2, align 8
  %4 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %2, align 8
  %5 = getelementptr inbounds %struct.brcmstb_thermal_priv, %struct.brcmstb_thermal_priv* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @AVS_TMON_TEMP_INT_CODE, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @__raw_readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %2, align 8
  %11 = getelementptr inbounds %struct.brcmstb_thermal_priv, %struct.brcmstb_thermal_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @avs_tmon_code_to_temp(i32 %12, i32 %13)
  ret i32 %14
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @avs_tmon_code_to_temp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
