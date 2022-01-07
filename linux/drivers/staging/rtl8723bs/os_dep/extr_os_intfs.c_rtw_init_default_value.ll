; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_rtw_init_default_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_rtw_init_default_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, i64, i64, %struct.security_priv, %struct.mlme_priv, %struct.xmit_priv, %struct.registry_priv }
%struct.security_priv = type { i32, i32, i32, i8*, i64, i8*, i32, i32, i32, i8*, i8* }
%struct.mlme_priv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.xmit_priv = type { i32, i32, i32, i32 }
%struct.registry_priv = type { i32, i32, i32, i32, i32 }

@SCAN_ACTIVE = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i8* null, align 8
@dot11AuthAlgrthm_Open = common dso_local global i32 0, align 4
@_NO_PRIVACY_ = common dso_local global i8* null, align 8
@Ndis802_11AuthModeOpen = common dso_local global i32 0, align 4
@Ndis802_11WEPDisabled = common dso_local global i32 0, align 4
@DF_RX_BIT = common dso_local global i32 0, align 4
@DF_TX_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @rtw_init_default_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_init_default_value(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.registry_priv*, align 8
  %4 = alloca %struct.xmit_priv*, align 8
  %5 = alloca %struct.mlme_priv*, align 8
  %6 = alloca %struct.security_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 8
  store %struct.registry_priv* %8, %struct.registry_priv** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 7
  store %struct.xmit_priv* %10, %struct.xmit_priv** %4, align 8
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 6
  store %struct.mlme_priv* %12, %struct.mlme_priv** %5, align 8
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 5
  store %struct.security_priv* %14, %struct.security_priv** %6, align 8
  %15 = load %struct.registry_priv*, %struct.registry_priv** %3, align 8
  %16 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %19 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.registry_priv*, %struct.registry_priv** %3, align 8
  %21 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %24 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.registry_priv*, %struct.registry_priv** %3, align 8
  %26 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %29 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.registry_priv*, %struct.registry_priv** %3, align 8
  %31 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %34 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @SCAN_ACTIVE, align 4
  %36 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %37 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %39 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = load i8*, i8** @_FAIL, align 8
  %42 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %43 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %42, i32 0, i32 10
  store i8* %41, i8** %43, align 8
  %44 = load %struct.registry_priv*, %struct.registry_priv** %3, align 8
  %45 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %48 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 8
  %49 = load %struct.registry_priv*, %struct.registry_priv** %3, align 8
  %50 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %53 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @dot11AuthAlgrthm_Open, align 4
  %55 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %56 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 8
  %57 = load i8*, i8** @_NO_PRIVACY_, align 8
  %58 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %59 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  %60 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %61 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load i8*, i8** @_NO_PRIVACY_, align 8
  %63 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %64 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %66 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load i32, i32* @Ndis802_11AuthModeOpen, align 4
  %68 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %69 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @Ndis802_11WEPDisabled, align 4
  %71 = load %struct.security_priv*, %struct.security_priv** %6, align 8
  %72 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.adapter*, %struct.adapter** %2, align 8
  %74 = call i32 @rtw_init_registrypriv_dev_network(%struct.adapter* %73)
  %75 = load %struct.adapter*, %struct.adapter** %2, align 8
  %76 = call i32 @rtw_update_registrypriv_dev_network(%struct.adapter* %75)
  %77 = load %struct.adapter*, %struct.adapter** %2, align 8
  %78 = call i32 @rtw_hal_def_value_init(%struct.adapter* %77)
  %79 = load %struct.adapter*, %struct.adapter** %2, align 8
  %80 = load i32, i32* @DF_RX_BIT, align 4
  %81 = call i32 @RTW_ENABLE_FUNC(%struct.adapter* %79, i32 %80)
  %82 = load %struct.adapter*, %struct.adapter** %2, align 8
  %83 = load i32, i32* @DF_TX_BIT, align 4
  %84 = call i32 @RTW_ENABLE_FUNC(%struct.adapter* %82, i32 %83)
  %85 = load %struct.adapter*, %struct.adapter** %2, align 8
  %86 = getelementptr inbounds %struct.adapter, %struct.adapter* %85, i32 0, i32 4
  store i64 0, i64* %86, align 8
  %87 = load %struct.adapter*, %struct.adapter** %2, align 8
  %88 = getelementptr inbounds %struct.adapter, %struct.adapter* %87, i32 0, i32 3
  store i64 0, i64* %88, align 8
  %89 = load %struct.adapter*, %struct.adapter** %2, align 8
  %90 = getelementptr inbounds %struct.adapter, %struct.adapter* %89, i32 0, i32 0
  store i32 255, i32* %90, align 8
  %91 = load %struct.adapter*, %struct.adapter** %2, align 8
  %92 = getelementptr inbounds %struct.adapter, %struct.adapter* %91, i32 0, i32 1
  store i32 255, i32* %92, align 4
  %93 = load %struct.adapter*, %struct.adapter** %2, align 8
  %94 = getelementptr inbounds %struct.adapter, %struct.adapter* %93, i32 0, i32 2
  store i32 255, i32* %94, align 8
  ret void
}

declare dso_local i32 @rtw_init_registrypriv_dev_network(%struct.adapter*) #1

declare dso_local i32 @rtw_update_registrypriv_dev_network(%struct.adapter*) #1

declare dso_local i32 @rtw_hal_def_value_init(%struct.adapter*) #1

declare dso_local i32 @RTW_ENABLE_FUNC(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
