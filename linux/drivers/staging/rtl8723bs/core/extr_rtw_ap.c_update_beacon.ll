; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ap.c_update_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ap.c_update_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv, %struct.mlme_priv }
%struct.mlme_ext_priv = type { i32 }
%struct.mlme_priv = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_beacon(%struct.adapter* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlme_priv*, align 8
  %10 = alloca %struct.mlme_ext_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.adapter*, %struct.adapter** %5, align 8
  %12 = icmp ne %struct.adapter* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %63

14:                                               ; preds = %4
  %15 = load %struct.adapter*, %struct.adapter** %5, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 1
  store %struct.mlme_priv* %16, %struct.mlme_priv** %9, align 8
  %17 = load %struct.adapter*, %struct.adapter** %5, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  store %struct.mlme_ext_priv* %18, %struct.mlme_ext_priv** %10, align 8
  %19 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %10, align 8
  %20 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  br label %63

24:                                               ; preds = %14
  %25 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %26 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %25, i32 0, i32 1
  %27 = call i32 @spin_lock_bh(i32* %26)
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %51 [
    i32 255, label %29
    i32 129, label %32
    i32 133, label %35
    i32 131, label %38
    i32 130, label %41
    i32 132, label %44
    i32 128, label %47
  ]

29:                                               ; preds = %24
  %30 = load %struct.adapter*, %struct.adapter** %5, align 8
  %31 = call i32 @update_bcn_fixed_ie(%struct.adapter* %30)
  br label %52

32:                                               ; preds = %24
  %33 = load %struct.adapter*, %struct.adapter** %5, align 8
  %34 = call i32 @update_BCNTIM(%struct.adapter* %33)
  br label %52

35:                                               ; preds = %24
  %36 = load %struct.adapter*, %struct.adapter** %5, align 8
  %37 = call i32 @update_bcn_erpinfo_ie(%struct.adapter* %36)
  br label %52

38:                                               ; preds = %24
  %39 = load %struct.adapter*, %struct.adapter** %5, align 8
  %40 = call i32 @update_bcn_htcap_ie(%struct.adapter* %39)
  br label %52

41:                                               ; preds = %24
  %42 = load %struct.adapter*, %struct.adapter** %5, align 8
  %43 = call i32 @update_bcn_rsn_ie(%struct.adapter* %42)
  br label %52

44:                                               ; preds = %24
  %45 = load %struct.adapter*, %struct.adapter** %5, align 8
  %46 = call i32 @update_bcn_htinfo_ie(%struct.adapter* %45)
  br label %52

47:                                               ; preds = %24
  %48 = load %struct.adapter*, %struct.adapter** %5, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @update_bcn_vendor_spec_ie(%struct.adapter* %48, i32* %49)
  br label %52

51:                                               ; preds = %24
  br label %52

52:                                               ; preds = %51, %47, %44, %41, %38, %35, %32, %29
  %53 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %54 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  %55 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %56 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %55, i32 0, i32 1
  %57 = call i32 @spin_unlock_bh(i32* %56)
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load %struct.adapter*, %struct.adapter** %5, align 8
  %62 = call i32 @set_tx_beacon_cmd(%struct.adapter* %61)
  br label %63

63:                                               ; preds = %13, %23, %60, %52
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @update_bcn_fixed_ie(%struct.adapter*) #1

declare dso_local i32 @update_BCNTIM(%struct.adapter*) #1

declare dso_local i32 @update_bcn_erpinfo_ie(%struct.adapter*) #1

declare dso_local i32 @update_bcn_htcap_ie(%struct.adapter*) #1

declare dso_local i32 @update_bcn_rsn_ie(%struct.adapter*) #1

declare dso_local i32 @update_bcn_htinfo_ie(%struct.adapter*) #1

declare dso_local i32 @update_bcn_vendor_spec_ie(%struct.adapter*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @set_tx_beacon_cmd(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
