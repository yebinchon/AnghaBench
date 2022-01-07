; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_patha_fill_iqk_matrix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_patha_fill_iqk_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_hal }
%struct.rtl_hal = type { i64, i32, i64, i32 }

@DUALMAC_DUALPHY = common dso_local global i64 0, align 8
@FINIT = common dso_local global i32 0, align 4
@INIT_IQK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Path A IQ Calibration %s !\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Failed\00", align 1
@ROFDM0_XATXIQIMBALANCE = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"X = 0x%x, tx0_a = 0x%x, oldval_0 0x%x\0A\00", align 1
@ROFDM0_ECCATHRESHOLD = common dso_local global i32 0, align 4
@BAND_ON_5G = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"Y = 0x%lx, tx0_c = 0x%lx\0A\00", align 1
@ROFDM0_XCTXAFE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"0xC80 = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"only Tx OK\0A\00", align 1
@ROFDM0_XARXIQIMBALANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, [8 x i64]*, i32, i32)* @_rtl92d_phy_patha_fill_iqk_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92d_phy_patha_fill_iqk_matrix(%struct.ieee80211_hw* %0, i32 %1, [8 x i64]* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [8 x i64]*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rtl_priv*, align 8
  %12 = alloca %struct.rtl_hal*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store [8 x i64]* %2, [8 x i64]** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %21 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %20)
  store %struct.rtl_priv* %21, %struct.rtl_priv** %11, align 8
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %23 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %22, i32 0, i32 0
  store %struct.rtl_hal* %23, %struct.rtl_hal** %12, align 8
  %24 = load %struct.rtl_hal*, %struct.rtl_hal** %12, align 8
  %25 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @IS_92D_SINGLEPHY(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %5
  %30 = load %struct.rtl_hal*, %struct.rtl_hal** %12, align 8
  %31 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DUALMAC_DUALPHY, align 8
  %34 = icmp eq i64 %32, %33
  br label %35

35:                                               ; preds = %29, %5
  %36 = phi i1 [ true, %5 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %19, align 4
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %39 = load i32, i32* @FINIT, align 4
  %40 = load i32, i32* @INIT_IQK, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %45 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %38, i32 %39, i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 255
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  br label %215

49:                                               ; preds = %35
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %214

52:                                               ; preds = %49
  %53 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %54 = load i32, i32* @ROFDM0_XATXIQIMBALANCE, align 4
  %55 = load i32, i32* @MASKDWORD, align 4
  %56 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %53, i32 %54, i32 %55)
  %57 = ashr i32 %56, 22
  %58 = and i32 %57, 1023
  store i32 %58, i32* %13, align 4
  %59 = load [8 x i64]*, [8 x i64]** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [8 x i64], [8 x i64]* %59, i64 %61
  %63 = getelementptr inbounds [8 x i64], [8 x i64]* %62, i64 0, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = and i32 %66, 512
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %52
  %70 = load i32, i32* %14, align 4
  %71 = or i32 %70, -1024
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %69, %52
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %13, align 4
  %75 = mul nsw i32 %73, %74
  %76 = ashr i32 %75, 8
  store i32 %76, i32* %15, align 4
  %77 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %78 = load i32, i32* @FINIT, align 4
  %79 = load i32, i32* @INIT_IQK, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %77, i32 %78, i32 %79, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %80, i32 %81, i32 %82)
  %84 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %85 = load i32, i32* @ROFDM0_XATXIQIMBALANCE, align 4
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %84, i32 %85, i32 1023, i32 %86)
  %88 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %89 = load i32, i32* @ROFDM0_ECCATHRESHOLD, align 4
  %90 = call i32 @BIT(i32 24)
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %13, align 4
  %93 = mul nsw i32 %91, %92
  %94 = ashr i32 %93, 7
  %95 = and i32 %94, 1
  %96 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %88, i32 %89, i32 %90, i32 %95)
  %97 = load [8 x i64]*, [8 x i64]** %8, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [8 x i64], [8 x i64]* %97, i64 %99
  %101 = getelementptr inbounds [8 x i64], [8 x i64]* %100, i64 0, i64 1
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %17, align 8
  %103 = load i64, i64* %17, align 8
  %104 = and i64 %103, 512
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %72
  %107 = load i64, i64* %17, align 8
  %108 = or i64 %107, 4294966272
  store i64 %108, i64* %17, align 8
  br label %109

109:                                              ; preds = %106, %72
  %110 = load %struct.rtl_hal*, %struct.rtl_hal** %12, align 8
  %111 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %123

