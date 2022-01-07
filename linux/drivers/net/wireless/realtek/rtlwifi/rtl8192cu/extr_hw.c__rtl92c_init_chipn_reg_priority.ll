; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__rtl92c_init_chipn_reg_priority.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__rtl92c_init_chipn_reg_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@REG_TRXDMA_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32, i32, i32, i32, i32)* @_rtl92c_init_chipn_reg_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92c_init_chipn_reg_priority(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rtl_priv*, align 8
  %16 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %18 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %17)
  store %struct.rtl_priv* %18, %struct.rtl_priv** %15, align 8
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %20 = load i32, i32* @REG_TRXDMA_CTRL, align 4
  %21 = call i32 @rtl_read_word(%struct.rtl_priv* %19, i32 %20)
  %22 = and i32 %21, 7
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @_TXDMA_BEQ_MAP(i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @_TXDMA_BKQ_MAP(i32 %25)
  %27 = or i32 %24, %26
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @_TXDMA_VIQ_MAP(i32 %28)
  %30 = or i32 %27, %29
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @_TXDMA_VOQ_MAP(i32 %31)
  %33 = or i32 %30, %32
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @_TXDMA_MGQ_MAP(i32 %34)
  %36 = or i32 %33, %35
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @_TXDMA_HIQ_MAP(i32 %37)
  %39 = or i32 %36, %38
  %40 = load i32, i32* %16, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %16, align 4
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %43 = load i32, i32* @REG_TRXDMA_CTRL, align 4
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @rtl_write_word(%struct.rtl_priv* %42, i32 %43, i32 %44)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_word(%struct.rtl_priv*, i32) #1

declare dso_local i32 @_TXDMA_BEQ_MAP(i32) #1

declare dso_local i32 @_TXDMA_BKQ_MAP(i32) #1

declare dso_local i32 @_TXDMA_VIQ_MAP(i32) #1

declare dso_local i32 @_TXDMA_VOQ_MAP(i32) #1

declare dso_local i32 @_TXDMA_MGQ_MAP(i32) #1

declare dso_local i32 @_TXDMA_HIQ_MAP(i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
