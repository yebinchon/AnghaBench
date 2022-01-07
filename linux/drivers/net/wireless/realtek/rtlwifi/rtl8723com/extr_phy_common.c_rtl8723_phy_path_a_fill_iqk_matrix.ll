; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723com/extr_phy_common.c_rtl8723_phy_path_a_fill_iqk_matrix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723com/extr_phy_common.c_rtl8723_phy_path_a_fill_iqk_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@ROFDM0_XATXIQIMBALANCE = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@ROFDM0_ECCATHRESHOLD = common dso_local global i32 0, align 4
@ROFDM0_XCTXAFE = common dso_local global i32 0, align 4
@ROFDM0_XARXIQIMBALANCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723_phy_path_a_fill_iqk_matrix(%struct.ieee80211_hw* %0, i32 %1, [8 x i64]* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [8 x i64]*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store [8 x i64]* %2, [8 x i64]** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, 255
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %143

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %142

23:                                               ; preds = %20
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %25 = load i32, i32* @ROFDM0_XATXIQIMBALANCE, align 4
  %26 = load i32, i32* @MASKDWORD, align 4
  %27 = call i32 @rtl_get_bbreg(%struct.ieee80211_hw* %24, i32 %25, i32 %26)
  %28 = ashr i32 %27, 22
  %29 = and i32 %28, 1023
  store i32 %29, i32* %11, align 4
  %30 = load [8 x i64]*, [8 x i64]** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i64], [8 x i64]* %30, i64 %32
  %34 = getelementptr inbounds [8 x i64], [8 x i64]* %33, i64 0, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = and i32 %37, 512
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %23
  %41 = load i32, i32* %12, align 4
  %42 = or i32 %41, -1024
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %40, %23
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = mul nsw i32 %44, %45
  %47 = ashr i32 %46, 8
  store i32 %47, i32* %13, align 4
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %49 = load i32, i32* @ROFDM0_XATXIQIMBALANCE, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %48, i32 %49, i32 1023, i32 %50)
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %53 = load i32, i32* @ROFDM0_ECCATHRESHOLD, align 4
  %54 = call i32 @BIT(i32 31)
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %11, align 4
  %57 = mul nsw i32 %55, %56
  %58 = ashr i32 %57, 7
  %59 = and i32 %58, 1
  %60 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %52, i32 %53, i32 %54, i32 %59)
  %61 = load [8 x i64]*, [8 x i64]** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [8 x i64], [8 x i64]* %61, i64 %63
  %65 = getelementptr inbounds [8 x i64], [8 x i64]* %64, i64 0, i64 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %15, align 8
  %67 = load i64, i64* %15, align 8
  %68 = and i64 %67, 512
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %43
  %71 = load i64, i64* %15, align 8
  %72 = or i64 %71, 4294966272
  store i64 %72, i64* %15, align 8
  br label %73

73:                                               ; preds = %70, %43
  %74 = load i64, i64* %15, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = mul nsw i64 %74, %76
  %78 = ashr i64 %77, 8
  store i64 %78, i64* %16, align 8
  %79 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %80 = load i32, i32* @ROFDM0_XCTXAFE, align 4
  %81 = load i64, i64* %16, align 8
  %82 = and i64 %81, 960
  %83 = ashr i64 %82, 6
  %84 = trunc i64 %83 to i32
  %85 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %79, i32 %80, i32 -268435456, i32 %84)
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %87 = load i32, i32* @ROFDM0_XATXIQIMBALANCE, align 4
  %88 = load i64, i64* %16, align 8
  %89 = and i64 %88, 63
  %90 = trunc i64 %89 to i32
  %91 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %86, i32 %87, i32 4128768, i32 %90)
  %92 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %93 = load i32, i32* @ROFDM0_ECCATHRESHOLD, align 4
  %94 = call i32 @BIT(i32 29)
  %95 = load i64, i64* %15, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = mul nsw i64 %95, %97
  %99 = ashr i64 %98, 7
  %100 = and i64 %99, 1
  %101 = trunc i64 %100 to i32
  %102 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %92, i32 %93, i32 %94, i32 %101)
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %73
  br label %143

106:                                              ; preds = %73
  %107 = load [8 x i64]*, [8 x i64]** %8, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [8 x i64], [8 x i64]* %107, i64 %109
  %111 = getelementptr inbounds [8 x i64], [8 x i64]* %110, i64 0, i64 2
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %14, align 4
  %114 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %115 = load i32, i32* @ROFDM0_XARXIQIMBALANCE, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %114, i32 %115, i32 1023, i32 %116)
  %118 = load [8 x i64]*, [8 x i64]** %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [8 x i64], [8 x i64]* %118, i64 %120
  %122 = getelementptr inbounds [8 x i64], [8 x i64]* %121, i64 0, i64 3
  %123 = load i64, i64* %122, align 8
  %124 = and i64 %123, 63
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %14, align 4
  %126 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %127 = load i32, i32* @ROFDM0_XARXIQIMBALANCE, align 4
  %128 = load i32, i32* %14, align 4
  %129 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %126, i32 %127, i32 64512, i32 %128)
  %130 = load [8 x i64]*, [8 x i64]** %8, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [8 x i64], [8 x i64]* %130, i64 %132
  %134 = getelementptr inbounds [8 x i64], [8 x i64]* %133, i64 0, i64 3
  %135 = load i64, i64* %134, align 8
  %136 = ashr i64 %135, 6
  %137 = and i64 %136, 15
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %14, align 4
  %139 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %140 = load i32, i32* %14, align 4
  %141 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %139, i32 3232, i32 -268435456, i32 %140)
  br label %142

142:                                              ; preds = %106, %20
  br label %143

143:                                              ; preds = %19, %105, %142
  ret void
}

declare dso_local i32 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
