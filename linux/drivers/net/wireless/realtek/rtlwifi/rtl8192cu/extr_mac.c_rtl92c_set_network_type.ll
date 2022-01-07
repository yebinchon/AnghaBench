; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_mac.c_rtl92c_set_network_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_mac.c_rtl92c_set_network_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@NT_NO_LINK = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Set Network type to NO LINK!\0A\00", align 1
@NT_LINK_AD_HOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Set Network type to Ad Hoc!\0A\00", align 1
@NT_LINK_AP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Set Network type to STA!\0A\00", align 1
@NT_AS_AP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Set Network type to AP!\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Network type %d not supported!\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MSR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92c_set_network_type(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %35 [
    i32 128, label %11
    i32 131, label %17
    i32 129, label %23
    i32 130, label %29
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @NT_NO_LINK, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %14 = load i32, i32* @COMP_INIT, align 4
  %15 = load i32, i32* @DBG_DMESG, align 4
  %16 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %43

17:                                               ; preds = %2
  %18 = load i32, i32* @NT_LINK_AD_HOC, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %20 = load i32, i32* @COMP_INIT, align 4
  %21 = load i32, i32* @DBG_DMESG, align 4
  %22 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %19, i32 %20, i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %43

23:                                               ; preds = %2
  %24 = load i32, i32* @NT_LINK_AP, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %26 = load i32, i32* @COMP_INIT, align 4
  %27 = load i32, i32* @DBG_DMESG, align 4
  %28 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %25, i32 %26, i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %43

29:                                               ; preds = %2
  %30 = load i32, i32* @NT_AS_AP, align 4
  store i32 %30, i32* %6, align 4
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %32 = load i32, i32* @COMP_INIT, align 4
  %33 = load i32, i32* @DBG_DMESG, align 4
  %34 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %31, i32 %32, i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %43

35:                                               ; preds = %2
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %37 = load i32, i32* @COMP_INIT, align 4
  %38 = load i32, i32* @DBG_DMESG, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %36, i32 %37, i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %48

43:                                               ; preds = %29, %23, %17, %11
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %45 = load i32, i32* @MSR, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @rtl_write_byte(%struct.rtl_priv* %44, i32 %45, i32 %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %43, %35
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
