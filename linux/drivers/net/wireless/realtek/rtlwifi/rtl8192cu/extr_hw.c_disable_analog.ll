; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c_disable_analog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c_disable_analog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@REG_LDOA15_CTRL = common dso_local global i32 0, align 4
@REG_LDOV12D_CTRL = common dso_local global i32 0, align 4
@LDV12_EN = common dso_local global i32 0, align 4
@REG_SPS0_CTRL = common dso_local global i32 0, align 4
@APDM_HOST = common dso_local global i32 0, align 4
@AFSM_HSUS = common dso_local global i32 0, align 4
@PFM_ALDN = common dso_local global i32 0, align 4
@REG_APS_FSMCO = common dso_local global i32 0, align 4
@REG_RSV_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @disable_analog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_analog(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %14 = load i32, i32* @REG_LDOA15_CTRL, align 4
  %15 = call i32 @rtl_write_byte(%struct.rtl_priv* %13, i32 %14, i32 4)
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %17 = load i32, i32* @REG_LDOV12D_CTRL, align 4
  %18 = call i32 @rtl_read_byte(%struct.rtl_priv* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @LDV12_EN, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %24 = load i32, i32* @REG_LDOV12D_CTRL, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @rtl_write_byte(%struct.rtl_priv* %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %12, %2
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %29 = load i32, i32* @REG_SPS0_CTRL, align 4
  %30 = call i32 @rtl_write_byte(%struct.rtl_priv* %28, i32 %29, i32 35)
  %31 = load i32, i32* @APDM_HOST, align 4
  %32 = load i32, i32* @AFSM_HSUS, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @PFM_ALDN, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %39 = load i32, i32* @REG_APS_FSMCO, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @rtl_write_word(%struct.rtl_priv* %38, i32 %39, i32 %40)
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %43 = load i32, i32* @REG_RSV_CTRL, align 4
  %44 = call i32 @rtl_write_byte(%struct.rtl_priv* %42, i32 %43, i32 14)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
