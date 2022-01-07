; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c__rtl92ce_set_media_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c__rtl92ce_set_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.ieee80211_hw*, i32)* }
%struct.TYPE_4__ = type { i64 }

@MSR = common dso_local global i64 0, align 8
@LED_CTL_NO_LINK = common dso_local global i32 0, align 4
@MSR_NOLINK = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Set Network type to NO LINK!\0A\00", align 1
@MSR_ADHOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Set Network type to Ad Hoc!\0A\00", align 1
@MSR_INFRA = common dso_local global i32 0, align 4
@LED_CTL_LINK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Set Network type to STA!\0A\00", align 1
@MSR_AP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Set Network type to AP!\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Set Network type to Mesh Point!\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Network type %d not supported!\0A\00", align 1
@MAC80211_LINKED = common dso_local global i64 0, align 8
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_WARNING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"Set HW_VAR_MEDIA_STATUS: No such media status(%x).\0A\00", align 1
@REG_BCNTCFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @_rtl92ce_set_media_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92ce_set_media_status(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %6, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %13 = load i64, i64* @MSR, align 8
  %14 = call i32 @rtl_read_byte(%struct.rtl_priv* %12, i64 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @LED_CTL_NO_LINK, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @MSR_NOLINK, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 252
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %52 [
    i32 128, label %20
    i32 132, label %26
    i32 129, label %32
    i32 131, label %39
    i32 130, label %46
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* @MSR_NOLINK, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %23 = load i32, i32* @COMP_INIT, align 4
  %24 = load i32, i32* @DBG_TRACE, align 4
  %25 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %22, i32 %23, i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %55

26:                                               ; preds = %2
  %27 = load i32, i32* @MSR_ADHOC, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %29 = load i32, i32* @COMP_INIT, align 4
  %30 = load i32, i32* @DBG_TRACE, align 4
  %31 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %28, i32 %29, i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %55

32:                                               ; preds = %2
  %33 = load i32, i32* @MSR_INFRA, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @LED_CTL_LINK, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %36 = load i32, i32* @COMP_INIT, align 4
  %37 = load i32, i32* @DBG_TRACE, align 4
  %38 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %55

39:                                               ; preds = %2
  %40 = load i32, i32* @MSR_AP, align 4
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @LED_CTL_LINK, align 4
  store i32 %41, i32* %8, align 4
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %43 = load i32, i32* @COMP_INIT, align 4
  %44 = load i32, i32* @DBG_TRACE, align 4
  %45 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %42, i32 %43, i32 %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %55

46:                                               ; preds = %2
  %47 = load i32, i32* @MSR_ADHOC, align 4
  store i32 %47, i32* %9, align 4
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %49 = load i32, i32* @COMP_INIT, align 4
  %50 = load i32, i32* @DBG_TRACE, align 4
  %51 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %55

52:                                               ; preds = %2
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %53)
  store i32 1, i32* %3, align 4
  br label %133

55:                                               ; preds = %46, %39, %32, %26, %20
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @MSR_AP, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %61 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MAC80211_LINKED, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* @MSR_NOLINK, align 4
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* @LED_CTL_NO_LINK, align 4
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %66, %59, %55
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @MSR_NOLINK, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @MSR_INFRA, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73, %69
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %79 = call i32 @_rtl92ce_stop_tx_beacon(%struct.ieee80211_hw* %78)
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %81 = call i32 @_rtl92ce_enable_bcn_sub_func(%struct.ieee80211_hw* %80)
  br label %102

82:                                               ; preds = %73
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @MSR_ADHOC, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @MSR_AP, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86, %82
  %91 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %92 = call i32 @_rtl92ce_resume_tx_beacon(%struct.ieee80211_hw* %91)
  %93 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %94 = call i32 @_rtl92ce_disable_bcn_sub_func(%struct.ieee80211_hw* %93)
  br label %101

95:                                               ; preds = %86
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %97 = load i32, i32* @COMP_ERR, align 4
  %98 = load i32, i32* @DBG_WARNING, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %96, i32 %97, i32 %98, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %95, %90
  br label %102

102:                                              ; preds = %101, %77
  %103 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %104 = load i64, i64* @MSR, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %9, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @rtl_write_byte(%struct.rtl_priv* %103, i64 %104, i32 %107)
  %109 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %110 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %114, align 8
  %116 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 %115(%struct.ieee80211_hw* %116, i32 %117)
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @MSR_AP, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %102
  %123 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %124 = load i64, i64* @REG_BCNTCFG, align 8
  %125 = add nsw i64 %124, 1
  %126 = call i32 @rtl_write_byte(%struct.rtl_priv* %123, i64 %125, i32 0)
  br label %132

127:                                              ; preds = %102
  %128 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %129 = load i64, i64* @REG_BCNTCFG, align 8
  %130 = add nsw i64 %129, 1
  %131 = call i32 @rtl_write_byte(%struct.rtl_priv* %128, i64 %130, i32 102)
  br label %132

132:                                              ; preds = %127, %122
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %132, %52
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i64) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @_rtl92ce_stop_tx_beacon(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92ce_enable_bcn_sub_func(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92ce_resume_tx_beacon(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92ce_disable_bcn_sub_func(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
