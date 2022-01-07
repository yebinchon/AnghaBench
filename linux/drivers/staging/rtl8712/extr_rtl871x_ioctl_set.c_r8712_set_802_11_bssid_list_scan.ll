; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_set.c_r8712_set_802_11_bssid_list_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_set.c_r8712_set_802_11_bssid_list_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32, %struct.mlme_priv }
%struct.mlme_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@_FW_UNDER_SURVEY = common dso_local global i32 0, align 4
@_FW_UNDER_LINKING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_set_802_11_bssid_list_scan(%struct._adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.mlme_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store %struct.mlme_priv* null, %struct.mlme_priv** %4, align 8
  store i32 1, i32* %6, align 4
  %7 = load %struct._adapter*, %struct._adapter** %3, align 8
  %8 = icmp ne %struct._adapter* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

10:                                               ; preds = %1
  %11 = load %struct._adapter*, %struct._adapter** %3, align 8
  %12 = getelementptr inbounds %struct._adapter, %struct._adapter* %11, i32 0, i32 1
  store %struct.mlme_priv* %12, %struct.mlme_priv** %4, align 8
  %13 = load %struct._adapter*, %struct._adapter** %3, align 8
  %14 = getelementptr inbounds %struct._adapter, %struct._adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %51

18:                                               ; preds = %10
  %19 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %20 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %24 = load i32, i32* @_FW_UNDER_SURVEY, align 4
  %25 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %26 = or i32 %24, %25
  %27 = call i64 @check_fwstate(%struct.mlme_priv* %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %18
  %30 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %31 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29, %18
  %36 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %37 = load i32, i32* @_FW_UNDER_SURVEY, align 4
  %38 = call i64 @check_fwstate(%struct.mlme_priv* %36, i32 %37)
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %6, align 4
  br label %45

40:                                               ; preds = %29
  %41 = load %struct._adapter*, %struct._adapter** %3, align 8
  %42 = call i32 @r8712_free_network_queue(%struct._adapter* %41)
  %43 = load %struct._adapter*, %struct._adapter** %3, align 8
  %44 = call i32 @r8712_sitesurvey_cmd(%struct._adapter* %43, i32* null)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %47 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %46, i32 0, i32 0
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %45, %17, %9
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @r8712_free_network_queue(%struct._adapter*) #1

declare dso_local i32 @r8712_sitesurvey_cmd(%struct._adapter*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
