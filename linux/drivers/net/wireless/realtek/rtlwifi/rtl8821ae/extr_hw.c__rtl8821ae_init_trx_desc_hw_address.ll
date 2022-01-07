; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_init_trx_desc_hw_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_init_trx_desc_hw_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_pci = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@REG_BCNQ_DESA = common dso_local global i32 0, align 4
@BEACON_QUEUE = common dso_local global i64 0, align 8
@REG_MGQ_DESA = common dso_local global i32 0, align 4
@MGNT_QUEUE = common dso_local global i64 0, align 8
@REG_VOQ_DESA = common dso_local global i32 0, align 4
@VO_QUEUE = common dso_local global i64 0, align 8
@REG_VIQ_DESA = common dso_local global i32 0, align 4
@VI_QUEUE = common dso_local global i64 0, align 8
@REG_BEQ_DESA = common dso_local global i32 0, align 4
@BE_QUEUE = common dso_local global i64 0, align 8
@REG_BKQ_DESA = common dso_local global i32 0, align 4
@BK_QUEUE = common dso_local global i64 0, align 8
@REG_HQ_DESA = common dso_local global i32 0, align 4
@HIGH_QUEUE = common dso_local global i64 0, align 8
@REG_RX_DESA = common dso_local global i32 0, align 4
@RX_MPDU_QUEUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl8821ae_init_trx_desc_hw_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_init_trx_desc_hw_address(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_pci*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %5)
  store %struct.rtl_priv* %6, %struct.rtl_priv** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %7)
  %9 = call %struct.rtl_pci* @rtl_pcidev(i32 %8)
  store %struct.rtl_pci* %9, %struct.rtl_pci** %4, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %11 = load i32, i32* @REG_BCNQ_DESA, align 4
  %12 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %13 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i64, i64* @BEACON_QUEUE, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @DMA_BIT_MASK(i32 32)
  %20 = and i32 %18, %19
  %21 = call i32 @rtl_write_dword(%struct.rtl_priv* %10, i32 %11, i32 %20)
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %23 = load i32, i32* @REG_MGQ_DESA, align 4
  %24 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %25 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i64, i64* @MGNT_QUEUE, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @DMA_BIT_MASK(i32 32)
  %32 = and i32 %30, %31
  %33 = call i32 @rtl_write_dword(%struct.rtl_priv* %22, i32 %23, i32 %32)
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %35 = load i32, i32* @REG_VOQ_DESA, align 4
  %36 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %37 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i64, i64* @VO_QUEUE, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @DMA_BIT_MASK(i32 32)
  %44 = and i32 %42, %43
  %45 = call i32 @rtl_write_dword(%struct.rtl_priv* %34, i32 %35, i32 %44)
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %47 = load i32, i32* @REG_VIQ_DESA, align 4
  %48 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %49 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i64, i64* @VI_QUEUE, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @DMA_BIT_MASK(i32 32)
  %56 = and i32 %54, %55
  %57 = call i32 @rtl_write_dword(%struct.rtl_priv* %46, i32 %47, i32 %56)
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %59 = load i32, i32* @REG_BEQ_DESA, align 4
  %60 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %61 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i64, i64* @BE_QUEUE, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @DMA_BIT_MASK(i32 32)
  %68 = and i32 %66, %67
  %69 = call i32 @rtl_write_dword(%struct.rtl_priv* %58, i32 %59, i32 %68)
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %71 = load i32, i32* @REG_BKQ_DESA, align 4
  %72 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %73 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i64, i64* @BK_QUEUE, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @DMA_BIT_MASK(i32 32)
  %80 = and i32 %78, %79
  %81 = call i32 @rtl_write_dword(%struct.rtl_priv* %70, i32 %71, i32 %80)
  %82 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %83 = load i32, i32* @REG_HQ_DESA, align 4
  %84 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %85 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i64, i64* @HIGH_QUEUE, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @DMA_BIT_MASK(i32 32)
  %92 = and i32 %90, %91
  %93 = call i32 @rtl_write_dword(%struct.rtl_priv* %82, i32 %83, i32 %92)
  %94 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %95 = load i32, i32* @REG_RX_DESA, align 4
  %96 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %97 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i64, i64* @RX_MPDU_QUEUE, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @DMA_BIT_MASK(i32 32)
  %104 = and i32 %102, %103
  %105 = call i32 @rtl_write_dword(%struct.rtl_priv* %94, i32 %95, i32 %104)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
