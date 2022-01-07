; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_hw.c__rtl8723be_set_media_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_hw.c__rtl8723be_set_media_status.c"
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
@.str.4 = private unnamed_addr constant [30 x i8] c"Network type %d not support!\0A\00", align 1
@MAC80211_LINKED = common dso_local global i64 0, align 8
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"Set HW_VAR_MEDIA_STATUS: No such media status(%x).\0A\00", align 1
@REG_BCNTCFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @_rtl8723be_set_media_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8723be_set_media_status(%struct.ieee80211_hw* %0, i32 %1) #0 {
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
  %15 = and i32 %14, 252
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @LED_CTL_NO_LINK, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @MSR_NOLINK, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %45 [
    i32 128, label %19
    i32 132, label %25
    i32 130, label %25
    i32 129, label %31
    i32 131, label %38
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* @MSR_NOLINK, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %22 = load i32, i32* @COMP_INIT, align 4
  %23 = load i32, i32* @DBG_TRACE, align 4
  %24 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %21, i32 %22, i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %48

25:                                               ; preds = %2, %2
  %26 = load i32, i32* @MSR_ADHOC, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %28 = load i32, i32* @COMP_INIT, align 4
  %29 = load i32, i32* @DBG_TRACE, align 4
  %30 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %27, i32 %28, i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %48

31:                                               ; preds = %2
  %32 = load i32, i32* @MSR_INFRA, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @LED_CTL_LINK, align 4
  store i32 %33, i32* %8, align 4
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %35 = load i32, i32* @COMP_INIT, align 4
  %36 = load i32, i32* @DBG_TRACE, align 4
  %37 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %34, i32 %35, i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %48

38:                                               ; preds = %2
  %39 = load i32, i32* @MSR_AP, align 4
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* @LED_CTL_LINK, align 4
  store i32 %40, i32* %8, align 4
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %42 = load i32, i32* @COMP_INIT, align 4
  %43 = load i32, i32* @DBG_TRACE, align 4
  %44 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %48

45:                                               ; preds = %2
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  store i32 1, i32* %3, align 4
  br label %126

48:                                               ; preds = %38, %31, %25, %19
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @MSR_AP, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %54 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MAC80211_LINKED, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* @MSR_NOLINK, align 4
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* @LED_CTL_NO_LINK, align 4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %59, %52, %48
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @MSR_NOLINK, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @MSR_INFRA, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66, %62
  %71 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %72 = call i32 @_rtl8723be_stop_tx_beacon(%struct.ieee80211_hw* %71)
  %73 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %74 = call i32 @_rtl8723be_enable_bcn_sub_func(%struct.ieee80211_hw* %73)
  br label %95

75:                                               ; preds = %66
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @MSR_ADHOC, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @MSR_AP, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %79, %75
  %84 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %85 = call i32 @_rtl8723be_resume_tx_beacon(%struct.ieee80211_hw* %84)
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %87 = call i32 @_rtl8723be_disable_bcn_sub_func(%struct.ieee80211_hw* %86)
  br label %94

88:                                               ; preds = %79
  %89 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %90 = load i32, i32* @COMP_ERR, align 4
  %91 = load i32, i32* @DBG_WARNING, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %89, i32 %90, i32 %91, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %88, %83
  br label %95

95:                                               ; preds = %94, %70
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %97 = load i64, i64* @MSR, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @rtl_write_byte(%struct.rtl_priv* %96, i64 %97, i32 %100)
  %102 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %103 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %107, align 8
  %109 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 %108(%struct.ieee80211_hw* %109, i32 %110)
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @MSR_AP, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %95
  %116 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %117 = load i64, i64* @REG_BCNTCFG, align 8
  %118 = add nsw i64 %117, 1
  %119 = call i32 @rtl_write_byte(%struct.rtl_priv* %116, i64 %118, i32 0)
  br label %125

120:                                              ; preds = %95
  %121 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %122 = load i64, i64* @REG_BCNTCFG, align 8
  %123 = add nsw i64 %122, 1
  %124 = call i32 @rtl_write_byte(%struct.rtl_priv* %121, i64 %123, i32 102)
  br label %125

125:                                              ; preds = %120, %115
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %45
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i64) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @_rtl8723be_stop_tx_beacon(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl8723be_enable_bcn_sub_func(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl8723be_resume_tx_beacon(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl8723be_disable_bcn_sub_func(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
