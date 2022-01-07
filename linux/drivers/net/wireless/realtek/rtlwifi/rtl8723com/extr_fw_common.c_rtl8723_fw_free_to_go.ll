; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723com/extr_fw_common.c_rtl8723_fw_free_to_go.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723com/extr_fw_common.c_rtl8723_fw_free_to_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@EIO = common dso_local global i32 0, align 4
@REG_MCUFWDL = common dso_local global i32 0, align 4
@FWDL_CHKSUM_RPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"chksum report fail ! REG_MCUFWDL:0x%08x .\0A\00", align 1
@MCUFWDL_RDY = common dso_local global i32 0, align 4
@WINTINI_RDY = common dso_local global i32 0, align 4
@COMP_FW = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Polling FW ready success!! REG_MCUFWDL:0x%08x .\0A\00", align 1
@FW_8192C_POLLING_DELAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Polling FW ready fail!! REG_MCUFWDL:0x%08x .\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8723_fw_free_to_go(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %7, align 8
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %30, %3
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %17 = load i32, i32* @REG_MCUFWDL, align 4
  %18 = call i32 @rtl_read_dword(%struct.rtl_priv* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @FWDL_CHKSUM_RPT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %24, %19
  %31 = phi i1 [ false, %19 ], [ %29, %24 ]
  br i1 %31, label %15, label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %84

39:                                               ; preds = %32
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %41 = load i32, i32* @REG_MCUFWDL, align 4
  %42 = call i32 @rtl_read_dword(%struct.rtl_priv* %40, i32 %41)
  %43 = load i32, i32* @MCUFWDL_RDY, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* @WINTINI_RDY, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %10, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %10, align 4
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %50 = load i32, i32* @REG_MCUFWDL, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @rtl_write_dword(%struct.rtl_priv* %49, i32 %50, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %39
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %57 = call i32 @rtl8723be_firmware_selfreset(%struct.ieee80211_hw* %56)
  br label %58

58:                                               ; preds = %55, %39
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %76, %58
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %61 = load i32, i32* @REG_MCUFWDL, align 4
  %62 = call i32 @rtl_read_dword(%struct.rtl_priv* %60, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @WINTINI_RDY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %69 = load i32, i32* @COMP_FW, align 4
  %70 = load i32, i32* @DBG_TRACE, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @RT_TRACE(%struct.rtl_priv* %68, i32 %69, i32 %70, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  store i32 0, i32* %8, align 4
  br label %84

73:                                               ; preds = %59
  %74 = load i32, i32* @FW_8192C_POLLING_DELAY, align 4
  %75 = call i32 @mdelay(i32 %74)
  br label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %59, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %81, %67, %36
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl8723be_firmware_selfreset(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
