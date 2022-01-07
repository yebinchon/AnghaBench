; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_get_secondary_chnl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_get_secondary_chnl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64 }
%struct.rtl_mac = type { i64, i64 }

@HT_CHANNEL_WIDTH_80 = common dso_local global i64 0, align 8
@PRIME_CHNL_OFFSET_LOWER = common dso_local global i64 0, align 8
@VHT_DATA_SC_40_LOWER_OF_80MHZ = common dso_local global i32 0, align 4
@PRIME_CHNL_OFFSET_UPPER = common dso_local global i64 0, align 8
@VHT_DATA_SC_40_UPPER_OF_80MHZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"SCMapping: Not Correct Primary40MHz Setting\0A\00", align 1
@HAL_PRIME_CHNL_OFFSET_LOWER = common dso_local global i64 0, align 8
@VHT_DATA_SC_20_LOWEST_OF_80MHZ = common dso_local global i32 0, align 4
@VHT_DATA_SC_20_LOWER_OF_80MHZ = common dso_local global i32 0, align 4
@HAL_PRIME_CHNL_OFFSET_UPPER = common dso_local global i64 0, align 8
@VHT_DATA_SC_20_UPPER_OF_80MHZ = common dso_local global i32 0, align 4
@VHT_DATA_SC_20_UPPERST_OF_80MHZ = common dso_local global i32 0, align 4
@HT_CHANNEL_WIDTH_20_40 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl_priv*)* @_rtl8821ae_phy_get_secondary_chnl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8821ae_phy_get_secondary_chnl(%struct.rtl_priv* %0) #0 {
  %2 = alloca %struct.rtl_priv*, align 8
  %3 = alloca %struct.rtl_phy*, align 8
  %4 = alloca %struct.rtl_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtl_priv* %0, %struct.rtl_priv** %2, align 8
  %7 = load %struct.rtl_priv*, %struct.rtl_priv** %2, align 8
  %8 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %7, i32 0, i32 0
  store %struct.rtl_phy* %8, %struct.rtl_phy** %3, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %2, align 8
  %10 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %9)
  store %struct.rtl_mac* %10, %struct.rtl_mac** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.rtl_phy*, %struct.rtl_phy** %3, align 8
  %12 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HT_CHANNEL_WIDTH_80, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %97

16:                                               ; preds = %1
  %17 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %18 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PRIME_CHNL_OFFSET_LOWER, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @VHT_DATA_SC_40_LOWER_OF_80MHZ, align 4
  store i32 %23, i32* %5, align 4
  br label %35

24:                                               ; preds = %16
  %25 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %26 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PRIME_CHNL_OFFSET_UPPER, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @VHT_DATA_SC_40_UPPER_OF_80MHZ, align 4
  store i32 %31, i32* %5, align 4
  br label %34

32:                                               ; preds = %24
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %30
  br label %35

35:                                               ; preds = %34, %22
  %36 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %37 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PRIME_CHNL_OFFSET_LOWER, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %43 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_LOWER, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @VHT_DATA_SC_20_LOWEST_OF_80MHZ, align 4
  store i32 %48, i32* %6, align 4
  br label %96

49:                                               ; preds = %41, %35
  %50 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %51 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PRIME_CHNL_OFFSET_UPPER, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %57 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_LOWER, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @VHT_DATA_SC_20_LOWER_OF_80MHZ, align 4
  store i32 %62, i32* %6, align 4
  br label %95

63:                                               ; preds = %55, %49
  %64 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %65 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @PRIME_CHNL_OFFSET_LOWER, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %71 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_UPPER, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* @VHT_DATA_SC_20_UPPER_OF_80MHZ, align 4
  store i32 %76, i32* %6, align 4
  br label %94

77:                                               ; preds = %69, %63
  %78 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %79 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PRIME_CHNL_OFFSET_UPPER, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %85 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @HAL_PRIME_CHNL_OFFSET_UPPER, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* @VHT_DATA_SC_20_UPPERST_OF_80MHZ, align 4
  store i32 %90, i32* %6, align 4
  br label %93

91:                                               ; preds = %83, %77
  %92 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %89
  br label %94

94:                                               ; preds = %93, %75
  br label %95

95:                                               ; preds = %94, %61
  br label %96

96:                                               ; preds = %95, %47
  br label %124

97:                                               ; preds = %1
  %98 = load %struct.rtl_phy*, %struct.rtl_phy** %3, align 8
  %99 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @HT_CHANNEL_WIDTH_20_40, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %123

103:                                              ; preds = %97
  %104 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %105 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @PRIME_CHNL_OFFSET_UPPER, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* @VHT_DATA_SC_20_UPPER_OF_80MHZ, align 4
  store i32 %110, i32* %6, align 4
  br label %122

111:                                              ; preds = %103
  %112 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %113 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @PRIME_CHNL_OFFSET_LOWER, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i32, i32* @VHT_DATA_SC_20_LOWER_OF_80MHZ, align 4
  store i32 %118, i32* %6, align 4
  br label %121

119:                                              ; preds = %111
  %120 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %117
  br label %122

122:                                              ; preds = %121, %109
  br label %123

123:                                              ; preds = %122, %97
  br label %124

124:                                              ; preds = %123, %96
  %125 = load i32, i32* %5, align 4
  %126 = shl i32 %125, 4
  %127 = load i32, i32* %6, align 4
  %128 = or i32 %126, %127
  ret i32 %128
}

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
