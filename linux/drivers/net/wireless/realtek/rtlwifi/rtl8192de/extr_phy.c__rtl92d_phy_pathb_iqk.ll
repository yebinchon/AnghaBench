; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_pathb_iqk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_pathb_iqk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@FINIT = common dso_local global i32 0, align 4
@INIT_IQK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Path B IQK!\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"One shot, path A LOK & IQK!\0A\00", align 1
@MASKDWORD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Delay %d ms for One shot, path B LOK & IQK\0A\00", align 1
@IQK_DELAY_TIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"0xeac = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"0xeb4 = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"0xebc = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"0xec4 = 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"0xecc = 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Path B Rx IQK fail!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl92d_phy_pathb_iqk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92d_phy_pathb_iqk(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %4, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %14 = load i32, i32* @FINIT, align 4
  %15 = load i32, i32* @INIT_IQK, align 4
  %16 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %18 = load i32, i32* @FINIT, align 4
  %19 = load i32, i32* @INIT_IQK, align 4
  %20 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %22 = load i32, i32* @MASKDWORD, align 4
  %23 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %21, i32 3680, i32 %22, i32 2)
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %25 = load i32, i32* @MASKDWORD, align 4
  %26 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %24, i32 3680, i32 %25, i32 0)
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %28 = load i32, i32* @FINIT, align 4
  %29 = load i32, i32* @INIT_IQK, align 4
  %30 = load i32, i32* @IQK_DELAY_TIME, align 4
  %31 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %27, i32 %28, i32 %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @IQK_DELAY_TIME, align 4
  %33 = call i32 @mdelay(i32 %32)
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %35 = load i32, i32* @MASKDWORD, align 4
  %36 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %34, i32 3756, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %38 = load i32, i32* @FINIT, align 4
  %39 = load i32, i32* @INIT_IQK, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %43 = load i32, i32* @MASKDWORD, align 4
  %44 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %42, i32 3764, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %46 = load i32, i32* @FINIT, align 4
  %47 = load i32, i32* @INIT_IQK, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %45, i32 %46, i32 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %51 = load i32, i32* @MASKDWORD, align 4
  %52 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %50, i32 3772, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %54 = load i32, i32* @FINIT, align 4
  %55 = load i32, i32* @INIT_IQK, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %53, i32 %54, i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  %58 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %59 = load i32, i32* @MASKDWORD, align 4
  %60 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %58, i32 3780, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %62 = load i32, i32* @FINIT, align 4
  %63 = load i32, i32* @INIT_IQK, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %61, i32 %62, i32 %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %64)
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %67 = load i32, i32* @MASKDWORD, align 4
  %68 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %66, i32 3788, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %70 = load i32, i32* @FINIT, align 4
  %71 = load i32, i32* @INIT_IQK, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %69, i32 %70, i32 %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @BIT(i32 31)
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %91, label %78

78:                                               ; preds = %1
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %79, 67043328
  %81 = ashr i32 %80, 16
  %82 = icmp ne i32 %81, 322
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load i32, i32* %7, align 4
  %85 = and i32 %84, 67043328
  %86 = ashr i32 %85, 16
  %87 = icmp ne i32 %86, 66
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* %10, align 4
  %90 = or i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %93

91:                                               ; preds = %83, %78, %1
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %2, align 4
  br label %118

93:                                               ; preds = %88
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @BIT(i32 30)
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %111, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* %8, align 4
  %100 = and i32 %99, 67043328
  %101 = ashr i32 %100, 16
  %102 = icmp ne i32 %101, 306
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load i32, i32* %9, align 4
  %105 = and i32 %104, 67043328
  %106 = ashr i32 %105, 16
  %107 = icmp ne i32 %106, 54
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* %10, align 4
  %110 = or i32 %109, 2
  store i32 %110, i32* %10, align 4
  br label %116

111:                                              ; preds = %103, %98, %93
  %112 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %113 = load i32, i32* @FINIT, align 4
  %114 = load i32, i32* @INIT_IQK, align 4
  %115 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %112, i32 %113, i32 %114, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %116

116:                                              ; preds = %111, %108
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %116, %91
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RTPRINT(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
