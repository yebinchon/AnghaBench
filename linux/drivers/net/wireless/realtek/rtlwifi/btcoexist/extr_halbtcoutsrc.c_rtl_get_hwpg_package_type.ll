; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_rtl_get_hwpg_package_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_rtl_get_hwpg_package_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl_priv*)* @rtl_get_hwpg_package_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_get_hwpg_package_type(%struct.rtl_priv* %0) #0 {
  %2 = alloca %struct.rtl_priv*, align 8
  %3 = alloca %struct.rtl_hal*, align 8
  store %struct.rtl_priv* %0, %struct.rtl_priv** %2, align 8
  %4 = load %struct.rtl_priv*, %struct.rtl_priv** %2, align 8
  %5 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %4)
  store %struct.rtl_hal* %5, %struct.rtl_hal** %3, align 8
  %6 = load %struct.rtl_hal*, %struct.rtl_hal** %3, align 8
  %7 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  ret i32 %8
}

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
