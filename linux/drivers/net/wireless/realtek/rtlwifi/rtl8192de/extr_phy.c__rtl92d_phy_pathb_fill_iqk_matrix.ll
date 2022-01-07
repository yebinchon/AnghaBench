; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_pathb_fill_iqk_matrix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_pathb_fill_iqk_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_hal }
%struct.rtl_hal = type { i64 }

@FINIT = common dso_local global i32 0, align 4
@INIT_IQK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Path B IQ Calibration %s !\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Failed\00", align 1
@ROFDM0_XBTXIQIMBALANCE = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"X = 0x%x, tx1_a = 0x%x\0A\00", align 1
@ROFDM0_ECCATHRESHOLD = common dso_local global i32 0, align 4
@BAND_ON_5G = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"Y = 0x%lx, tx1_c = 0x%lx\0A\00", align 1
@ROFDM0_XDTXAFE = common dso_local global i32 0, align 4
@ROFDM0_XBRXIQIMBALANCE = common dso_local global i32 0, align 4
@ROFDM0_AGCRSSITABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, [8 x i64]*, i32, i32)* @_rtl92d_phy_pathb_fill_iqk_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92d_phy_pathb_fill_iqk_matrix(%struct.ieee80211_hw* %0, i32 %1, [8 x i64]* %2, i32 %3, i32 %4) #0 {
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
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store [8 x i64]* %2, [8 x i64]** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %20 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %19)
  store %struct.rtl_priv* %20, %struct.rtl_priv** %11, align 8
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %22 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %21, i32 0, i32 0
  store %struct.rtl_hal* %22, %struct.rtl_hal** %12, align 8
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %24 = load i32, i32* @FINIT, align 4
  %25 = load i32, i32* @INIT_IQK, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %30 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %23, i32 %24, i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, 255
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  br label %179

34:                                               ; preds = %5
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %178

37:                                               ; preds = %34
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %39 = load i32, i32* @ROFDM0_XBTXIQIMBALANCE, align 4
  %40 = load i32, i32* @MASKDWORD, align 4
  %41 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %38, i32 %39, i32 %40)
  %42 = ashr i32 %41, 22
  %43 = and i32 %42, 1023
  store i32 %43, i32* %13, align 4
  %44 = load [8 x i64]*, [8 x i64]** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [8 x i64], [8 x i64]* %44, i64 %46
  %48 = getelementptr inbounds [8 x i64], [8 x i64]* %47, i64 0, i64 4
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = and i32 %51, 512
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %37
  %55 = load i32, i32* %14, align 4
  %56 = or i32 %55, -1024
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %54, %37
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %13, align 4
  %60 = mul nsw i32 %58, %59
  %61 = ashr i32 %60, 8
  store i32 %61, i32* %15, align 4
  %62 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %63 = load i32, i32* @FINIT, align 4
  %64 = load i32, i32* @INIT_IQK, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %15, align 4
  %67 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %62, i32 %63, i32 %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %69 = load i32, i32* @ROFDM0_XBTXIQIMBALANCE, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %68, i32 %69, i32 1023, i32 %70)
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %73 = load i32, i32* @ROFDM0_ECCATHRESHOLD, align 4
  %74 = call i32 @BIT(i32 28)
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %13, align 4
  %77 = mul nsw i32 %75, %76
  %78 = ashr i32 %77, 7
  %79 = and i32 %78, 1
  %80 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %72, i32 %73, i32 %74, i32 %79)
  %81 = load [8 x i64]*, [8 x i64]** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [8 x i64], [8 x i64]* %81, i64 %83
  %85 = getelementptr inbounds [8 x i64], [8 x i64]* %84, i64 0, i64 5
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %17, align 8
  %87 = load i64, i64* %17, align 8
  %88 = and i64 %87, 512
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %57
  %91 = load i64, i64* %17, align 8
  %92 = or i64 %91, 4294966272
  store i64 %92, i64* %17, align 8
  br label %93

93:                                               ; preds = %90, %57
  %94 = load %struct.rtl_hal*, %struct.rtl_hal** %12, align 8
  %95 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @BAND_ON_5G, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i64, i64* %17, align 8
  %101 = add nsw i64 %100, 3
  store i64 %101, i64* %17, align 8
  br label %102

102:                                              ; preds = %99, %93
  %103 = load i64, i64* %17, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = mul nsw i64 %103, %105
  %107 = ashr i64 %106, 8
  store i64 %107, i64* %18, align 8
  %108 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %109 = load i32, i32* @FINIT, align 4
  %110 = load i32, i32* @INIT_IQK, align 4
  %111 = load i64, i64* %17, align 8
  %112 = load i64, i64* %18, align 8
  %113 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RTPRINT(%struct.rtl_priv* %108, i32 %109, i32 %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %111, i64 %112)
  %114 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %115 = load i32, i32* @ROFDM0_XDTXAFE, align 4
  %116 = load i64, i64* %18, align 8
  %117 = and i64 %116, 960
  %118 = ashr i64 %117, 6
  %119 = trunc i64 %118 to i32
  %120 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %114, i32 %115, i32 -268435456, i32 %119)
  %121 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %122 = load i32, i32* @ROFDM0_XBTXIQIMBALANCE, align 4
  %123 = load i64, i64* %18, align 8
  %124 = and i64 %123, 63
  %125 = trunc i64 %124 to i32
  %126 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %121, i32 %122, i32 4128768, i32 %125)
  %127 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %128 = load i32, i32* @ROFDM0_ECCATHRESHOLD, align 4
  %129 = call i32 @BIT(i32 30)
  %130 = load i64, i64* %17, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = mul nsw i64 %130, %132
  %134 = ashr i64 %133, 7
  %135 = and i64 %134, 1
  %136 = trunc i64 %135 to i32
  %137 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %127, i32 %128, i32 %129, i32 %136)
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %102
  br label %179

141:                                              ; preds = %102
  %142 = load [8 x i64]*, [8 x i64]** %8, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [8 x i64], [8 x i64]* %142, i64 %144
  %146 = getelementptr inbounds [8 x i64], [8 x i64]* %145, i64 0, i64 6
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %16, align 4
  %149 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %150 = load i32, i32* @ROFDM0_XBRXIQIMBALANCE, align 4
  %151 = load i32, i32* %16, align 4
  %152 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %149, i32 %150, i32 1023, i32 %151)
  %153 = load [8 x i64]*, [8 x i64]** %8, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [8 x i64], [8 x i64]* %153, i64 %155
  %157 = getelementptr inbounds [8 x i64], [8 x i64]* %156, i64 0, i64 7
  %158 = load i64, i64* %157, align 8
  %159 = and i64 %158, 63
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %16, align 4
  %161 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %162 = load i32, i32* @ROFDM0_XBRXIQIMBALANCE, align 4
  %163 = load i32, i32* %16, align 4
  %164 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %161, i32 %162, i32 64512, i32 %163)
  %165 = load [8 x i64]*, [8 x i64]** %8, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [8 x i64], [8 x i64]* %165, i64 %167
  %169 = getelementptr inbounds [8 x i64], [8 x i64]* %168, i64 0, i64 7
  %170 = load i64, i64* %169, align 8
  %171 = ashr i64 %170, 6
  %172 = and i64 %171, 15
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %16, align 4
  %174 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %175 = load i32, i32* @ROFDM0_AGCRSSITABLE, align 4
  %176 = load i32, i32* %16, align 4
  %177 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %174, i32 %175, i32 61440, i32 %176)
  br label %178

178:                                              ; preds = %141, %34
  br label %179

179:                                              ; preds = %33, %140, %178
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

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
