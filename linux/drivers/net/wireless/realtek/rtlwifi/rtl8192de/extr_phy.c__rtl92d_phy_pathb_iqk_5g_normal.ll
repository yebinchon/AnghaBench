; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_pathb_iqk_5g_normal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_pathb_iqk_5g_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32* }

@FINIT = common dso_local global i32 0, align 4
@INIT_IQK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Path B IQK!\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Path-A IQK setting!\0A\00", align 1
@MASKDWORD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"LO calibration setting!\0A\00", align 1
@RFPGA0_XAB_RFINTERFACESW = common dso_local global i32 0, align 4
@RFPGA0_XB_RFINTERFACEOE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"One shot, path A LOK & IQK!\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Delay %d ms for One shot, path B LOK & IQK.\0A\00", align 1
@IQK_DELAY_TIME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"0xeac = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"0xeb4 = 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"0xebc = 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"0xec4 = 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"0xecc = 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Path B Rx IQK fail!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ieee80211_hw*)* @_rtl92d_phy_pathb_iqk_5g_normal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_rtl92d_phy_pathb_iqk_5g_normal(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  store %struct.rtl_priv* %14, %struct.rtl_priv** %3, align 8
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %16 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %15, i32 0, i32 0
  store %struct.rtl_phy* %16, %struct.rtl_phy** %4, align 8
  store i64 0, i64* %10, align 8
  store i64 2, i64* %12, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %18 = load i32, i32* @FINIT, align 4
  %19 = load i32, i32* @INIT_IQK, align 4
  %20 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %22 = load i32, i32* @FINIT, align 4
  %23 = load i32, i32* @INIT_IQK, align 4
  %24 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %21, i32 %22, i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %26 = load i32, i32* @MASKDWORD, align 4
  %27 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %25, i32 3632, i32 %26, i32 402689055)
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %29 = load i32, i32* @MASKDWORD, align 4
  %30 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %28, i32 3636, i32 %29, i32 402689055)
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %32 = load i32, i32* @MASKDWORD, align 4
  %33 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %31, i32 3640, i32 %32, i32 -2112815104)
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %35 = load i32, i32* @MASKDWORD, align 4
  %36 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %34, i32 3644, i32 %35, i32 1745944576)
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %38 = load i32, i32* @MASKDWORD, align 4
  %39 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %37, i32 3664, i32 %38, i32 402689071)
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %41 = load i32, i32* @MASKDWORD, align 4
  %42 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %40, i32 3668, i32 %41, i32 402689071)
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %44 = load i32, i32* @MASKDWORD, align 4
  %45 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %43, i32 3672, i32 %44, i32 -2112617721)
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %47 = load i32, i32* @MASKDWORD, align 4
  %48 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %46, i32 3676, i32 %47, i32 1746274656)
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %50 = load i32, i32* @FINIT, align 4
  %51 = load i32, i32* @INIT_IQK, align 4
  %52 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %54 = load i32, i32* @MASKDWORD, align 4
  %55 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %53, i32 3660, i32 %54, i32 4598033)
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %57 = load i32, i32* @RFPGA0_XAB_RFINTERFACESW, align 4
  %58 = load i32, i32* @MASKDWORD, align 4
  %59 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %56, i32 %57, i32 %58, i32 257951488)
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %61 = load i32, i32* @RFPGA0_XB_RFINTERFACEOE, align 4
  %62 = load i32, i32* @MASKDWORD, align 4
  %63 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %60, i32 %61, i32 %62, i32 102698288)
  store i64 0, i64* %11, align 8
  br label %64

64:                                               ; preds = %158, %1
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %12, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %161

