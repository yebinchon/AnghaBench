; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_fw.c__rtl92d_fw_free_to_go.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_fw.c__rtl92d_fw_free_to_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@REG_MCUFWDL = common dso_local global i32 0, align 4
@FW_8192D_POLLING_TIMEOUT_COUNT = common dso_local global i64 0, align 8
@FWDL_CHKSUM_RPT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"chksum report fail! REG_MCUFWDL:0x%08x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@MCUFWDL_RDY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl92d_fw_free_to_go to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92d_fw_free_to_go(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %4, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %24, %1
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %11 = load i32, i32* @REG_MCUFWDL, align 4
  %12 = call i64 @rtl_read_dword(%struct.rtl_priv* %10, i32 %11)
  store i64 %12, i64* %6, align 8
  br label %13

13:                                               ; preds = %9
  %14 = load i64, i64* %5, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* @FW_8192D_POLLING_TIMEOUT_COUNT, align 8
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @FWDL_CHKSUM_RPT, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %18, %13
  %25 = phi i1 [ false, %13 ], [ %23, %18 ]
  br i1 %25, label %9, label %26

26:                                               ; preds = %24
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @FW_8192D_POLLING_TIMEOUT_COUNT, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %46

35:                                               ; preds = %26
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %37 = load i32, i32* @REG_MCUFWDL, align 4
  %38 = call i64 @rtl_read_dword(%struct.rtl_priv* %36, i32 %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* @MCUFWDL_RDY, align 8
  %40 = load i64, i64* %6, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %6, align 8
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %43 = load i32, i32* @REG_MCUFWDL, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @rtl_write_dword(%struct.rtl_priv* %42, i32 %43, i64 %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %35, %30
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
