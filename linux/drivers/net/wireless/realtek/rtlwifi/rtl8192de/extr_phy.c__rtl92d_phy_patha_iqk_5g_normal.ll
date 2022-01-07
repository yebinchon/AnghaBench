; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_patha_iqk_5g_normal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_patha_iqk_5g_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32* }
%struct.rtl_hal = type { i32 }

@FINIT = common dso_local global i32 0, align 4
@INIT_IQK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Path A IQK!\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Path-A IQK setting!\0A\00", align 1
@MASKDWORD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"LO calibration setting!\0A\00", align 1
@RFPGA0_XAB_RFINTERFACESW = common dso_local global i32 0, align 4
@RFPGA0_XA_RFINTERFACEOE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"One shot, path A LOK & IQK!\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Delay %d ms for One shot, path A LOK & IQK.\0A\00", align 1
@IQK_DELAY_TIME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"0xeac = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"0xe94 = 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"0xe9c = 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"0xea4 = 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Path A Tx IQK fail!!\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Path A Rx IQK fail!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ieee80211_hw*, i32)* @_rtl92d_phy_patha_iqk_5g_normal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_rtl92d_phy_patha_iqk_5g_normal(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca %struct.rtl_phy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %18 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %17)
  store %struct.rtl_priv* %18, %struct.rtl_priv** %5, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %20 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %19)
  %21 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %20)
  store %struct.rtl_hal* %21, %struct.rtl_hal** %6, align 8
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %23 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %22, i32 0, i32 0
  store %struct.rtl_phy* %23, %struct.rtl_phy** %7, align 8
  store i64 0, i64* %12, align 8
  store i64 2, i64* %14, align 8
  %24 = call i32 @BIT(i32 28)
  store i32 %24, i32* %15, align 4
  %25 = call i32 @BIT(i32 27)
  store i32 %25, i32* %16, align 4
  %26 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %27 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = call i32 @BIT(i32 31)
  store i32 %31, i32* %15, align 4
  %32 = call i32 @BIT(i32 30)
  store i32 %32, i32* %16, align 4
  br label %33

33:                                               ; preds = %30, %2
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %35 = load i32, i32* @FINIT, align 4
  %36 = load i32, i32* @INIT_IQK, align 4
  %37 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %34, i32 %35, i32 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %39 = load i32, i32* @FINIT, align 4
  %40 = load i32, i32* @INIT_IQK, align 4
  %41 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %38, i32 %39, i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %43 = load i32, i32* @MASKDWORD, align 4
  %44 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %42, i32 3632, i32 %43, i32 402689055)
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %46 = load i32, i32* @MASKDWORD, align 4
  %47 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %45, i32 3636, i32 %46, i32 402689055)
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %49 = load i32, i32* @MASKDWORD, align 4
  %50 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %48, i32 3640, i32 %49, i32 -2112617721)
  %51 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %52 = load i32, i32* @MASKDWORD, align 4
  %53 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %51, i32 3644, i32 %52, i32 1746274656)
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %33
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %58 = load i32, i32* @MASKDWORD, align 4
  %59 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %57, i32 3664, i32 %58, i32 402689071)
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %61 = load i32, i32* @MASKDWORD, align 4
  %62 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %60, i32 3668, i32 %61, i32 402689071)
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %64 = load i32, i32* @MASKDWORD, align 4
  %65 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %63, i32 3672, i32 %64, i32 -2112815104)
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %67 = load i32, i32* @MASKDWORD, align 4
  %68 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %66, i32 3676, i32 %67, i32 1745944576)
  br label %69

69:                                               ; preds = %56, %33
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %71 = load i32, i32* @FINIT, align 4
  %72 = load i32, i32* @INIT_IQK, align 4
  %73 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %70, i32 %71, i32 %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %75 = load i32, i32* @MASKDWORD, align 4
  %76 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %74, i32 3660, i32 %75, i32 4598033)
  %77 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %78 = load i32, i32* @RFPGA0_XAB_RFINTERFACESW, align 4
  %79 = load i32, i32* @MASKDWORD, align 4
  %80 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %77, i32 %78, i32 %79, i32 117444448)
  %81 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %82 = load i32, i32* @RFPGA0_XA_RFINTERFACEOE, align 4
  %83 = load i32, i32* @MASKDWORD, align 4
  %84 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %81, i32 %82, i32 %83, i32 1726352944)
  store i64 0, i64* %13, align 8
  br label %85

