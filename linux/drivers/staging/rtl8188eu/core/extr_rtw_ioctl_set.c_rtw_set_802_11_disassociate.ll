; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_ioctl_set.c_rtw_set_802_11_disassociate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_ioctl_set.c_rtw_set_802_11_disassociate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32 }

@_FW_LINKED = common dso_local global i32 0, align 4
@_module_rtl871x_ioctl_set_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"MgntActrtw_set_802_11_disassociate: rtw_indicate_disconnect\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_set_802_11_disassociate(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.mlme_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = getelementptr inbounds %struct.adapter, %struct.adapter* %4, i32 0, i32 0
  store %struct.mlme_priv* %5, %struct.mlme_priv** %3, align 8
  %6 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %7 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %10 = load i32, i32* @_FW_LINKED, align 4
  %11 = call i64 @check_fwstate(%struct.mlme_priv* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load i32, i32* @_module_rtl871x_ioctl_set_c_, align 4
  %15 = load i32, i32* @_drv_info_, align 4
  %16 = call i32 @RT_TRACE(i32 %14, i32 %15, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.adapter*, %struct.adapter** %2, align 8
  %18 = call i32 @rtw_disassoc_cmd(%struct.adapter* %17, i32 0, i32 1)
  %19 = load %struct.adapter*, %struct.adapter** %2, align 8
  %20 = call i32 @rtw_indicate_disconnect(%struct.adapter* %19)
  %21 = load %struct.adapter*, %struct.adapter** %2, align 8
  %22 = call i32 @rtw_free_assoc_resources(%struct.adapter* %21)
  %23 = load %struct.adapter*, %struct.adapter** %2, align 8
  %24 = call i32 @rtw_pwr_wakeup(%struct.adapter* %23)
  br label %25

25:                                               ; preds = %13, %1
  %26 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %27 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock_bh(i32* %27)
  ret i32 1
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @rtw_disassoc_cmd(%struct.adapter*, i32, i32) #1

declare dso_local i32 @rtw_indicate_disconnect(%struct.adapter*) #1

declare dso_local i32 @rtw_free_assoc_resources(%struct.adapter*) #1

declare dso_local i32 @rtw_pwr_wakeup(%struct.adapter*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
