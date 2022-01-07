; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_set_media_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_set_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ieee80211_hw*, i32)* }

@MSR = common dso_local global i64 0, align 8
@LED_CTL_NO_LINK = common dso_local global i32 0, align 4
@REG_BCN_CTRL = common dso_local global i32 0, align 4
@COMP_BEACON = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"clear 0x550 when set HW_VAR_MEDIA_STATUS\0A\00", align 1
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Set HW_VAR_MEDIA_STATUS: No such media status(%x).\0A\00", align 1
@MSR_NOLINK = common dso_local global i32 0, align 4
@LED_CTL_LINK = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Set Network type to NO LINK!\0A\00", align 1
@MSR_ADHOC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Set Network type to Ad Hoc!\0A\00", align 1
@MSR_INFRA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Set Network type to STA!\0A\00", align 1
@MSR_AP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Set Network type to AP!\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Network type %d not support!\0A\00", align 1
@MSR_MASK = common dso_local global i32 0, align 4
@REG_BCNTCFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @_rtl8821ae_set_media_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8821ae_set_media_status(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %6, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %12 = load i64, i64* @MSR, align 8
  %13 = call i32 @rtl_read_byte(%struct.rtl_priv* %11, i64 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @LED_CTL_NO_LINK, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 252
  store i32 %16, i32* %7, align 4
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %18 = load i32, i32* @REG_BCN_CTRL, align 4
  %19 = call i32 @rtl_write_dword(%struct.rtl_priv* %17, i32 %18, i32 0)
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %21 = load i32, i32* @COMP_BEACON, align 4
  %22 = load i32, i32* @DBG_LOUD, align 4
  %23 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 128
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 129
  br i1 %28, label %29, label %34

29:                                               ; preds = %26, %2
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %31 = call i32 @_rtl8821ae_stop_tx_beacon(%struct.ieee80211_hw* %30)
  %32 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %33 = call i32 @_rtl8821ae_enable_bcn_sub_func(%struct.ieee80211_hw* %32)
  br label %52

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 131
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 130
  br i1 %39, label %40, label %45

40:                                               ; preds = %37, %34
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %42 = call i32 @_rtl8821ae_resume_tx_beacon(%struct.ieee80211_hw* %41)
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %44 = call i32 @_rtl8821ae_disable_bcn_sub_func(%struct.ieee80211_hw* %43)
  br label %51

45:                                               ; preds = %37
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %47 = load i32, i32* @COMP_ERR, align 4
  %48 = load i32, i32* @DBG_WARNING, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %45, %40
  br label %52

52:                                               ; preds = %51, %29
  %53 = load i32, i32* %5, align 4
  switch i32 %53, label %88 [
    i32 128, label %54
    i32 131, label %63
    i32 129, label %71
    i32 130, label %80
  ]

54:                                               ; preds = %52
  %55 = load i32, i32* @MSR_NOLINK, align 4
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* @LED_CTL_LINK, align 4
  store i32 %58, i32* %8, align 4
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %60 = load i32, i32* @COMP_INIT, align 4
  %61 = load i32, i32* @DBG_TRACE, align 4
  %62 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %59, i32 %60, i32 %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %91

63:                                               ; preds = %52
  %64 = load i32, i32* @MSR_ADHOC, align 4
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %68 = load i32, i32* @COMP_INIT, align 4
  %69 = load i32, i32* @DBG_TRACE, align 4
  %70 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %67, i32 %68, i32 %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %91

71:                                               ; preds = %52
  %72 = load i32, i32* @MSR_INFRA, align 4
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* @LED_CTL_LINK, align 4
  store i32 %75, i32* %8, align 4
  %76 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %77 = load i32, i32* @COMP_INIT, align 4
  %78 = load i32, i32* @DBG_TRACE, align 4
  %79 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %76, i32 %77, i32 %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %91

80:                                               ; preds = %52
  %81 = load i32, i32* @MSR_AP, align 4
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %85 = load i32, i32* @COMP_INIT, align 4
  %86 = load i32, i32* @DBG_TRACE, align 4
  %87 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %84, i32 %85, i32 %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %91

88:                                               ; preds = %52
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %89)
  store i32 1, i32* %3, align 4
  br label %122

91:                                               ; preds = %80, %71, %63, %54
  %92 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %93 = load i64, i64* @MSR, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @rtl_write_byte(%struct.rtl_priv* %92, i64 %93, i32 %94)
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %97 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %101, align 8
  %103 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 %102(%struct.ieee80211_hw* %103, i32 %104)
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @MSR_MASK, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* @MSR_AP, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %91
  %112 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %113 = load i64, i64* @REG_BCNTCFG, align 8
  %114 = add nsw i64 %113, 1
  %115 = call i32 @rtl_write_byte(%struct.rtl_priv* %112, i64 %114, i32 0)
  br label %121

116:                                              ; preds = %91
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %118 = load i64, i64* @REG_BCNTCFG, align 8
  %119 = add nsw i64 %118, 1
  %120 = call i32 @rtl_write_byte(%struct.rtl_priv* %117, i64 %119, i32 102)
  br label %121

121:                                              ; preds = %116, %111
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %88
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i64) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @_rtl8821ae_stop_tx_beacon(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl8821ae_enable_bcn_sub_func(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl8821ae_resume_tx_beacon(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl8821ae_disable_bcn_sub_func(%struct.ieee80211_hw*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
