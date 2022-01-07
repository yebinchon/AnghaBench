; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_fw.c__rtl92s_firmware_enable_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_fw.c__rtl92s_firmware_enable_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@SYS_CLKR = common dso_local global i32 0, align 4
@SYS_CPU_CLKSEL = common dso_local global i32 0, align 4
@REG_SYS_FUNC_EN = common dso_local global i32 0, align 4
@FEN_CPUEN = common dso_local global i32 0, align 4
@TCR = common dso_local global i32 0, align 4
@IMEM_RDY = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"IMEM Ready after CPU has refilled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl92s_firmware_enable_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92s_firmware_enable_cpu(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %4, align 8
  store i32 200, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call i32 @_rtl92s_fw_set_rqpn(%struct.ieee80211_hw* %11)
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %14 = load i32, i32* @SYS_CLKR, align 4
  %15 = call i32 @rtl_read_byte(%struct.rtl_priv* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %17 = load i32, i32* @SYS_CLKR, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @SYS_CPU_CLKSEL, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @rtl_write_byte(%struct.rtl_priv* %16, i32 %17, i32 %20)
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %23 = load i32, i32* @REG_SYS_FUNC_EN, align 4
  %24 = call i32 @rtl_read_word(%struct.rtl_priv* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %26 = load i32, i32* @REG_SYS_FUNC_EN, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @FEN_CPUEN, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @rtl_write_word(%struct.rtl_priv* %25, i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %46, %1
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %33 = load i32, i32* @TCR, align 4
  %34 = call i32 @rtl_read_byte(%struct.rtl_priv* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @IMEM_RDY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %41 = load i32, i32* @COMP_INIT, align 4
  %42 = load i32, i32* @DBG_LOUD, align 4
  %43 = call i32 @RT_TRACE(%struct.rtl_priv* %40, i32 %41, i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %50

44:                                               ; preds = %31
  %45 = call i32 @udelay(i32 100)
  br label %46

46:                                               ; preds = %44
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %5, align 4
  %49 = icmp ne i32 %47, 0
  br i1 %49, label %31, label %50

50:                                               ; preds = %46, %39
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @IMEM_RDY, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %57

56:                                               ; preds = %50
  store i32 1, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92s_fw_set_rqpn(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_read_word(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
