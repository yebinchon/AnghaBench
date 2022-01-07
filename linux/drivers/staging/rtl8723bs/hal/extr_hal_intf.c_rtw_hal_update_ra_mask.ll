; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_intf.c_rtw_hal_update_ra_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_intf.c_rtw_hal_update_ra_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32, %struct.adapter* }
%struct.adapter = type { %struct.TYPE_2__, %struct.mlme_priv }
%struct.TYPE_2__ = type { i32 (%struct.adapter*, i32, i32)* }
%struct.mlme_priv = type { i32 }

@WIFI_AP_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_hal_update_ra_mask(%struct.sta_info* %0, i32 %1) #0 {
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.mlme_priv*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %8 = icmp ne %struct.sta_info* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %43

10:                                               ; preds = %2
  %11 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %12 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %11, i32 0, i32 1
  %13 = load %struct.adapter*, %struct.adapter** %12, align 8
  store %struct.adapter* %13, %struct.adapter** %5, align 8
  %14 = load %struct.adapter*, %struct.adapter** %5, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 1
  store %struct.mlme_priv* %15, %struct.mlme_priv** %6, align 8
  %16 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %17 = load i32, i32* @WIFI_AP_STATE, align 4
  %18 = call i32 @check_fwstate(%struct.mlme_priv* %16, i32 %17)
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %25

20:                                               ; preds = %10
  %21 = load %struct.adapter*, %struct.adapter** %5, align 8
  %22 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @add_RATid(%struct.adapter* %21, %struct.sta_info* %22, i32 %23)
  br label %43

25:                                               ; preds = %10
  %26 = load %struct.adapter*, %struct.adapter** %5, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.adapter*, i32, i32)*, i32 (%struct.adapter*, i32, i32)** %28, align 8
  %30 = icmp ne i32 (%struct.adapter*, i32, i32)* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.adapter*, %struct.adapter** %5, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.adapter*, i32, i32)*, i32 (%struct.adapter*, i32, i32)** %34, align 8
  %36 = load %struct.adapter*, %struct.adapter** %5, align 8
  %37 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %38 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 %35(%struct.adapter* %36, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %31, %25
  br label %43

43:                                               ; preds = %9, %42, %20
  ret void
}

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @add_RATid(%struct.adapter*, %struct.sta_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
