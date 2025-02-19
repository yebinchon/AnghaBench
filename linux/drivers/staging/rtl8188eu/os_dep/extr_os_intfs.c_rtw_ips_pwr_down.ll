; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_os_intfs.c_rtw_ips_pwr_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_os_intfs.c_rtw_ips_pwr_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"===> rtw_ips_pwr_down...................\0A\00", align 1
@LED_CTL_POWER_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"<=== rtw_ips_pwr_down..................... in %dms\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_ips_pwr_down(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load i64, i64* @jiffies, align 8
  store i64 %4, i64* %3, align 8
  %5 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = load i32, i32* @LED_CTL_POWER_OFF, align 4
  %10 = call i32 @led_control_8188eu(%struct.adapter* %8, i32 %9)
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = call i32 @rtw_ips_dev_unload(%struct.adapter* %11)
  %13 = load i64, i64* @jiffies, align 8
  %14 = load i64, i64* %3, align 8
  %15 = sub i64 %13, %14
  %16 = call i32 @jiffies_to_msecs(i64 %15)
  %17 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  ret void
}

declare dso_local i32 @DBG_88E(i8*, ...) #1

declare dso_local i32 @led_control_8188eu(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_ips_dev_unload(%struct.adapter*) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
