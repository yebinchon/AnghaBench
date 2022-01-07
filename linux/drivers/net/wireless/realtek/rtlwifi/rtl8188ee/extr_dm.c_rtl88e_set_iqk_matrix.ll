; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_set_iqk_matrix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_dm.c_rtl88e_set_iqk_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@ofdmswing_table = common dso_local global i32* null, align 8
@ROFDM0_XATXIQIMBALANCE = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@ROFDM0_XCTXAFE = common dso_local global i32 0, align 4
@MASKH4BITS = common dso_local global i32 0, align 4
@ROFDM0_ECCATHRESHOLD = common dso_local global i32 0, align 4
@ROFDM0_XBTXIQIMBALANCE = common dso_local global i32 0, align 4
@ROFDM0_XDTXAFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64, i64, i64, i64)* @rtl88e_set_iqk_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl88e_set_iqk_matrix(%struct.ieee80211_hw* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %13, align 8
  %15 = load i32*, i32** @ofdmswing_table, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, -4194304
  %20 = lshr i32 %19, 22
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %122

24:                                               ; preds = %5
  %25 = load i64, i64* %9, align 8
  %26 = and i64 %25, 512
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i64, i64* %9, align 8
  %30 = or i64 %29, 4294966272
  store i64 %30, i64* %9, align 8
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %12, align 8
  %34 = mul nsw i64 %32, %33
  %35 = ashr i64 %34, 8
  %36 = and i64 %35, 1023
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %10, align 8
  %38 = and i64 %37, 512
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i64, i64* %10, align 8
  %42 = or i64 %41, 4294966272
  store i64 %42, i64* %10, align 8
  br label %43

43:                                               ; preds = %40, %31
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %12, align 8
  %46 = mul nsw i64 %44, %45
  %47 = ashr i64 %46, 8
  %48 = and i64 %47, 1023
  store i64 %48, i64* %13, align 8
  %49 = load i64, i64* %8, align 8
  switch i64 %49, label %120 [
    i64 129, label %50
    i64 128, label %85
  ]

50:                                               ; preds = %43
  %51 = load i64, i64* %12, align 8
  %52 = shl i64 %51, 22
  %53 = load i64, i64* %13, align 8
  %54 = and i64 %53, 63
  %55 = shl i64 %54, 16
  %56 = or i64 %52, %55
  %57 = load i64, i64* %11, align 8
  %58 = or i64 %56, %57
  store i64 %58, i64* %14, align 8
  %59 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %60 = load i32, i32* @ROFDM0_XATXIQIMBALANCE, align 4
  %61 = load i32, i32* @MASKDWORD, align 4
  %62 = load i64, i64* %14, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %59, i32 %60, i32 %61, i32 %63)
  %65 = load i64, i64* %13, align 8
  %66 = and i64 %65, 960
  %67 = ashr i64 %66, 6
  store i64 %67, i64* %14, align 8
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %69 = load i32, i32* @ROFDM0_XCTXAFE, align 4
  %70 = load i32, i32* @MASKH4BITS, align 4
  %71 = load i64, i64* %14, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %68, i32 %69, i32 %70, i32 %72)
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %12, align 8
  %76 = mul nsw i64 %74, %75
  %77 = ashr i64 %76, 7
  %78 = and i64 %77, 1
  store i64 %78, i64* %14, align 8
  %79 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %80 = load i32, i32* @ROFDM0_ECCATHRESHOLD, align 4
  %81 = call i32 @BIT(i32 24)
  %82 = load i64, i64* %14, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %79, i32 %80, i32 %81, i32 %83)
  br label %121

85:                                               ; preds = %43
  %86 = load i64, i64* %12, align 8
  %87 = shl i64 %86, 22
  %88 = load i64, i64* %13, align 8
  %89 = and i64 %88, 63
  %90 = shl i64 %89, 16
  %91 = or i64 %87, %90
  %92 = load i64, i64* %11, align 8
  %93 = or i64 %91, %92
  store i64 %93, i64* %14, align 8
  %94 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %95 = load i32, i32* @ROFDM0_XBTXIQIMBALANCE, align 4
  %96 = load i32, i32* @MASKDWORD, align 4
  %97 = load i64, i64* %14, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %94, i32 %95, i32 %96, i32 %98)
  %100 = load i64, i64* %13, align 8
  %101 = and i64 %100, 960
  %102 = ashr i64 %101, 6
  store i64 %102, i64* %14, align 8
  %103 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %104 = load i32, i32* @ROFDM0_XDTXAFE, align 4
  %105 = load i32, i32* @MASKH4BITS, align 4
  %106 = load i64, i64* %14, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %103, i32 %104, i32 %105, i32 %107)
  %109 = load i64, i64* %9, align 8
  %110 = load i64, i64* %12, align 8
  %111 = mul nsw i64 %109, %110
  %112 = ashr i64 %111, 7
  %113 = and i64 %112, 1
  store i64 %113, i64* %14, align 8
  %114 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %115 = load i32, i32* @ROFDM0_ECCATHRESHOLD, align 4
  %116 = call i32 @BIT(i32 28)
  %117 = load i64, i64* %14, align 8
  %118 = trunc i64 %117 to i32
  %119 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %114, i32 %115, i32 %116, i32 %118)
  br label %121

120:                                              ; preds = %43
  br label %121

121:                                              ; preds = %120, %85, %50
  br label %160

122:                                              ; preds = %5
  %123 = load i64, i64* %8, align 8
  switch i64 %123, label %158 [
    i64 129, label %124
    i64 128, label %141
  ]

124:                                              ; preds = %122
  %125 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %126 = load i32, i32* @ROFDM0_XATXIQIMBALANCE, align 4
  %127 = load i32, i32* @MASKDWORD, align 4
  %128 = load i32*, i32** @ofdmswing_table, align 8
  %129 = load i64, i64* %7, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %125, i32 %126, i32 %127, i32 %131)
  %133 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %134 = load i32, i32* @ROFDM0_XCTXAFE, align 4
  %135 = load i32, i32* @MASKH4BITS, align 4
  %136 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %133, i32 %134, i32 %135, i32 0)
  %137 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %138 = load i32, i32* @ROFDM0_ECCATHRESHOLD, align 4
  %139 = call i32 @BIT(i32 24)
  %140 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %137, i32 %138, i32 %139, i32 0)
  br label %159

141:                                              ; preds = %122
  %142 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %143 = load i32, i32* @ROFDM0_XBTXIQIMBALANCE, align 4
  %144 = load i32, i32* @MASKDWORD, align 4
  %145 = load i32*, i32** @ofdmswing_table, align 8
  %146 = load i64, i64* %7, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %142, i32 %143, i32 %144, i32 %148)
  %150 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %151 = load i32, i32* @ROFDM0_XDTXAFE, align 4
  %152 = load i32, i32* @MASKH4BITS, align 4
  %153 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %150, i32 %151, i32 %152, i32 0)
  %154 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %155 = load i32, i32* @ROFDM0_ECCATHRESHOLD, align 4
  %156 = call i32 @BIT(i32 28)
  %157 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %154, i32 %155, i32 %156, i32 0)
  br label %159

158:                                              ; preds = %122
  br label %159

159:                                              ; preds = %158, %141, %124
  br label %160

160:                                              ; preds = %159, %121
  ret void
}

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
