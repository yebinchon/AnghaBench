; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_mac_get_free_vif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_mac_get_free_vif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_vif = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.qtnf_wmac = type { %struct.qtnf_vif* }

@QTNF_MAX_INTF = common dso_local global i32 0, align 4
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qtnf_vif* @qtnf_mac_get_free_vif(%struct.qtnf_wmac* %0) #0 {
  %2 = alloca %struct.qtnf_vif*, align 8
  %3 = alloca %struct.qtnf_wmac*, align 8
  %4 = alloca %struct.qtnf_vif*, align 8
  %5 = alloca i32, align 4
  store %struct.qtnf_wmac* %0, %struct.qtnf_wmac** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %26, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @QTNF_MAX_INTF, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %3, align 8
  %12 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %11, i32 0, i32 0
  %13 = load %struct.qtnf_vif*, %struct.qtnf_vif** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %13, i64 %15
  store %struct.qtnf_vif* %16, %struct.qtnf_vif** %4, align 8
  %17 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  %18 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NL80211_IFTYPE_UNSPECIFIED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %10
  %24 = load %struct.qtnf_vif*, %struct.qtnf_vif** %4, align 8
  store %struct.qtnf_vif* %24, %struct.qtnf_vif** %2, align 8
  br label %30

25:                                               ; preds = %10
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %6

29:                                               ; preds = %6
  store %struct.qtnf_vif* null, %struct.qtnf_vif** %2, align 8
  br label %30

30:                                               ; preds = %29, %23
  %31 = load %struct.qtnf_vif*, %struct.qtnf_vif** %2, align 8
  ret %struct.qtnf_vif* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
