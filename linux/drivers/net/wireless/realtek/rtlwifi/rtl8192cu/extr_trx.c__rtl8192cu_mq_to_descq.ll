; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_trx.c__rtl8192cu_mq_to_descq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_trx.c__rtl8192cu_mq_to_descq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@QSLT_BEACON = common dso_local global i32 0, align 4
@QSLT_MGNT = common dso_local global i32 0, align 4
@QSLT_VO = common dso_local global i32 0, align 4
@COMP_USB = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"VO queue, set qsel = 0x%x\0A\00", align 1
@QSLT_VI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"VI queue, set qsel = 0x%x\0A\00", align 1
@QSLT_BK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"BK queue, set qsel = 0x%x\0A\00", align 1
@QSLT_BE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"BE queue, set qsel = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, i32)* @_rtl8192cu_mq_to_descq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8192cu_mq_to_descq(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @ieee80211_is_beacon(i32 %11)
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @QSLT_BEACON, align 4
  store i32 %16, i32* %7, align 4
  br label %55

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @ieee80211_is_mgmt(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @QSLT_MGNT, align 4
  store i32 %22, i32* %7, align 4
  br label %55

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %47 [
    i32 0, label %25
    i32 1, label %32
    i32 3, label %39
    i32 2, label %46
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @QSLT_VO, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %28 = load i32, i32* @COMP_USB, align 4
  %29 = load i32, i32* @DBG_DMESG, align 4
  %30 = load i32, i32* @QSLT_VO, align 4
  %31 = call i32 @RT_TRACE(%struct.rtl_priv* %27, i32 %28, i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %54

32:                                               ; preds = %23
  %33 = load i32, i32* @QSLT_VI, align 4
  store i32 %33, i32* %7, align 4
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %35 = load i32, i32* @COMP_USB, align 4
  %36 = load i32, i32* @DBG_DMESG, align 4
  %37 = load i32, i32* @QSLT_VI, align 4
  %38 = call i32 @RT_TRACE(%struct.rtl_priv* %34, i32 %35, i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %54

39:                                               ; preds = %23
  %40 = load i32, i32* @QSLT_BK, align 4
  store i32 %40, i32* %7, align 4
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %42 = load i32, i32* @COMP_USB, align 4
  %43 = load i32, i32* @DBG_DMESG, align 4
  %44 = load i32, i32* @QSLT_BK, align 4
  %45 = call i32 @RT_TRACE(%struct.rtl_priv* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %54

46:                                               ; preds = %23
  br label %47

47:                                               ; preds = %23, %46
  %48 = load i32, i32* @QSLT_BE, align 4
  store i32 %48, i32* %7, align 4
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %50 = load i32, i32* @COMP_USB, align 4
  %51 = load i32, i32* @DBG_DMESG, align 4
  %52 = load i32, i32* @QSLT_BE, align 4
  %53 = call i32 @RT_TRACE(%struct.rtl_priv* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %47, %39, %32, %25
  br label %55

55:                                               ; preds = %54, %21, %15
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ieee80211_is_beacon(i32) #1

declare dso_local i64 @ieee80211_is_mgmt(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
