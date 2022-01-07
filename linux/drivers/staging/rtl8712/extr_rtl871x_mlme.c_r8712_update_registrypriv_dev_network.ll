; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_update_registrypriv_dev_network.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_update_registrypriv_dev_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_4__, %struct.security_priv, %struct.registry_priv }
%struct.TYPE_4__ = type { %struct.wlan_network }
%struct.wlan_network = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.security_priv = type { i64 }
%struct.registry_priv = type { i32, i32, %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i64, i32, i32, %struct.TYPE_5__, i32, i64, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@Ndis802_11DS = common dso_local global i32 0, align 4
@Ndis802_11OFDM24 = common dso_local global i32 0, align 4
@Ndis802_11OFDM5 = common dso_local global i32 0, align 4
@Ndis802_11IBSS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_update_registrypriv_dev_network(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.registry_priv*, align 8
  %5 = alloca %struct.wlan_bssid_ex*, align 8
  %6 = alloca %struct.security_priv*, align 8
  %7 = alloca %struct.wlan_network*, align 8
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct._adapter*, %struct._adapter** %2, align 8
  %9 = getelementptr inbounds %struct._adapter, %struct._adapter* %8, i32 0, i32 2
  store %struct.registry_priv* %9, %struct.registry_priv** %4, align 8
  %10 = load %struct.registry_priv*, %struct.registry_priv** %4, align 8
  %11 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %10, i32 0, i32 2
  store %struct.wlan_bssid_ex* %11, %struct.wlan_bssid_ex** %5, align 8
  %12 = load %struct._adapter*, %struct._adapter** %2, align 8
  %13 = getelementptr inbounds %struct._adapter, %struct._adapter* %12, i32 0, i32 1
  store %struct.security_priv* %13, %struct.security_priv** %6, align 8
  %14 = load %struct._adapter*, %struct._adapter** %2, align 8
  %15 = getelementptr inbounds %struct._adapter, %struct._adapter* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.wlan_network* %16, %struct.wlan_network** %7, align 8
  %17 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %18 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  %23 = call i32 @cpu_to_le32(i32 %22)
  %24 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %25 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  %26 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %27 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %26, i32 0, i32 5
  store i64 0, i64* %27, align 8
  %28 = load %struct.registry_priv*, %struct.registry_priv** %4, align 8
  %29 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %43 [
    i32 130, label %31
    i32 128, label %35
    i32 129, label %35
    i32 131, label %39
  ]

31:                                               ; preds = %1
  %32 = load i32, i32* @Ndis802_11DS, align 4
  %33 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %34 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  br label %44

35:                                               ; preds = %1, %1
  %36 = load i32, i32* @Ndis802_11OFDM24, align 4
  %37 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %38 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  br label %44

39:                                               ; preds = %1
  %40 = load i32, i32* @Ndis802_11OFDM5, align 4
  %41 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %42 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  br label %44

43:                                               ; preds = %1
  br label %44

44:                                               ; preds = %43, %39, %35, %31
  %45 = load %struct.registry_priv*, %struct.registry_priv** %4, align 8
  %46 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %49 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.wlan_network*, %struct.wlan_network** %7, align 8
  %52 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @Ndis802_11IBSS, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %44
  %58 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %59 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 3, i32* %60, align 8
  br label %61

61:                                               ; preds = %57, %44
  %62 = load %struct.wlan_network*, %struct.wlan_network** %7, align 8
  %63 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %67 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.registry_priv*, %struct.registry_priv** %4, align 8
  %69 = call i32 @r8712_generate_ie(%struct.registry_priv* %68)
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %72 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %74 = call i32 @r8712_get_wlan_bssid_ex_sz(%struct.wlan_bssid_ex* %73)
  %75 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %76 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @r8712_generate_ie(%struct.registry_priv*) #1

declare dso_local i32 @r8712_get_wlan_bssid_ex_sz(%struct.wlan_bssid_ex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
