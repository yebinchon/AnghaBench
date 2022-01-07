; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_set_io_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_set_io_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32, i32 }

@COMP_CMD = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"-->IO Cmd(%#x), set_io_inprogress(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"[IO CMD] Resume DM after scan\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"[IO CMD] Pause DM before scan\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"<--IO Type(%#x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92d_phy_set_io_cmd(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl_priv*, align 8
  %7 = alloca %struct.rtl_phy*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %6, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %12 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %11, i32 0, i32 0
  store %struct.rtl_phy* %12, %struct.rtl_phy** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %14 = load i32, i32* @COMP_CMD, align 4
  %15 = load i32, i32* @DBG_TRACE, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %18 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  br label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %33 [
    i32 128, label %23
    i32 129, label %28
  ]

23:                                               ; preds = %21
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %25 = load i32, i32* @COMP_CMD, align 4
  %26 = load i32, i32* @DBG_TRACE, align 4
  %27 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %24, i32 %25, i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %36

28:                                               ; preds = %21
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %30 = load i32, i32* @COMP_CMD, align 4
  %31 = load i32, i32* @DBG_TRACE, align 4
  %32 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %29, i32 %30, i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %36

33:                                               ; preds = %21
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %28, %23
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %42 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %47 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %50 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %52

51:                                               ; preds = %40, %37
  store i32 0, i32* %3, align 4
  br label %60

52:                                               ; preds = %45
  %53 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %54 = call i32 @rtl92d_phy_set_io(%struct.ieee80211_hw* %53)
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %56 = load i32, i32* @COMP_CMD, align 4
  %57 = load i32, i32* @DBG_TRACE, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %55, i32 %56, i32 %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %52, %51
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @rtl92d_phy_set_io(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
