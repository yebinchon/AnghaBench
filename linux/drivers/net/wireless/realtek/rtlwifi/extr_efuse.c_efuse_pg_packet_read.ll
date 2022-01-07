; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_pg_packet_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_pg_packet_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@PG_STATE_HEADER = common dso_local global i32 0, align 4
@PGPKT_DATA_SIZE = common dso_local global i32 0, align 4
@EFUSE_MAX_SIZE = common dso_local global i64 0, align 8
@PG_STATE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, i32*)* @efuse_pg_packet_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efuse_pg_packet_read(%struct.ieee80211_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [8 x i32], align 16
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* @PG_STATE_HEADER, align 4
  store i32 %14, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %125

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 15
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %125

22:                                               ; preds = %18
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* @PGPKT_DATA_SIZE, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memset(i32* %23, i32 255, i32 %27)
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %30 = load i32, i32* @PGPKT_DATA_SIZE, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i32 @memset(i32* %29, i32 255, i32 %33)
  br label %35

35:                                               ; preds = %82, %22
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @EFUSE_MAX_SIZE, align 8
  %41 = icmp slt i64 %39, %40
  br label %42

42:                                               ; preds = %38, %35
  %43 = phi i1 [ false, %35 ], [ %41, %38 ]
  br i1 %43, label %44, label %83

44:                                               ; preds = %42
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @PG_STATE_HEADER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call i64 @efuse_one_byte_read(%struct.ieee80211_hw* %50, i64 %51, i32* %10)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 255
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %6, align 4
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %62 = call i32 @efuse_read_data_case1(%struct.ieee80211_hw* %58, i64* %12, i32 %59, i32 %60, i32* %61, i32* %8)
  br label %64

63:                                               ; preds = %54, %49
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %63, %57
  br label %82

65:                                               ; preds = %44
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @PG_STATE_DATA, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @efuse_word_enable_data_read(i32 0, i32* %71, i32* %72)
  %74 = load i64, i64* %12, align 8
  %75 = load i32, i32* %11, align 4
  %76 = mul nsw i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %74, %77
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %12, align 8
  %80 = load i32, i32* @PG_STATE_HEADER, align 4
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %70, %65
  br label %82

82:                                               ; preds = %81, %64
  br label %35

83:                                               ; preds = %42
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 255
  br i1 %87, label %88, label %124

88:                                               ; preds = %83
  %89 = load i32*, i32** %7, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 255
  br i1 %92, label %93, label %124

93:                                               ; preds = %88
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 255
  br i1 %97, label %98, label %124

98:                                               ; preds = %93
  %99 = load i32*, i32** %7, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 3
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 255
  br i1 %102, label %103, label %124

103:                                              ; preds = %98
  %104 = load i32*, i32** %7, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 4
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 255
  br i1 %107, label %108, label %124

108:                                              ; preds = %103
  %109 = load i32*, i32** %7, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 5
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 255
  br i1 %112, label %113, label %124

113:                                              ; preds = %108
  %114 = load i32*, i32** %7, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 6
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 255
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 7
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 255
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  store i32 0, i32* %4, align 4
  br label %125

124:                                              ; preds = %118, %113, %108, %103, %98, %93, %88, %83
  store i32 1, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %123, %21, %17
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @efuse_one_byte_read(%struct.ieee80211_hw*, i64, i32*) #1

declare dso_local i32 @efuse_read_data_case1(%struct.ieee80211_hw*, i64*, i32, i32, i32*, i32*) #1

declare dso_local i32 @efuse_word_enable_data_read(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
