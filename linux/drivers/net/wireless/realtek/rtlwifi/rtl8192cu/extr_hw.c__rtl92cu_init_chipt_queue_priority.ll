; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__rtl92cu_init_chipt_queue_priority.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__rtl92cu_init_chipt_queue_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@HQSEL_VOQ = common dso_local global i32 0, align 4
@HQSEL_VIQ = common dso_local global i32 0, align 4
@HQSEL_MGTQ = common dso_local global i32 0, align 4
@HQSEL_HIQ = common dso_local global i32 0, align 4
@HQSEL_BEQ = common dso_local global i32 0, align 4
@TX_SELE_LQ = common dso_local global i32 0, align 4
@TX_SELE_HQ = common dso_local global i32 0, align 4
@HQSEL_BKQ = common dso_local global i32 0, align 4
@REG_TRXDMA_CTRL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Tx queue select :0x%02x..\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32, i32)* @_rtl92cu_init_chipt_queue_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92cu_init_chipt_queue_priority(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %10, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %57 [
    i32 2, label %14
    i32 1, label %34
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @HQSEL_VOQ, align 4
  %19 = load i32, i32* @HQSEL_VIQ, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @HQSEL_MGTQ, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @HQSEL_HIQ, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %9, align 4
  br label %33

25:                                               ; preds = %14
  %26 = load i32, i32* @HQSEL_VOQ, align 4
  %27 = load i32, i32* @HQSEL_BEQ, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @HQSEL_MGTQ, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @HQSEL_HIQ, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %25, %17
  br label %59

34:                                               ; preds = %4
  %35 = load i32, i32* @TX_SELE_LQ, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  br label %56

39:                                               ; preds = %34
  %40 = load i32, i32* @TX_SELE_HQ, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load i32, i32* @HQSEL_VOQ, align 4
  %45 = load i32, i32* @HQSEL_VIQ, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @HQSEL_BEQ, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @HQSEL_BKQ, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @HQSEL_MGTQ, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @HQSEL_HIQ, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %43, %39
  br label %56

56:                                               ; preds = %55, %38
  br label %59

57:                                               ; preds = %4
  %58 = call i32 @WARN_ON(i32 1)
  br label %59

59:                                               ; preds = %57, %56, %33
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %61 = load i64, i64* @REG_TRXDMA_CTRL, align 8
  %62 = add nsw i64 %61, 1
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @rtl_write_byte(%struct.rtl_priv* %60, i64 %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %65)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
