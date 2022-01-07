; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_patha_iqk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_patha_iqk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i64 }

@FINIT = common dso_local global i32 0, align 4
@INIT_IQK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Path A IQK!\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Path-A IQK setting!\0A\00", align 1
@MASKDWORD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"LO calibration setting!\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"One shot, path A LOK & IQK!\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Delay %d ms for One shot, path A LOK & IQK\0A\00", align 1
@IQK_DELAY_TIME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"0xeac = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"0xe94 = 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"0xe9c = 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"0xea4 = 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Path A Rx IQK fail!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @_rtl92d_phy_patha_iqk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92d_phy_patha_iqk(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl_priv*, align 8
  %7 = alloca %struct.rtl_hal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  store %struct.rtl_priv* %14, %struct.rtl_priv** %6, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  %17 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %16)
  store %struct.rtl_hal* %17, %struct.rtl_hal** %7, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %19 = load i32, i32* @FINIT, align 4
  %20 = load i32, i32* @INIT_IQK, align 4
  %21 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %18, i32 %19, i32 %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %23 = load i32, i32* @FINIT, align 4
  %24 = load i32, i32* @INIT_IQK, align 4
  %25 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %22, i32 %23, i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %27 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %2
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %32 = load i32, i32* @MASKDWORD, align 4
  %33 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %31, i32 3632, i32 %32, i32 268471327)
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %35 = load i32, i32* @MASKDWORD, align 4
  %36 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %34, i32 3636, i32 %35, i32 268471327)
  br label %44

37:                                               ; preds = %2
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %39 = load i32, i32* @MASKDWORD, align 4
  %40 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %38, i32 3632, i32 %39, i32 268471330)
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %42 = load i32, i32* @MASKDWORD, align 4
  %43 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %41, i32 3636, i32 %42, i32 268471330)
  br label %44

44:                                               ; preds = %37, %30
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %46 = load i32, i32* @MASKDWORD, align 4
  %47 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %45, i32 3640, i32 %46, i32 -2112618238)
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %49 = load i32, i32* @MASKDWORD, align 4
  %50 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %48, i32 3644, i32 %49, i32 672530950)
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %44
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %55 = load i32, i32* @MASKDWORD, align 4
  %56 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %54, i32 3664, i32 %55, i32 268471330)
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %58 = load i32, i32* @MASKDWORD, align 4
  %59 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %57, i32 3668, i32 %58, i32 268471330)
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %61 = load i32, i32* @MASKDWORD, align 4
  %62 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %60, i32 3672, i32 %61, i32 -2112618238)
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %64 = load i32, i32* @MASKDWORD, align 4
  %65 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %63, i32 3676, i32 %64, i32 672530950)
  br label %66

66:                                               ; preds = %53, %44
  %67 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %68 = load i32, i32* @FINIT, align 4
  %69 = load i32, i32* @INIT_IQK, align 4
  %70 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %67, i32 %68, i32 %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %72 = load i32, i32* @MASKDWORD, align 4
  %73 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %71, i32 3660, i32 %72, i32 4598033)
  %74 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %75 = load i32, i32* @FINIT, align 4
  %76 = load i32, i32* @INIT_IQK, align 4
  %77 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %74, i32 %75, i32 %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %79 = load i32, i32* @MASKDWORD, align 4
  %80 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %78, i32 3656, i32 %79, i32 -117440512)
  %81 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %82 = load i32, i32* @MASKDWORD, align 4
  %83 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %81, i32 3656, i32 %82, i32 -134217728)
  %84 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %85 = load i32, i32* @FINIT, align 4
  %86 = load i32, i32* @INIT_IQK, align 4
  %87 = load i32, i32* @IQK_DELAY_TIME, align 4
  %88 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %84, i32 %85, i32 %86, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @IQK_DELAY_TIME, align 4
  %90 = call i32 @mdelay(i32 %89)
  %91 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %92 = load i32, i32* @MASKDWORD, align 4
  %93 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %91, i32 3756, i32 %92)
  store i32 %93, i32* %8, align 4
  %94 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %95 = load i32, i32* @FINIT, align 4
  %96 = load i32, i32* @INIT_IQK, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %94, i32 %95, i32 %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  %99 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %100 = load i32, i32* @MASKDWORD, align 4
  %101 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %99, i32 3732, i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %103 = load i32, i32* @FINIT, align 4
  %104 = load i32, i32* @INIT_IQK, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %102, i32 %103, i32 %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %105)
  %107 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %108 = load i32, i32* @MASKDWORD, align 4
  %109 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %107, i32 3740, i32 %108)
  store i32 %109, i32* %10, align 4
  %110 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %111 = load i32, i32* @FINIT, align 4
  %112 = load i32, i32* @INIT_IQK, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %110, i32 %111, i32 %112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %113)
  %115 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %116 = load i32, i32* @MASKDWORD, align 4
  %117 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %115, i32 3748, i32 %116)
  store i32 %117, i32* %11, align 4
  %118 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %119 = load i32, i32* @FINIT, align 4
  %120 = load i32, i32* @INIT_IQK, align 4
  %121 = load i32, i32* %11, align 4
  %122 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %118, i32 %119, i32 %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @BIT(i32 28)
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %140, label %127

127:                                              ; preds = %66
  %128 = load i32, i32* %9, align 4
  %129 = and i32 %128, 67043328
  %130 = ashr i32 %129, 16
  %131 = icmp ne i32 %130, 322
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = load i32, i32* %10, align 4
  %134 = and i32 %133, 67043328
  %135 = ashr i32 %134, 16
  %136 = icmp ne i32 %135, 66
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* %12, align 4
  %139 = or i32 %138, 1
  store i32 %139, i32* %12, align 4
  br label %142

140:                                              ; preds = %132, %127, %66
  %141 = load i32, i32* %12, align 4
  store i32 %141, i32* %3, align 4
  br label %167

142:                                              ; preds = %137
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @BIT(i32 27)
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %160, label %147

147:                                              ; preds = %142
  %148 = load i32, i32* %11, align 4
  %149 = and i32 %148, 67043328
  %150 = ashr i32 %149, 16
  %151 = icmp ne i32 %150, 306
  br i1 %151, label %152, label %160

152:                                              ; preds = %147
  %153 = load i32, i32* %8, align 4
  %154 = and i32 %153, 67043328
  %155 = ashr i32 %154, 16
  %156 = icmp ne i32 %155, 54
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load i32, i32* %12, align 4
  %159 = or i32 %158, 2
  store i32 %159, i32* %12, align 4
  br label %165

160:                                              ; preds = %152, %147, %142
  %161 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %162 = load i32, i32* @FINIT, align 4
  %163 = load i32, i32* @INIT_IQK, align 4
  %164 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %161, i32 %162, i32 %163, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %165

165:                                              ; preds = %160, %157
  %166 = load i32, i32* %12, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %165, %140
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

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
