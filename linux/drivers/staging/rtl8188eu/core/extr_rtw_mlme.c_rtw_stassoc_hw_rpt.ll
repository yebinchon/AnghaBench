; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme.c_rtw_stassoc_hw_rpt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme.c_rtw_stassoc_hw_rpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sta_info = type { i32 }

@HW_VAR_TX_RPT_MAX_MACID = common dso_local global i32 0, align 4
@HW_VAR_H2C_MEDIA_STATUS_RPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_stassoc_hw_rpt(%struct.adapter* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  %7 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %8 = icmp ne %struct.sta_info* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %24

10:                                               ; preds = %2
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = call i32 @search_max_mac_id(%struct.adapter* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.adapter*, %struct.adapter** %3, align 8
  %14 = load i32, i32* @HW_VAR_TX_RPT_MAX_MACID, align 4
  %15 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %13, i32 %14, i32* %6)
  %16 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %17 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 8
  %20 = or i32 %19, 1
  store i32 %20, i32* %5, align 4
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = load i32, i32* @HW_VAR_H2C_MEDIA_STATUS_RPT, align 4
  %23 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %21, i32 %22, i32* %5)
  br label %24

24:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @search_max_mac_id(%struct.adapter*) #1

declare dso_local i32 @rtw_hal_set_hwreg(%struct.adapter*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
