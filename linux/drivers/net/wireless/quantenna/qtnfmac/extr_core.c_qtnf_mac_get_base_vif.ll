; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_mac_get_base_vif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_mac_get_base_vif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_vif = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.qtnf_wmac = type { %struct.qtnf_vif* }

@QTNF_PRIMARY_VIF_IDX = common dso_local global i64 0, align 8
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qtnf_vif* @qtnf_mac_get_base_vif(%struct.qtnf_wmac* %0) #0 {
  %2 = alloca %struct.qtnf_vif*, align 8
  %3 = alloca %struct.qtnf_wmac*, align 8
  %4 = alloca %struct.qtnf_vif*, align 8
  store %struct.qtnf_wmac* %0, %struct.qtnf_wmac** %3, align 8
  %5 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %6 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %5, i32 0, i32 0
  %7 = load %struct.qtnf_vif*, %struct.qtnf_vif** %6, align 8
  %8 = load i64, i64* @QTNF_PRIMARY_VIF_IDX, align 8
  %9 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %7, i64 %8
  store %struct.qtnf_vif* %9, %struct.qtnf_vif** %4, align 8
  %10 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %11 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NL80211_IFTYPE_UNSPECIFIED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.qtnf_vif* null, %struct.qtnf_vif** %2, align 8
  br label %19

17:                                               ; preds = %1
  %18 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  store %struct.qtnf_vif* %18, %struct.qtnf_vif** %2, align 8
  br label %19

19:                                               ; preds = %17, %16
  %20 = load %struct.qtnf_vif*, %struct.qtnf_vif** %2, align 8
  ret %struct.qtnf_vif* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