114:                                              ; preds = %109
  %115 = load %struct.rtl_hal*, %struct.rtl_hal** %12, align 8
  %116 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @BAND_ON_5G, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i64, i64* %17, align 8
  %122 = add nsw i64 %121, 3
  store i64 %122, i64* %17, align 8
  br label %123

123:                                              ; preds = %120, %114, %109
  %124 = load i64, i64* %17, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = mul nsw i64 %124, %126
  %128 = ashr i64 %127, 8
  store i64 %128, i64* %18, align 8
  %129 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %130 = load i32, i32* @FINIT, align 4
  %131 = load i32, i32* @INIT_IQK, align 4
  %132 = load i64, i64* %17, align 8
  %133 = load i64, i64* %18, align 8
  %134 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %129, i32 %130, i32 %131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %132, i64 %133)
  %135 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %136 = load i32, i32* @ROFDM0_XCTXAFE, align 4
  %137 = load i64, i64* %18, align 8
  %138 = and i64 %137, 960
  %139 = ashr i64 %138, 6
  %140 = trunc i64 %139 to i32
  %141 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %135, i32 %136, i32 -268435456, i32 %140)
  %142 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %143 = load i32, i32* @ROFDM0_XATXIQIMBALANCE, align 4
  %144 = load i64, i64* %18, align 8
  %145 = and i64 %144, 63
  %146 = trunc i64 %145 to i32
  %147 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %142, i32 %143, i32 4128768, i32 %146)
  %148 = load i32, i32* %19, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %123
  %151 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %152 = load i32, i32* @ROFDM0_ECCATHRESHOLD, align 4
  %153 = call i32 @BIT(i32 26)
  %154 = load i64, i64* %17, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = mul nsw i64 %154, %156
  %158 = ashr i64 %157, 7
  %159 = and i64 %158, 1
  %160 = trunc i64 %159 to i32
  %161 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %151, i32 %152, i32 %153, i32 %160)
  br label %162

162:                                              ; preds = %150, %123
  %163 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %164 = load i32, i32* @FINIT, align 4
  %165 = load i32, i32* @INIT_IQK, align 4
  %166 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %167 = load i32, i32* @ROFDM0_XATXIQIMBALANCE, align 4
  %168 = load i32, i32* @MASKDWORD, align 4
  %169 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %166, i32 %167, i32 %168)
  %170 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %163, i32 %164, i32 %165, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* %10, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %162
  %174 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %175 = load i32, i32* @FINIT, align 4
  %176 = load i32, i32* @INIT_IQK, align 4
  %177 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %174, i32 %175, i32 %176, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %215

178:                                              ; preds = %162
  %179 = load [8 x i64]*, [8 x i64]** %8, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [8 x i64], [8 x i64]* %179, i64 %181
  %183 = getelementptr inbounds [8 x i64], [8 x i64]* %182, i64 0, i64 2
  %184 = load i64, i64* %183, align 8
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %16, align 4
  %186 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %187 = load i32, i32* @ROFDM0_XARXIQIMBALANCE, align 4
  %188 = load i32, i32* %16, align 4
  %189 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %186, i32 %187, i32 1023, i32 %188)
  %190 = load [8 x i64]*, [8 x i64]** %8, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [8 x i64], [8 x i64]* %190, i64 %192
  %194 = getelementptr inbounds [8 x i64], [8 x i64]* %193, i64 0, i64 3
  %195 = load i64, i64* %194, align 8
  %196 = and i64 %195, 63
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %16, align 4
  %198 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %199 = load i32, i32* @ROFDM0_XARXIQIMBALANCE, align 4
  %200 = load i32, i32* %16, align 4
  %201 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %198, i32 %199, i32 64512, i32 %200)
  %202 = load [8 x i64]*, [8 x i64]** %8, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [8 x i64], [8 x i64]* %202, i64 %204
  %206 = getelementptr inbounds [8 x i64], [8 x i64]* %205, i64 0, i64 3
  %207 = load i64, i64* %206, align 8
  %208 = ashr i64 %207, 6
  %209 = and i64 %208, 15
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %16, align 4
  %211 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %212 = load i32, i32* %16, align 4
  %213 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %211, i32 3232, i32 -268435456, i32 %212)
  br label %214

214:                                              ; preds = %178, %49
  br label %215

215:                                              ; preds = %48, %173, %214
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @IS_92D_SINGLEPHY(i32) #1

declare dso_local i32 @RTPRINT(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
