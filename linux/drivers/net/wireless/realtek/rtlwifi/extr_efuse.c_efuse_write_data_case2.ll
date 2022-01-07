; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_write_data_case2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_write_data_case2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.pgpkt_struct = type { i32, i32 }
%struct.rtl_priv = type { i32 }

@PG_STATE_DATA = common dso_local global i32 0, align 4
@PG_STATE_HEADER = common dso_local global i32 0, align 4
@EFUSE_REPEAT_THRESHOLD_ = common dso_local global i32 0, align 4
@FEEPROM = common dso_local global i32 0, align 4
@EFUSE_PG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"efuse PG_STATE_HEADER-2\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64*, i32*, i32*, i64, i32*, i32*)* @efuse_write_data_case2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efuse_write_data_case2(%struct.ieee80211_hw* %0, i64* %1, i32* %2, i32* %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.pgpkt_struct, align 4
  %9 = alloca %struct.ieee80211_hw*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.rtl_priv*, align 8
  %16 = alloca %struct.pgpkt_struct, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [32 x i32], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = bitcast %struct.pgpkt_struct* %8 to i64*
  store i64 %4, i64* %24, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %9, align 8
  store i64* %1, i64** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %26 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %25)
  store %struct.rtl_priv* %26, %struct.rtl_priv** %15, align 8
  store i32 15, i32* %21, align 4
  %27 = getelementptr inbounds %struct.pgpkt_struct, %struct.pgpkt_struct* %8, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 4
  %30 = and i32 %29, 240
  %31 = getelementptr inbounds %struct.pgpkt_struct, %struct.pgpkt_struct* %8, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %30, %32
  store i32 %33, i32* %17, align 4
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %35 = load i64*, i64** %10, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %17, align 4
  %38 = call i32 @efuse_one_byte_write(%struct.ieee80211_hw* %34, i64 %36, i32 %37)
  %39 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %40 = load i64*, i64** %10, align 8
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @efuse_one_byte_read(%struct.ieee80211_hw* %39, i64 %41, i32* %18)
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* %17, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %7
  %47 = load i32, i32* @PG_STATE_DATA, align 4
  %48 = load i32*, i32** %12, align 8
  store i32 %47, i32* %48, align 4
  br label %147

49:                                               ; preds = %7
  %50 = load i32, i32* %18, align 4
  %51 = icmp eq i32 %50, 255
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load i32, i32* @PG_STATE_HEADER, align 4
  %54 = load i32*, i32** %12, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load i32*, i32** %13, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @EFUSE_REPEAT_THRESHOLD_, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load i32*, i32** %11, align 8
  store i32 0, i32* %63, align 4
  %64 = load i32*, i32** %14, align 8
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %52
  br label %146

66:                                               ; preds = %49
  %67 = load i32, i32* %18, align 4
  %68 = ashr i32 %67, 4
  %69 = and i32 %68, 15
  %70 = getelementptr inbounds %struct.pgpkt_struct, %struct.pgpkt_struct* %16, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %18, align 4
  %72 = and i32 %71, 15
  %73 = getelementptr inbounds %struct.pgpkt_struct, %struct.pgpkt_struct* %16, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  %74 = getelementptr inbounds %struct.pgpkt_struct, %struct.pgpkt_struct* %16, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @efuse_calculate_word_cnts(i32 %75)
  store i32 %76, i32* %20, align 4
  %77 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 0
  %78 = call i32 @memset(i32* %77, i32 255, i32 32)
  %79 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %80 = getelementptr inbounds %struct.pgpkt_struct, %struct.pgpkt_struct* %16, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 0
  %83 = call i64 @efuse_pg_packet_read(%struct.ieee80211_hw* %79, i32 %81, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %119

85:                                               ; preds = %66
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %87 = load i64*, i64** %10, align 8
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 1
  %90 = getelementptr inbounds %struct.pgpkt_struct, %struct.pgpkt_struct* %16, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 0
  %93 = call i32 @enable_efuse_data_write(%struct.ieee80211_hw* %86, i64 %89, i32 %91, i32* %92)
  store i32 %93, i32* %21, align 4
  %94 = load i32, i32* %21, align 4
  %95 = and i32 %94, 15
  %96 = icmp ne i32 15, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %85
  %98 = getelementptr inbounds %struct.pgpkt_struct, %struct.pgpkt_struct* %16, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %22, align 4
  %100 = load i32, i32* %21, align 4
  store i32 %100, i32* %23, align 4
  %101 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %102 = load i32, i32* %22, align 4
  %103 = load i32, i32* %23, align 4
  %104 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 0
  %105 = call i32 @efuse_pg_packet_write(%struct.ieee80211_hw* %101, i32 %102, i32 %103, i32* %104)
  %106 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %107 = call i64 @efuse_get_current_size(%struct.ieee80211_hw* %106)
  %108 = load i64*, i64** %10, align 8
  store i64 %107, i64* %108, align 8
  br label %118

109:                                              ; preds = %85
  %110 = load i64*, i64** %10, align 8
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %20, align 4
  %113 = mul nsw i32 %112, 2
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %111, %114
  %116 = add nsw i64 %115, 1
  %117 = load i64*, i64** %10, align 8
  store i64 %116, i64* %117, align 8
  br label %118

118:                                              ; preds = %109, %97
  br label %128

119:                                              ; preds = %66
  %120 = load i64*, i64** %10, align 8
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* %20, align 4
  %123 = mul nsw i32 %122, 2
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %121, %124
  %126 = add nsw i64 %125, 1
  %127 = load i64*, i64** %10, align 8
  store i64 %126, i64* %127, align 8
  br label %128

128:                                              ; preds = %119, %118
  %129 = load i32, i32* @PG_STATE_HEADER, align 4
  %130 = load i32*, i32** %12, align 8
  store i32 %129, i32* %130, align 4
  %131 = load i32*, i32** %13, align 8
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  %134 = load i32*, i32** %13, align 8
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @EFUSE_REPEAT_THRESHOLD_, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %128
  %139 = load i32*, i32** %11, align 8
  store i32 0, i32* %139, align 4
  %140 = load i32*, i32** %14, align 8
  store i32 0, i32* %140, align 4
  br label %141

141:                                              ; preds = %138, %128
  %142 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %143 = load i32, i32* @FEEPROM, align 4
  %144 = load i32, i32* @EFUSE_PG, align 4
  %145 = call i32 @RTPRINT(%struct.rtl_priv* %142, i32 %143, i32 %144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %146

146:                                              ; preds = %141, %65
  br label %147

147:                                              ; preds = %146, %46
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @efuse_one_byte_write(%struct.ieee80211_hw*, i64, i32) #1

declare dso_local i32 @efuse_one_byte_read(%struct.ieee80211_hw*, i64, i32*) #1

declare dso_local i32 @efuse_calculate_word_cnts(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @efuse_pg_packet_read(%struct.ieee80211_hw*, i32, i32*) #1

declare dso_local i32 @enable_efuse_data_write(%struct.ieee80211_hw*, i64, i32, i32*) #1

declare dso_local i32 @efuse_pg_packet_write(%struct.ieee80211_hw*, i32, i32, i32*) #1

declare dso_local i64 @efuse_get_current_size(%struct.ieee80211_hw*) #1

declare dso_local i32 @RTPRINT(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
