; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c_rtl8821ae_enable_hw_security_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c_rtl8821ae_enable_hw_security_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 (%struct.ieee80211_hw*, i32, i32*)* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }

@COMP_INIT = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"PairwiseEncAlgorithm = %d GroupEncAlgorithm = %d\0A\00", align 1
@COMP_SEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"not open hw encryption\0A\00", align 1
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
define dso_local void @rtl8821ae_enable_hw_security_config(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %9 = load i32, i32* @COMP_INIT, align 4
  %10 = load i32, i32* @DBG_DMESG, align 4
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %12 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %16 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %8, i32 %9, i32 %10, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %18)
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %21 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %1
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28, %1
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %36 = load i32, i32* @COMP_SEC, align 4
  %37 = load i32, i32* @DBG_DMESG, align 4
  %38 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %87

39:                                               ; preds = %28
  %40 = load i32, i32* @SCR_TXENCENABLE, align 4
  %41 = load i32, i32* @SCR_RXDECENABLE, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %4, align 4
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %44 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %39
  %49 = load i32, i32* @SCR_TXUSEDK, align 4
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* @SCR_RXUSEDK, align 4
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %48, %39
  %56 = load i32, i32* @SCR_RXBCUSEDK, align 4
  %57 = load i32, i32* @SCR_TXBCUSEDK, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %4, align 4
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %62 = load i64, i64* @REG_CR, align 8
  %63 = add nsw i64 %62, 1
  %64 = call i32 @rtl_read_byte(%struct.rtl_priv* %61, i64 %63)
  store i32 %64, i32* %5, align 4
  %65 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %66 = load i64, i64* @REG_CR, align 8
  %67 = add nsw i64 %66, 1
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @BIT(i32 1)
  %70 = or i32 %68, %69
  %71 = call i32 @rtl_write_byte(%struct.rtl_priv* %65, i64 %67, i32 %70)
  %72 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %73 = load i32, i32* @COMP_SEC, align 4
  %74 = load i32, i32* @DBG_DMESG, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %72, i32 %73, i32 %74, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %78 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %82, align 8
  %84 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %85 = load i32, i32* @HW_VAR_WPA_CONFIG, align 4
  %86 = call i32 %83(%struct.ieee80211_hw* %84, i32 %85, i32* %4)
  br label %87

87:                                               ; preds = %55, %34
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i64) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