85:                                               ; preds = %176, %69
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* %14, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %179

89:                                               ; preds = %85
  %90 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %91 = load i32, i32* @FINIT, align 4
  %92 = load i32, i32* @INIT_IQK, align 4
  %93 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %90, i32 %91, i32 %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %94 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %95 = load i32, i32* @MASKDWORD, align 4
  %96 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %94, i32 3656, i32 %95, i32 -117440512)
  %97 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %98 = load i32, i32* @MASKDWORD, align 4
  %99 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %97, i32 3656, i32 %98, i32 -134217728)
  %100 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %101 = load i32, i32* @FINIT, align 4
  %102 = load i32, i32* @INIT_IQK, align 4
  %103 = load i32, i32* @IQK_DELAY_TIME, align 4
  %104 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %100, i32 %101, i32 %102, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @IQK_DELAY_TIME, align 4
  %106 = mul nsw i32 %105, 10
  %107 = call i32 @mdelay(i32 %106)
  %108 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %109 = load i32, i32* @MASKDWORD, align 4
  %110 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %108, i32 3756, i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %112 = load i32, i32* @FINIT, align 4
  %113 = load i32, i32* @INIT_IQK, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %111, i32 %112, i32 %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %114)
  %116 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %117 = load i32, i32* @MASKDWORD, align 4
  %118 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %116, i32 3732, i32 %117)
  store i32 %118, i32* %9, align 4
  %119 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %120 = load i32, i32* @FINIT, align 4
  %121 = load i32, i32* @INIT_IQK, align 4
  %122 = load i32, i32* %9, align 4
  %123 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %119, i32 %120, i32 %121, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %122)
  %124 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %125 = load i32, i32* @MASKDWORD, align 4
  %126 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %124, i32 3740, i32 %125)
  store i32 %126, i32* %10, align 4
  %127 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %128 = load i32, i32* @FINIT, align 4
  %129 = load i32, i32* @INIT_IQK, align 4
  %130 = load i32, i32* %10, align 4
  %131 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %127, i32 %128, i32 %129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %130)
  %132 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %133 = load i32, i32* @MASKDWORD, align 4
  %134 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %132, i32 3748, i32 %133)
  store i32 %134, i32* %11, align 4
  %135 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %136 = load i32, i32* @FINIT, align 4
  %137 = load i32, i32* @INIT_IQK, align 4
  %138 = load i32, i32* %11, align 4
  %139 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %135, i32 %136, i32 %137, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %15, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %89
  %145 = load i32, i32* %9, align 4
  %146 = and i32 %145, 67043328
  %147 = ashr i32 %146, 16
  %148 = icmp ne i32 %147, 322
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i64, i64* %12, align 8
  %151 = or i64 %150, 1
  store i64 %151, i64* %12, align 8
  br label %157

152:                                              ; preds = %144, %89
  %153 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %154 = load i32, i32* @FINIT, align 4
  %155 = load i32, i32* @INIT_IQK, align 4
  %156 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %153, i32 %154, i32 %155, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %176

157:                                              ; preds = %149
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %16, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %170, label %162

162:                                              ; preds = %157
  %163 = load i32, i32* %11, align 4
  %164 = and i32 %163, 67043328
  %165 = ashr i32 %164, 16
  %166 = icmp ne i32 %165, 306
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load i64, i64* %12, align 8
  %169 = or i64 %168, 2
  store i64 %169, i64* %12, align 8
  br label %179

170:                                              ; preds = %162, %157
  %171 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %172 = load i32, i32* @FINIT, align 4
  %173 = load i32, i32* @INIT_IQK, align 4
  %174 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %171, i32 %172, i32 %173, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %175

175:                                              ; preds = %170
  br label %176

176:                                              ; preds = %175, %152
  %177 = load i64, i64* %13, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %13, align 8
  br label %85

179:                                              ; preds = %167, %85
  %180 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %181 = load i32, i32* @RFPGA0_XAB_RFINTERFACESW, align 4
  %182 = load i32, i32* @MASKDWORD, align 4
  %183 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %184 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %180, i32 %181, i32 %182, i32 %187)
  %189 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %190 = load i32, i32* @RFPGA0_XA_RFINTERFACEOE, align 4
  %191 = load i32, i32* @MASKDWORD, align 4
  %192 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %193 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %189, i32 %190, i32 %191, i32 %196)
  %198 = load i64, i64* %12, align 8
  ret i64 %198
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @RTPRINT(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
