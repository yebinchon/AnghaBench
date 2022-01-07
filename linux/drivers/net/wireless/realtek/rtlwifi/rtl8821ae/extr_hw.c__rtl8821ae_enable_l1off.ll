; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_enable_l1off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_enable_l1off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"--->\0A\00", align 1
@COMP_POWER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"0x160(%#x)return!!\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"<---\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl8821ae_enable_l1off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_enable_l1off(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %5)
  store %struct.rtl_priv* %6, %struct.rtl_priv** %4, align 8
  %7 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %8 = load i32, i32* @COMP_INIT, align 4
  %9 = load i32, i32* @DBG_LOUD, align 4
  %10 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %7, i32 %8, i32 %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %12 = call i32 @_rtl8821ae_dbi_read(%struct.rtl_priv* %11, i32 352)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @BIT(i32 2)
  %15 = call i32 @BIT(i32 3)
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %1
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %21 = load i32, i32* @COMP_POWER, align 4
  %22 = load i32, i32* @COMP_INIT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @DBG_LOUD, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %20, i32 %23, i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %46

27:                                               ; preds = %1
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %29 = call i32 @_rtl8821ae_mdio_read(%struct.rtl_priv* %28, i32 27)
  store i32 %29, i32* %3, align 4
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @BIT(i32 4)
  %33 = or i32 %31, %32
  %34 = call i32 @_rtl8821ae_mdio_write(%struct.rtl_priv* %30, i32 27, i32 %33)
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %36 = call i32 @_rtl8821ae_dbi_read(%struct.rtl_priv* %35, i32 1816)
  store i32 %36, i32* %3, align 4
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @BIT(i32 5)
  %40 = or i32 %38, %39
  %41 = call i32 @_rtl8821ae_dbi_write(%struct.rtl_priv* %37, i32 1816, i32 %40)
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %43 = load i32, i32* @COMP_INIT, align 4
  %44 = load i32, i32* @DBG_LOUD, align 4
  %45 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %42, i32 %43, i32 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %27, %19
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @_rtl8821ae_dbi_read(%struct.rtl_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @_rtl8821ae_mdio_read(%struct.rtl_priv*, i32) #1

declare dso_local i32 @_rtl8821ae_mdio_write(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @_rtl8821ae_dbi_write(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
