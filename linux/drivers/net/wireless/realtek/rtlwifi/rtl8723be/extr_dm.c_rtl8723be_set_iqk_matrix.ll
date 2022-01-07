; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_dm.c_rtl8723be_set_iqk_matrix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_dm.c_rtl8723be_set_iqk_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@ofdmswing_table = common dso_local global i32* null, align 8
@ROFDM0_XATXIQIMBALANCE = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@ROFDM0_XCTXAFE = common dso_local global i32 0, align 4
@MASKH4BITS = common dso_local global i32 0, align 4
@ROFDM0_ECCATHRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32, i64, i64)* @rtl8723be_set_iqk_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723be_set_iqk_matrix(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp sge i32 %15, 43
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 42, i32* %7, align 4
  br label %18

18:                                               ; preds = %17, %5
  %19 = load i32*, i32** @ofdmswing_table, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, -4194304
  %25 = lshr i32 %24, 22
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %92

29:                                               ; preds = %18
  %30 = load i64, i64* %9, align 8
  %31 = and i64 %30, 512
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i64, i64* %9, align 8
  %35 = or i64 %34, 4294966272
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %33, %29
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %12, align 8
  %39 = mul nsw i64 %37, %38
  %40 = ashr i64 %39, 8
  %41 = and i64 %40, 1023
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %10, align 8
  %43 = and i64 %42, 512
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i64, i64* %10, align 8
  %47 = or i64 %46, 4294966272
  store i64 %47, i64* %10, align 8
  br label %48

48:                                               ; preds = %45, %36
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %12, align 8
  %51 = mul nsw i64 %49, %50
  %52 = ashr i64 %51, 8
  %53 = and i64 %52, 1023
  store i64 %53, i64* %13, align 8
  %54 = load i32, i32* %8, align 4
  switch i32 %54, label %90 [
    i32 128, label %55
  ]

55:                                               ; preds = %48
  %56 = load i64, i64* %12, align 8
  %57 = shl i64 %56, 22
  %58 = load i64, i64* %13, align 8
  %59 = and i64 %58, 63
  %60 = shl i64 %59, 16
  %61 = or i64 %57, %60
  %62 = load i64, i64* %11, align 8
  %63 = or i64 %61, %62
  store i64 %63, i64* %14, align 8
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %65 = load i32, i32* @ROFDM0_XATXIQIMBALANCE, align 4
  %66 = load i32, i32* @MASKDWORD, align 4
  %67 = load i64, i64* %14, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %64, i32 %65, i32 %66, i32 %68)
  %70 = load i64, i64* %13, align 8
  %71 = and i64 %70, 960
  %72 = ashr i64 %71, 6
  store i64 %72, i64* %14, align 8
  %73 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %74 = load i32, i32* @ROFDM0_XCTXAFE, align 4
  %75 = load i32, i32* @MASKH4BITS, align 4
  %76 = load i64, i64* %14, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %73, i32 %74, i32 %75, i32 %77)
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* %12, align 8
  %81 = mul nsw i64 %79, %80
  %82 = ashr i64 %81, 7
  %83 = and i64 %82, 1
  store i64 %83, i64* %14, align 8
  %84 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %85 = load i32, i32* @ROFDM0_ECCATHRESHOLD, align 4
  %86 = call i32 @BIT(i32 24)
  %87 = load i64, i64* %14, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %84, i32 %85, i32 %86, i32 %88)
  br label %91

90:                                               ; preds = %48
  br label %91

91:                                               ; preds = %90, %55
  br label %114

92:                                               ; preds = %18
  %93 = load i32, i32* %8, align 4
  switch i32 %93, label %112 [
    i32 128, label %94
  ]

94:                                               ; preds = %92
  %95 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %96 = load i32, i32* @ROFDM0_XATXIQIMBALANCE, align 4
  %97 = load i32, i32* @MASKDWORD, align 4
  %98 = load i32*, i32** @ofdmswing_table, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %95, i32 %96, i32 %97, i32 %102)
  %104 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %105 = load i32, i32* @ROFDM0_XCTXAFE, align 4
  %106 = load i32, i32* @MASKH4BITS, align 4
  %107 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %104, i32 %105, i32 %106, i32 0)
  %108 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %109 = load i32, i32* @ROFDM0_ECCATHRESHOLD, align 4
  %110 = call i32 @BIT(i32 24)
  %111 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %108, i32 %109, i32 %110, i32 0)
  br label %113

112:                                              ; preds = %92
  br label %113

113:                                              ; preds = %112, %94
  br label %114

114:                                              ; preds = %113, %91
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
