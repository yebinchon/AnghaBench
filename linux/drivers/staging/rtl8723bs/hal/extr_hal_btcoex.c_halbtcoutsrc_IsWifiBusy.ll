; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_btcoex.c_halbtcoutsrc_IsWifiBusy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_btcoex.c_halbtcoutsrc_IsWifiBusy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@WIFI_ASOC_STATE = common dso_local global i32 0, align 4
@WIFI_AP_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @halbtcoutsrc_IsWifiBusy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @halbtcoutsrc_IsWifiBusy(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.mlme_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %5 = load %struct.adapter*, %struct.adapter** %3, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 0
  store %struct.mlme_priv* %6, %struct.mlme_priv** %4, align 8
  %7 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %8 = load i32, i32* @WIFI_ASOC_STATE, align 4
  %9 = call i32 @check_fwstate(%struct.mlme_priv* %7, i32 %8)
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %13 = load i32, i32* @WIFI_AP_STATE, align 4
  %14 = call i32 @check_fwstate(%struct.mlme_priv* %12, i32 %13)
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %26

17:                                               ; preds = %11
  %18 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %19 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %26

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %1
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %23, %16
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
