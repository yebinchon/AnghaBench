; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_fw_common.c__rtl92c_fw_free_to_go.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_fw_common.c__rtl92c_fw_free_to_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@EIO = common dso_local global i32 0, align 4
@REG_MCUFWDL = common dso_local global i32 0, align 4
@FW_8192C_POLLING_TIMEOUT_COUNT = common dso_local global i64 0, align 8
@FWDL_CHKSUM_RPT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"chksum report fail! REG_MCUFWDL:0x%08x .\0A\00", align 1
@MCUFWDL_RDY = common dso_local global i64 0, align 8
@WINTINI_RDY = common dso_local global i64 0, align 8
@FW_8192C_POLLING_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Polling FW ready fail! REG_MCUFWDL:0x%08x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl92c_fw_free_to_go to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92c_fw_free_to_go(%struct.ieee80211_hw* %0) #0 {
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
  %19 = load i64, i64* @FW_8192C_POLLING_TIMEOUT_COUNT, align 8
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
  %31 = load i64, i64* @FW_8192C_POLLING_TIMEOUT_COUNT, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %34)
  br label %71

36:                                               ; preds = %29
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %38 = load i32, i32* @REG_MCUFWDL, align 4
  %39 = call i64 @rtl_read_dword(%struct.rtl_priv* %37, i32 %38)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* @MCUFWDL_RDY, align 8
  %41 = load i64, i64* %7, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* @WINTINI_RDY, align 8
  %44 = xor i64 %43, -1
  %45 = load i64, i64* %7, align 8
  %46 = and i64 %45, %44
  store i64 %46, i64* %7, align 8
  %47 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %48 = load i32, i32* @REG_MCUFWDL, align 4
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @rtl_write_dword(%struct.rtl_priv* %47, i32 %48, i64 %49)
  store i64 0, i64* %6, align 8
  br label %51

51:                                               ; preds = %63, %36
  %52 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %53 = load i32, i32* @REG_MCUFWDL, align 4
  %54 = call i64 @rtl_read_dword(%struct.rtl_priv* %52, i32 %53)
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @WINTINI_RDY, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %73

60:                                               ; preds = %51
  %61 = load i32, i32* @FW_8192C_POLLING_DELAY, align 4
  %62 = call i32 @mdelay(i32 %61)
  br label %63

63:                                               ; preds = %60
  %64 = load i64, i64* %6, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %6, align 8
  %66 = load i64, i64* @FW_8192C_POLLING_TIMEOUT_COUNT, align 8
  %67 = icmp slt i64 %64, %66
  br i1 %67, label %51, label %68

68:                                               ; preds = %63
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  br label %71

71:                                               ; preds = %68, %33
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %59
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i64) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
