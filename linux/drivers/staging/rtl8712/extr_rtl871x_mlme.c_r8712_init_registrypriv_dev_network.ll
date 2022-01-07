; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_init_registrypriv_dev_network.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_init_registrypriv_dev_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.eeprom_priv, %struct.registry_priv }
%struct.eeprom_priv = type { i32 }
%struct.registry_priv = type { i32, %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { %struct.TYPE_4__, i32, i32* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_init_registrypriv_dev_network(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca %struct.registry_priv*, align 8
  %4 = alloca %struct.eeprom_priv*, align 8
  %5 = alloca %struct.wlan_bssid_ex*, align 8
  %6 = alloca i32*, align 8
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  %7 = load %struct._adapter*, %struct._adapter** %2, align 8
  %8 = getelementptr inbounds %struct._adapter, %struct._adapter* %7, i32 0, i32 1
  store %struct.registry_priv* %8, %struct.registry_priv** %3, align 8
  %9 = load %struct._adapter*, %struct._adapter** %2, align 8
  %10 = getelementptr inbounds %struct._adapter, %struct._adapter* %9, i32 0, i32 0
  store %struct.eeprom_priv* %10, %struct.eeprom_priv** %4, align 8
  %11 = load %struct.registry_priv*, %struct.registry_priv** %3, align 8
  %12 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %11, i32 0, i32 1
  store %struct.wlan_bssid_ex* %12, %struct.wlan_bssid_ex** %5, align 8
  %13 = load %struct.eeprom_priv*, %struct.eeprom_priv** %4, align 8
  %14 = call i32* @myid(%struct.eeprom_priv* %13)
  store i32* %14, i32** %6, align 8
  %15 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %16 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @ETH_ALEN, align 4
  %20 = call i32 @memcpy(i32* %17, i32* %18, i32 %19)
  %21 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %22 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %21, i32 0, i32 1
  %23 = load %struct.registry_priv*, %struct.registry_priv** %3, align 8
  %24 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %23, i32 0, i32 0
  %25 = call i32 @memcpy(i32* %22, i32* %24, i32 4)
  %26 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %27 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 4, i32* %28, align 8
  %29 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %30 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 100, i32* %31, align 4
  %32 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %33 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %37 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %41 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %5, align 8
  %45 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  ret void
}

declare dso_local i32* @myid(%struct.eeprom_priv*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
