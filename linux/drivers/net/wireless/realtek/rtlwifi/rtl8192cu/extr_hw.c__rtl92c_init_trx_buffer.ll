; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__rtl92c_init_trx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__rtl92c_init_trx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i32 }

@TX_PAGE_BOUNDARY = common dso_local global i32 0, align 4
@WMM_CHIP_B_TX_PAGE_BOUNDARY = common dso_local global i32 0, align 4
@WMM_CHIP_A_TX_PAGE_BOUNDARY = common dso_local global i32 0, align 4
@REG_TXPKTBUF_BCNQ_BDNY = common dso_local global i64 0, align 8
@REG_TXPKTBUF_MGQ_BDNY = common dso_local global i64 0, align 8
@REG_TXPKTBUF_WMAC_LBK_BF_HD = common dso_local global i64 0, align 8
@REG_TRXFF_BNDY = common dso_local global i64 0, align 8
@REG_TDECTRL = common dso_local global i64 0, align 8
@RX_PAGE_SIZE_REG_VALUE = common dso_local global i32 0, align 4
@PBP_128 = common dso_local global i32 0, align 4
@REG_PBP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @_rtl92c_init_trx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92c_init_trx_buffer(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %5, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %12)
  store %struct.rtl_hal* %13, %struct.rtl_hal** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @TX_PAGE_BOUNDARY, align 4
  store i32 %17, i32* %7, align 4
  br label %30

18:                                               ; preds = %2
  %19 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %20 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @IS_NORMAL_CHIP(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @WMM_CHIP_B_TX_PAGE_BOUNDARY, align 4
  br label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @WMM_CHIP_A_TX_PAGE_BOUNDARY, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %28, %16
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %32 = load i64, i64* @REG_TXPKTBUF_BCNQ_BDNY, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @rtl_write_byte(%struct.rtl_priv* %31, i64 %32, i32 %33)
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %36 = load i64, i64* @REG_TXPKTBUF_MGQ_BDNY, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @rtl_write_byte(%struct.rtl_priv* %35, i64 %36, i32 %37)
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %40 = load i64, i64* @REG_TXPKTBUF_WMAC_LBK_BF_HD, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @rtl_write_byte(%struct.rtl_priv* %39, i64 %40, i32 %41)
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %44 = load i64, i64* @REG_TRXFF_BNDY, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @rtl_write_byte(%struct.rtl_priv* %43, i64 %44, i32 %45)
  %47 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %48 = load i64, i64* @REG_TDECTRL, align 8
  %49 = add nsw i64 %48, 1
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @rtl_write_byte(%struct.rtl_priv* %47, i64 %49, i32 %50)
  %52 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %53 = load i64, i64* @REG_TRXFF_BNDY, align 8
  %54 = add nsw i64 %53, 2
  %55 = call i32 @rtl_write_word(%struct.rtl_priv* %52, i64 %54, i32 10239)
  %56 = load i32, i32* @RX_PAGE_SIZE_REG_VALUE, align 4
  %57 = call i32 @_PSRX(i32 %56)
  %58 = load i32, i32* @PBP_128, align 4
  %59 = call i32 @_PSTX(i32 %58)
  %60 = or i32 %57, %59
  store i32 %60, i32* %8, align 4
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %62 = load i64, i64* @REG_PBP, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @rtl_write_byte(%struct.rtl_priv* %61, i64 %62, i32 %63)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i64 @IS_NORMAL_CHIP(i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @_PSRX(i32) #1

declare dso_local i32 @_PSTX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
