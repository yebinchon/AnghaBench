; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_mlme_linux.c_rtw_init_mlme_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_mlme_linux.c_rtw_init_mlme_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32, i32, i32 }

@_rtw_join_timeout_handler = common dso_local global i32 0, align 4
@rtw_scan_timeout_handler = common dso_local global i32 0, align 4
@rtw_dynamic_check_timer_handlder = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_init_mlme_timer(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.mlme_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = getelementptr inbounds %struct.adapter, %struct.adapter* %4, i32 0, i32 0
  store %struct.mlme_priv* %5, %struct.mlme_priv** %3, align 8
  %6 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %7 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %6, i32 0, i32 2
  %8 = load i32, i32* @_rtw_join_timeout_handler, align 4
  %9 = call i32 @timer_setup(i32* %7, i32 %8, i32 0)
  %10 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %11 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %10, i32 0, i32 1
  %12 = load i32, i32* @rtw_scan_timeout_handler, align 4
  %13 = call i32 @timer_setup(i32* %11, i32 %12, i32 0)
  %14 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %15 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %14, i32 0, i32 0
  %16 = load i32, i32* @rtw_dynamic_check_timer_handlder, align 4
  %17 = call i32 @timer_setup(i32* %15, i32 %16, i32 0)
  ret void
}

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
