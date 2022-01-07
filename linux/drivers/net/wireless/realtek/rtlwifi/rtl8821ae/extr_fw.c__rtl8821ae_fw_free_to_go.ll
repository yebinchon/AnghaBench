; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_fw.c__rtl8821ae_fw_free_to_go.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_fw.c__rtl8821ae_fw_free_to_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@EIO = common dso_local global i32 0, align 4
@REG_MCUFWDL = common dso_local global i32 0, align 4
@FW_8821AE_POLLING_TIMEOUT_COUNT = common dso_local global i64 0, align 8
@FWDL_CHKSUM_RPT = common dso_local global i64 0, align 8
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"chksum report fail! REG_MCUFWDL:0x%08x .\0A\00", align 1
@MCUFWDL_RDY = common dso_local global i64 0, align 8
@WINTINI_RDY = common dso_local global i64 0, align 8
@FW_8821AE_POLLING_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Polling FW ready fail!! REG_MCUFWDL:0x%08x .\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl8821ae_fw_free_to_go to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8821ae_fw_free_to_go(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %4, align 8
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %27, %1
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %14 = load i32, i32* @REG_MCUFWDL, align 4
  %15 = call i64 @rtl_read_dword(%struct.rtl_priv* %13, i32 %14)
  store i64 %15, i64* %7, align 8
  br label %16

16:                                               ; preds = %12
  %17 = load i64, i64* %6, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* @FW_8821AE_POLLING_TIMEOUT_COUNT, align 8
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @FWDL_CHKSUM_RPT, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %21, %16
  %28 = phi i1 [ false, %16 ], [ %26, %21 ]
  br i1 %28, label %12, label %29

29:                                               ; preds = %27
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @FW_8821AE_POLLING_TIMEOUT_COUNT, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %35 = load i32, i32* @COMP_ERR, align 4
  %36 = load i32, i32* @DBG_LOUD, align 4
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @RT_TRACE(%struct.rtl_priv* %34, i32 %35, i32 %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %37)
  br label %76

39:                                               ; preds = %29
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %41 = load i32, i32* @REG_MCUFWDL, align 4
  %42 = call i64 @rtl_read_dword(%struct.rtl_priv* %40, i32 %41)
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* @MCUFWDL_RDY, align 8
  %44 = load i64, i64* %7, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* @WINTINI_RDY, align 8
  %47 = xor i64 %46, -1
  %48 = load i64, i64* %7, align 8
  %49 = and i64 %48, %47
  store i64 %49, i64* %7, align 8
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %51 = load i32, i32* @REG_MCUFWDL, align 4
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @rtl_write_dword(%struct.rtl_priv* %50, i32 %51, i64 %52)
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %55 = call i32 @rtl8821ae_firmware_selfreset(%struct.ieee80211_hw* %54)
  store i64 0, i64* %6, align 8
  br label %56

56:                                               ; preds = %68, %39
  %57 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %58 = load i32, i32* @REG_MCUFWDL, align 4
  %59 = call i64 @rtl_read_dword(%struct.rtl_priv* %57, i32 %58)
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @WINTINI_RDY, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %78

65:                                               ; preds = %56
  %66 = load i32, i32* @FW_8821AE_POLLING_DELAY, align 4
  %67 = call i32 @udelay(i32 %66)
  br label %68

68:                                               ; preds = %65
  %69 = load i64, i64* %6, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %6, align 8
  %71 = load i64, i64* @FW_8821AE_POLLING_TIMEOUT_COUNT, align 8
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %56, label %73

73:                                               ; preds = %68
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  br label %76

76:                                               ; preds = %73, %33
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %64
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i64) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i64) #1

declare dso_local i32 @rtl8821ae_firmware_selfreset(%struct.ieee80211_hw*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
