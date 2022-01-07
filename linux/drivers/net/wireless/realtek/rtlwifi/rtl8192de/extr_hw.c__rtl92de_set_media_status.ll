; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_hw.c__rtl92de_set_media_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_hw.c__rtl92de_set_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ieee80211_hw*, i32)* }

@MSR = common dso_local global i64 0, align 8
@LED_CTL_NO_LINK = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Set HW_VAR_MEDIA_STATUS: No such media status(%x)\0A\00", align 1
@REG_BCN_CTRL = common dso_local global i64 0, align 8
@MSR_NOLINK = common dso_local global i32 0, align 4
@LED_CTL_LINK = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Set Network type to NO LINK!\0A\00", align 1
@MSR_ADHOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Set Network type to Ad Hoc!\0A\00", align 1
@MSR_INFRA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Set Network type to STA!\0A\00", align 1
@MSR_AP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Set Network type to AP!\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Network type %d not supported!\0A\00", align 1
@MSR_MASK = common dso_local global i32 0, align 4
@REG_BCNTCFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @_rtl92de_set_media_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92de_set_media_status(%struct.ieee80211_hw* %0, i32 %1) #0 {
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
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 252
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 128
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 129
  br i1 %22, label %23, label %28

23:                                               ; preds = %20, %2
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %25 = call i32 @_rtl92de_stop_tx_beacon(%struct.ieee80211_hw* %24)
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %27 = call i32 @_rtl92de_enable_bcn_sub_func(%struct.ieee80211_hw* %26)
  br label %46

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 131
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 130
  br i1 %33, label %34, label %39

34:                                               ; preds = %31, %28
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %36 = call i32 @_rtl92de_resume_tx_beacon(%struct.ieee80211_hw* %35)
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %38 = call i32 @_rtl92de_disable_bcn_sub_func(%struct.ieee80211_hw* %37)
  br label %45

39:                                               ; preds = %31
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %41 = load i32, i32* @COMP_ERR, align 4
  %42 = load i32, i32* @DBG_WARNING, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %40, i32 %41, i32 %42, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %39, %34
  br label %46

46:                                               ; preds = %45, %23
  %47 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %48 = load i64, i64* @REG_BCN_CTRL, align 8
  %49 = call i32 @rtl_read_byte(%struct.rtl_priv* %47, i64 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %5, align 4
  switch i32 %50, label %93 [
    i32 128, label %51
    i32 131, label %62
    i32 129, label %72
    i32 130, label %83
  ]

51:                                               ; preds = %46
  %52 = load i32, i32* @MSR_NOLINK, align 4
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @LED_CTL_LINK, align 4
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, 247
  store i32 %57, i32* %9, align 4
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %59 = load i32, i32* @COMP_INIT, align 4
  %60 = load i32, i32* @DBG_TRACE, align 4
  %61 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %58, i32 %59, i32 %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %96

62:                                               ; preds = %46
  %63 = load i32, i32* @MSR_ADHOC, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %66, 8
  store i32 %67, i32* %9, align 4
  %68 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %69 = load i32, i32* @COMP_INIT, align 4
  %70 = load i32, i32* @DBG_TRACE, align 4
  %71 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %68, i32 %69, i32 %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %96

72:                                               ; preds = %46
  %73 = load i32, i32* @MSR_INFRA, align 4
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* @LED_CTL_LINK, align 4
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = and i32 %77, 247
  store i32 %78, i32* %9, align 4
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %80 = load i32, i32* @COMP_INIT, align 4
  %81 = load i32, i32* @DBG_TRACE, align 4
  %82 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %79, i32 %80, i32 %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %96

83:                                               ; preds = %46
  %84 = load i32, i32* @MSR_AP, align 4
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %87, 8
  store i32 %88, i32* %9, align 4
  %89 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %90 = load i32, i32* @COMP_INIT, align 4
  %91 = load i32, i32* @DBG_TRACE, align 4
  %92 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %89, i32 %90, i32 %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %96

93:                                               ; preds = %46
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  store i32 1, i32* %3, align 4
  br label %127

96:                                               ; preds = %83, %72, %62, %51
  %97 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %98 = load i64, i64* @MSR, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @rtl_write_byte(%struct.rtl_priv* %97, i64 %98, i32 %99)
  %101 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %102 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %106, align 8
  %108 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 %107(%struct.ieee80211_hw* %108, i32 %109)
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @MSR_MASK, align 4
  %113 = and i32 %111, %112
  %114 = load i32, i32* @MSR_AP, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %96
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %118 = load i64, i64* @REG_BCNTCFG, align 8
  %119 = add nsw i64 %118, 1
  %120 = call i32 @rtl_write_byte(%struct.rtl_priv* %117, i64 %119, i32 0)
  br label %126

121:                                              ; preds = %96
  %122 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %123 = load i64, i64* @REG_BCNTCFG, align 8
  %124 = add nsw i64 %123, 1
  %125 = call i32 @rtl_write_byte(%struct.rtl_priv* %122, i64 %124, i32 102)
  br label %126

126:                                              ; preds = %121, %116
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %93
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i64) #1

declare dso_local i32 @_rtl92de_stop_tx_beacon(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92de_enable_bcn_sub_func(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92de_resume_tx_beacon(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92de_disable_bcn_sub_func(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
