; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__rtl92cu_set_media_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__rtl92cu_set_media_status.c"
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
@.str = private unnamed_addr constant [50 x i8] c"Set HW_VAR_MEDIA_STATUS:No such media status(%x)\0A\00", align 1
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @_rtl92cu_set_media_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92cu_set_media_status(%struct.ieee80211_hw* %0, i32 %1) #0 {
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
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 128
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 129
  br i1 %21, label %22, label %27

22:                                               ; preds = %19, %2
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %24 = call i32 @_rtl92cu_stop_tx_beacon(%struct.ieee80211_hw* %23)
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %26 = call i32 @_rtl92cu_enable_bcn_sub_func(%struct.ieee80211_hw* %25)
  br label %45

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 131
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 130
  br i1 %32, label %33, label %38

33:                                               ; preds = %30, %27
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %35 = call i32 @_rtl92cu_resume_tx_beacon(%struct.ieee80211_hw* %34)
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %37 = call i32 @_rtl92cu_disable_bcn_sub_func(%struct.ieee80211_hw* %36)
  br label %44

38:                                               ; preds = %30
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %40 = load i32, i32* @COMP_ERR, align 4
  %41 = load i32, i32* @DBG_WARNING, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %39, i32 %40, i32 %41, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %38, %33
  br label %45

45:                                               ; preds = %44, %22
  %46 = load i32, i32* %5, align 4
  switch i32 %46, label %81 [
    i32 128, label %47
    i32 131, label %56
    i32 129, label %64
    i32 130, label %73
  ]

47:                                               ; preds = %45
  %48 = load i32, i32* @MSR_NOLINK, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* @LED_CTL_LINK, align 4
  store i32 %51, i32* %8, align 4
  %52 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %53 = load i32, i32* @COMP_INIT, align 4
  %54 = load i32, i32* @DBG_TRACE, align 4
  %55 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %52, i32 %53, i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %84

56:                                               ; preds = %45
  %57 = load i32, i32* @MSR_ADHOC, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %61 = load i32, i32* @COMP_INIT, align 4
  %62 = load i32, i32* @DBG_TRACE, align 4
  %63 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %60, i32 %61, i32 %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %84

64:                                               ; preds = %45
  %65 = load i32, i32* @MSR_INFRA, align 4
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* @LED_CTL_LINK, align 4
  store i32 %68, i32* %8, align 4
  %69 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %70 = load i32, i32* @COMP_INIT, align 4
  %71 = load i32, i32* @DBG_TRACE, align 4
  %72 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %69, i32 %70, i32 %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %84

73:                                               ; preds = %45
  %74 = load i32, i32* @MSR_AP, align 4
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %78 = load i32, i32* @COMP_INIT, align 4
  %79 = load i32, i32* @DBG_TRACE, align 4
  %80 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %77, i32 %78, i32 %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %84

81:                                               ; preds = %45
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  br label %115

84:                                               ; preds = %73, %64, %56, %47
  %85 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %86 = load i64, i64* @MSR, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @rtl_write_byte(%struct.rtl_priv* %85, i64 %86, i32 %87)
  %89 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %90 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %94, align 8
  %96 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 %95(%struct.ieee80211_hw* %96, i32 %97)
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @MSR_MASK, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* @MSR_AP, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %84
  %105 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %106 = load i64, i64* @REG_BCNTCFG, align 8
  %107 = add nsw i64 %106, 1
  %108 = call i32 @rtl_write_byte(%struct.rtl_priv* %105, i64 %107, i32 0)
  br label %114

109:                                              ; preds = %84
  %110 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %111 = load i64, i64* @REG_BCNTCFG, align 8
  %112 = add nsw i64 %111, 1
  %113 = call i32 @rtl_write_byte(%struct.rtl_priv* %110, i64 %112, i32 102)
  br label %114

114:                                              ; preds = %109, %104
  store i32 0, i32* %3, align 4
  br label %116

115:                                              ; preds = %81
  store i32 1, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %114
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i64) #1

declare dso_local i32 @_rtl92cu_stop_tx_beacon(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92cu_enable_bcn_sub_func(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92cu_resume_tx_beacon(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92cu_disable_bcn_sub_func(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
