; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_update_registrypriv_dev_network.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_update_registrypriv_dev_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__, %struct.security_priv, %struct.registry_priv }
%struct.TYPE_4__ = type { %struct.wlan_network }
%struct.wlan_network = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.security_priv = type { i64 }
%struct.registry_priv = type { i32, i32, %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i32, i64, i32, i32, %struct.TYPE_5__, i8*, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@Ndis802_11DS = common dso_local global i8* null, align 8
@Ndis802_11OFDM24 = common dso_local global i8* null, align 8
@Ndis802_11OFDM5 = common dso_local global i8* null, align 8
@_module_rtl871x_mlme_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"pregistrypriv->channel =%d, pdev_network->Configuration.DSConfig = 0x%x\0A\00", align 1
@Ndis802_11IBSS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_update_registrypriv_dev_network(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.registry_priv*, align 8
  %5 = alloca %struct.wlan_bssid_ex*, align 8
  %6 = alloca %struct.security_priv*, align 8
  %7 = alloca %struct.wlan_network*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 2
  store %struct.registry_priv* %9, %struct.registry_priv** %4, align 8
  %10 = load %struct.registry_priv*, %struct.registry_priv** %4, align 8
  %11 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %10, i32 0, i32 2
  store %struct.wlan_bssid_ex* %11, %struct.wlan_bssid_ex** %5, align 8
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 1
  store %struct.security_priv* %13, %struct.security_priv** %6, align 8
  %14 = load %struct.adapter*, %struct.adapter** %2, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.wlan_network* %16, %struct.wlan_network** %7, align 8
  %17 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %18 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  %23 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %24 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %26 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %25, i32 0, i32 6
  store i64 0, i64* %26, align 8
  %27 = load %struct.registry_priv*, %struct.registry_priv** %4, align 8
  %28 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %56 [
    i32 133, label %30
    i32 130, label %34
    i32 132, label %34
    i32 128, label %34
    i32 129, label %34
    i32 131, label %34
    i32 136, label %38
    i32 134, label %38
    i32 135, label %42
  ]

30:                                               ; preds = %1
  %31 = load i8*, i8** @Ndis802_11DS, align 8
  %32 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %33 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %32, i32 0, i32 5
  store i8* %31, i8** %33, align 8
  br label %57

34:                                               ; preds = %1, %1, %1, %1, %1
  %35 = load i8*, i8** @Ndis802_11OFDM24, align 8
  %36 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %37 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  br label %57

38:                                               ; preds = %1, %1
  %39 = load i8*, i8** @Ndis802_11OFDM5, align 8
  %40 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %41 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  br label %57

42:                                               ; preds = %1
  %43 = load %struct.registry_priv*, %struct.registry_priv** %4, align 8
  %44 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 14
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i8*, i8** @Ndis802_11OFDM5, align 8
  %49 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %50 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %49, i32 0, i32 5
  store i8* %48, i8** %50, align 8
  br label %55

51:                                               ; preds = %42
  %52 = load i8*, i8** @Ndis802_11OFDM24, align 8
  %53 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %54 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %53, i32 0, i32 5
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %51, %47
  br label %57

56:                                               ; preds = %1
  br label %57

57:                                               ; preds = %56, %55, %38, %34, %30
  %58 = load %struct.registry_priv*, %struct.registry_priv** %4, align 8
  %59 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %62 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %65 = load i32, i32* @_drv_info_, align 4
  %66 = load %struct.registry_priv*, %struct.registry_priv** %4, align 8
  %67 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %70 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = call i32 @RT_TRACE(i32 %64, i32 %65, i8* %74)
  %76 = load %struct.wlan_network*, %struct.wlan_network** %7, align 8
  %77 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @Ndis802_11IBSS, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %57
  %83 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %84 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %82, %57
  %87 = load %struct.wlan_network*, %struct.wlan_network** %7, align 8
  %88 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %92 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  %93 = load %struct.registry_priv*, %struct.registry_priv** %4, align 8
  %94 = call i32 @rtw_generate_ie(%struct.registry_priv* %93)
  store i32 %94, i32* %3, align 4
  %95 = load i32, i32* %3, align 4
  %96 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %97 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %99 = call i32 @get_wlan_bssid_ex_sz(%struct.wlan_bssid_ex* %98)
  %100 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %101 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  ret void
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @rtw_generate_ie(%struct.registry_priv*) #1

declare dso_local i32 @get_wlan_bssid_ex_sz(%struct.wlan_bssid_ex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
