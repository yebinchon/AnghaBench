; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c_rtl92cu_enable_hw_security_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c_rtl92cu_enable_hw_security_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 (%struct.ieee80211_hw*, i32, i32*)* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }
%struct.rtl_hal = type { i32 }

@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"PairwiseEncAlgorithm = %d GroupEncAlgorithm = %d\0A\00", align 1
@COMP_SEC = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"not open sw encryption\0A\00", align 1
@SCR_TXENCENABLE = common dso_local global i32 0, align 4
@SCR_RXDECENABLE = common dso_local global i32 0, align 4
@SCR_TXUSEDK = common dso_local global i32 0, align 4
@SCR_RXUSEDK = common dso_local global i32 0, align 4
@SCR_RXBCUSEDK = common dso_local global i32 0, align 4
@SCR_TXBCUSEDK = common dso_local global i32 0, align 4
@REG_CR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"The SECR-value %x\0A\00", align 1
@HW_VAR_WPA_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92cu_enable_hw_security_config(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_hal*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %9 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %8)
  store %struct.rtl_hal* %9, %struct.rtl_hal** %5, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %11 = load i32, i32* @COMP_INIT, align 4
  %12 = load i32, i32* @DBG_LOUD, align 4
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %14 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %10, i32 %11, i32 %12, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20)
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %23 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %1
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %32 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30, %1
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %38 = load i32, i32* @COMP_SEC, align 4
  %39 = load i32, i32* @DBG_DMESG, align 4
  %40 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %89

41:                                               ; preds = %30
  %42 = load i32, i32* @SCR_TXENCENABLE, align 4
  %43 = load i32, i32* @SCR_RXDECENABLE, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %4, align 4
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %46 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %41
  %51 = load i32, i32* @SCR_TXUSEDK, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* @SCR_RXUSEDK, align 4
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %50, %41
  %58 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %59 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @IS_NORMAL_CHIP(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i32, i32* @SCR_RXBCUSEDK, align 4
  %65 = load i32, i32* @SCR_TXBCUSEDK, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %63, %57
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %71 = load i64, i64* @REG_CR, align 8
  %72 = add nsw i64 %71, 1
  %73 = call i32 @rtl_write_byte(%struct.rtl_priv* %70, i64 %72, i32 2)
  %74 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %75 = load i32, i32* @COMP_SEC, align 4
  %76 = load i32, i32* @DBG_LOUD, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %74, i32 %75, i32 %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %80 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %84, align 8
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %87 = load i32, i32* @HW_VAR_WPA_CONFIG, align 4
  %88 = call i32 %85(%struct.ieee80211_hw* %86, i32 %87, i32* %4)
  br label %89

89:                                               ; preds = %69, %36
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i64 @IS_NORMAL_CHIP(i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
