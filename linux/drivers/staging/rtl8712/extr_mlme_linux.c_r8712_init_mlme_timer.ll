; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_mlme_linux.c_r8712_init_mlme_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_mlme_linux.c_r8712_init_mlme_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@join_timeout_handler = common dso_local global i32 0, align 4
@sitesurvey_ctrl_handler = common dso_local global i32 0, align 4
@_scan_timeout_handler = common dso_local global i32 0, align 4
@dhcp_timeout_handler = common dso_local global i32 0, align 4
@wdg_timeout_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_init_mlme_timer(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca %struct.mlme_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  %4 = load %struct._adapter*, %struct._adapter** %2, align 8
  %5 = getelementptr inbounds %struct._adapter, %struct._adapter* %4, i32 0, i32 0
  store %struct.mlme_priv* %5, %struct.mlme_priv** %3, align 8
  %6 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %7 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %6, i32 0, i32 4
  %8 = load i32, i32* @join_timeout_handler, align 4
  %9 = call i32 @timer_setup(i32* %7, i32 %8, i32 0)
  %10 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %11 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* @sitesurvey_ctrl_handler, align 4
  %14 = call i32 @timer_setup(i32* %12, i32 %13, i32 0)
  %15 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %16 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %15, i32 0, i32 2
  %17 = load i32, i32* @_scan_timeout_handler, align 4
  %18 = call i32 @timer_setup(i32* %16, i32 %17, i32 0)
  %19 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %20 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %19, i32 0, i32 1
  %21 = load i32, i32* @dhcp_timeout_handler, align 4
  %22 = call i32 @timer_setup(i32* %20, i32 %21, i32 0)
  %23 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %24 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %23, i32 0, i32 0
  %25 = load i32, i32* @wdg_timeout_handler, align 4
  %26 = call i32 @timer_setup(i32* %24, i32 %25, i32 0)
  ret void
}

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