68:                                               ; preds = %64
  %69 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %70 = load i32, i32* @FINIT, align 4
  %71 = load i32, i32* @INIT_IQK, align 4
  %72 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %69, i32 %70, i32 %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %73 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %74 = load i32, i32* @MASKDWORD, align 4
  %75 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %73, i32 3656, i32 %74, i32 -100663296)
  %76 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %77 = load i32, i32* @MASKDWORD, align 4
  %78 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %76, i32 3656, i32 %77, i32 -134217728)
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %80 = load i32, i32* @FINIT, align 4
  %81 = load i32, i32* @INIT_IQK, align 4
  %82 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %79, i32 %80, i32 %81, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 10)
  %83 = load i32, i32* @IQK_DELAY_TIME, align 4
  %84 = mul nsw i32 %83, 10
  %85 = call i32 @mdelay(i32 %84)
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %87 = load i32, i32* @MASKDWORD, align 4
  %88 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %86, i32 3756, i32 %87)
  store i32 %88, i32* %5, align 4
  %89 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %90 = load i32, i32* @FINIT, align 4
  %91 = load i32, i32* @INIT_IQK, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %89, i32 %90, i32 %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  %94 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %95 = load i32, i32* @MASKDWORD, align 4
  %96 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %94, i32 3764, i32 %95)
  store i32 %96, i32* %6, align 4
  %97 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %98 = load i32, i32* @FINIT, align 4
  %99 = load i32, i32* @INIT_IQK, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %97, i32 %98, i32 %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %100)
  %102 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %103 = load i32, i32* @MASKDWORD, align 4
  %104 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %102, i32 3772, i32 %103)
  store i32 %104, i32* %7, align 4
  %105 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %106 = load i32, i32* @FINIT, align 4
  %107 = load i32, i32* @INIT_IQK, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %105, i32 %106, i32 %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %108)
  %110 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %111 = load i32, i32* @MASKDWORD, align 4
  %112 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %110, i32 3780, i32 %111)
  store i32 %112, i32* %8, align 4
  %113 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %114 = load i32, i32* @FINIT, align 4
  %115 = load i32, i32* @INIT_IQK, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %113, i32 %114, i32 %115, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %116)
  %118 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %119 = load i32, i32* @MASKDWORD, align 4
  %120 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %118, i32 3788, i32 %119)
  store i32 %120, i32* %9, align 4
  %121 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %122 = load i32, i32* @FINIT, align 4
  %123 = load i32, i32* @INIT_IQK, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %121, i32 %122, i32 %123, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @BIT(i32 31)
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %68
  %131 = load i32, i32* %6, align 4
  %132 = and i32 %131, 67043328
  %133 = ashr i32 %132, 16
  %134 = icmp ne i32 %133, 322
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i64, i64* %10, align 8
  %137 = or i64 %136, 1
  store i64 %137, i64* %10, align 8
  br label %139

138:                                              ; preds = %130, %68
  br label %158

139:                                              ; preds = %135
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @BIT(i32 30)
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %139
  %145 = load i32, i32* %8, align 4
  %146 = and i32 %145, 67043328
  %147 = ashr i32 %146, 16
  %148 = icmp ne i32 %147, 306
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i64, i64* %10, align 8
  %151 = or i64 %150, 2
  store i64 %151, i64* %10, align 8
  br label %161

152:                                              ; preds = %144, %139
  %153 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %154 = load i32, i32* @FINIT, align 4
  %155 = load i32, i32* @INIT_IQK, align 4
  %156 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %153, i32 %154, i32 %155, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %157

157:                                              ; preds = %152
  br label %158

158:                                              ; preds = %157, %138
  %159 = load i64, i64* %11, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %11, align 8
  br label %64

161:                                              ; preds = %149, %64
  %162 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %163 = load i32, i32* @RFPGA0_XAB_RFINTERFACESW, align 4
  %164 = load i32, i32* @MASKDWORD, align 4
  %165 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %166 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %162, i32 %163, i32 %164, i32 %169)
  %171 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %172 = load i32, i32* @RFPGA0_XB_RFINTERFACEOE, align 4
  %173 = load i32, i32* @MASKDWORD, align 4
  %174 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %175 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 2
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %171, i32 %172, i32 %173, i32 %178)
  %180 = load i64, i64* %10, align 8
  ret i64 %180
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
