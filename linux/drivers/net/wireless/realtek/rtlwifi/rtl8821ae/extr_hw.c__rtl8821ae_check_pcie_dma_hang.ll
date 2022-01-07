; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_check_pcie_dma_hang.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_check_pcie_dma_hang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@REG_DBI_CTRL = common dso_local global i64 0, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"CheckPcieDMAHang8821AE(): true! Reset PCIE DMA!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl8821ae_check_pcie_dma_hang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8821ae_check_pcie_dma_hang(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %4, align 8
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %9 = load i64, i64* @REG_DBI_CTRL, align 8
  %10 = add nsw i64 %9, 3
  %11 = call i32 @rtl_read_byte(%struct.rtl_priv* %8, i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @BIT(i32 2)
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %1
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %18 = load i64, i64* @REG_DBI_CTRL, align 8
  %19 = add nsw i64 %18, 3
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @BIT(i32 2)
  %22 = or i32 %20, %21
  %23 = call i32 @rtl_write_byte(%struct.rtl_priv* %17, i64 %19, i32 %22)
  %24 = call i32 @mdelay(i32 100)
  br label %25

25:                                               ; preds = %16, %1
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %27 = load i64, i64* @REG_DBI_CTRL, align 8
  %28 = add nsw i64 %27, 3
  %29 = call i32 @rtl_read_byte(%struct.rtl_priv* %26, i64 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @BIT(i32 0)
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @BIT(i32 1)
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34, %25
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %41 = load i32, i32* @COMP_INIT, align 4
  %42 = load i32, i32* @DBG_LOUD, align 4
  %43 = call i32 @RT_TRACE(%struct.rtl_priv* %40, i32 %41, i32 %42, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %45

44:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
