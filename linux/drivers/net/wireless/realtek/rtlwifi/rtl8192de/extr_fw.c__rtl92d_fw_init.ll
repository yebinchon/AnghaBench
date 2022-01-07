; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_fw.c__rtl92d_fw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_fw.c__rtl92d_fw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i64 }

@COMP_FW = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"FW already have download\0A\00", align 1
@FW_MAC0_READY = common dso_local global i32 0, align 4
@MAC0_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Polling FW ready success!! REG_MCUFWDL: 0x%x\0A\00", align 1
@FW_MAC1_READY = common dso_local global i32 0, align 4
@MAC1_READY = common dso_local global i32 0, align 4
@POLLING_READY_TIMEOUT_COUNT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"Polling FW ready fail!! MAC0 FW init not ready: 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Polling FW ready fail!! MAC1 FW init not ready: 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Polling FW ready fail!! REG_MCUFWDL:0x%08x\0A\00", align 1
@REG_MCUFWDL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl92d_fw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92d_fw_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.rtl_hal*, align 8
  %6 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %4, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  %11 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %10)
  store %struct.rtl_hal* %11, %struct.rtl_hal** %5, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %13 = load i32, i32* @COMP_FW, align 4
  %14 = load i32, i32* @DBG_DMESG, align 4
  %15 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %12, i32 %13, i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  br label %16

16:                                               ; preds = %56, %1
  %17 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %18 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %16
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %23 = load i32, i32* @FW_MAC0_READY, align 4
  %24 = call i32 @rtl_read_byte(%struct.rtl_priv* %22, i32 %23)
  %25 = load i32, i32* @MAC0_READY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %30 = load i32, i32* @COMP_FW, align 4
  %31 = load i32, i32* @DBG_DMESG, align 4
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %33 = load i32, i32* @FW_MAC0_READY, align 4
  %34 = call i32 @rtl_read_byte(%struct.rtl_priv* %32, i32 %33)
  %35 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %29, i32 %30, i32 %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  store i32 0, i32* %2, align 4
  br label %90

36:                                               ; preds = %21
  %37 = call i32 @udelay(i32 5)
  br label %55

38:                                               ; preds = %16
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %40 = load i32, i32* @FW_MAC1_READY, align 4
  %41 = call i32 @rtl_read_byte(%struct.rtl_priv* %39, i32 %40)
  %42 = load i32, i32* @MAC1_READY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %47 = load i32, i32* @COMP_FW, align 4
  %48 = load i32, i32* @DBG_DMESG, align 4
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %50 = load i32, i32* @FW_MAC1_READY, align 4
  %51 = call i32 @rtl_read_byte(%struct.rtl_priv* %49, i32 %50)
  %52 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  store i32 0, i32* %2, align 4
  br label %90

53:                                               ; preds = %38
  %54 = call i32 @udelay(i32 5)
  br label %55

55:                                               ; preds = %53, %36
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %6, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* @POLLING_READY_TIMEOUT_COUNT, align 8
  %60 = icmp slt i64 %57, %59
  br i1 %60, label %16, label %61

61:                                               ; preds = %56
  %62 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %63 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %68 = load i32, i32* @COMP_FW, align 4
  %69 = load i32, i32* @DBG_DMESG, align 4
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %71 = load i32, i32* @FW_MAC0_READY, align 4
  %72 = call i32 @rtl_read_byte(%struct.rtl_priv* %70, i32 %71)
  %73 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %67, i32 %68, i32 %69, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  br label %82

74:                                               ; preds = %61
  %75 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %76 = load i32, i32* @COMP_FW, align 4
  %77 = load i32, i32* @DBG_DMESG, align 4
  %78 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %79 = load i32, i32* @FW_MAC1_READY, align 4
  %80 = call i32 @rtl_read_byte(%struct.rtl_priv* %78, i32 %79)
  %81 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %75, i32 %76, i32 %77, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %74, %66
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %84 = load i32, i32* @COMP_FW, align 4
  %85 = load i32, i32* @DBG_DMESG, align 4
  %86 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %87 = load i32, i32* @REG_MCUFWDL, align 4
  %88 = call i32 @rtl_read_dword(%struct.rtl_priv* %86, i32 %87)
  %89 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %83, i32 %84, i32 %85, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  store i32 -1, i32* %2, align 4
  br label %90

90:                                               ; preds = %82, %45, %28
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
