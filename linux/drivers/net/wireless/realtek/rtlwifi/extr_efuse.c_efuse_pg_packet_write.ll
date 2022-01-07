; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_pg_packet_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_pg_packet_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }
%struct.pgpkt_struct = type { i64, i64, i32 }

@PG_STATE_HEADER = common dso_local global i64 0, align 8
@efuse_pg_packet_write.repeat_times = internal global i32 0, align 4
@EFUSE_MAX_SIZE = common dso_local global i64 0, align 8
@EFUSE_OOB_PROTECT_BYTES_LEN = common dso_local global i64 0, align 8
@FEEPROM = common dso_local global i32 0, align 4
@EFUSE_PG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"efuse_pg_packet_write error\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"efuse Power ON\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"efuse PG_STATE_HEADER\0A\00", align 1
@PG_STATE_DATA = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"efuse PG_STATE_DATA\0A\00", align 1
@EFUSE_REPEAT_THRESHOLD_ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"efuse PG_STATE_HEADER-3\0A\00", align 1
@COMP_EFUSE = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"efuse_addr(%#x) Out of size!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i64, i64, i64*)* @efuse_pg_packet_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efuse_pg_packet_write(%struct.ieee80211_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.rtl_priv*, align 8
  %11 = alloca %struct.pgpkt_struct, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %21 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %20)
  store %struct.rtl_priv* %21, %struct.rtl_priv** %10, align 8
  %22 = load i64, i64* @PG_STATE_HEADER, align 8
  store i64 %22, i64* %12, align 8
  store i32 1, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i64 0, i64* %16, align 8
  store i64 0, i64* %18, align 8
  store i64 15, i64* %19, align 8
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %24 = call i64 @efuse_get_current_size(%struct.ieee80211_hw* %23)
  %25 = load i64, i64* @EFUSE_MAX_SIZE, align 8
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %27 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* @EFUSE_OOB_PROTECT_BYTES_LEN, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %25, %33
  %35 = icmp sge i64 %24, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %4
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %38 = load i32, i32* @FEEPROM, align 4
  %39 = load i32, i32* @EFUSE_PG, align 4
  %40 = call i32 @RTPRINT(%struct.rtl_priv* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %174

41:                                               ; preds = %4
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds %struct.pgpkt_struct, %struct.pgpkt_struct* %11, i32 0, i32 1
  store i64 %42, i64* %43, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds %struct.pgpkt_struct, %struct.pgpkt_struct* %11, i32 0, i32 0
  store i64 %44, i64* %45, align 8
  %46 = getelementptr inbounds %struct.pgpkt_struct, %struct.pgpkt_struct* %11, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @memset(i32 %47, i32 255, i32 64)
  %49 = load i64, i64* %8, align 8
  %50 = load i64*, i64** %9, align 8
  %51 = getelementptr inbounds %struct.pgpkt_struct, %struct.pgpkt_struct* %11, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @efuse_word_enable_data_read(i64 %49, i64* %50, i32 %52)
  %54 = getelementptr inbounds %struct.pgpkt_struct, %struct.pgpkt_struct* %11, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @efuse_calculate_word_cnts(i64 %55)
  store i64 %56, i64* %18, align 8
  %57 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %58 = load i32, i32* @FEEPROM, align 4
  %59 = load i32, i32* @EFUSE_PG, align 4
  %60 = call i32 @RTPRINT(%struct.rtl_priv* %57, i32 %58, i32 %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %153, %41
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load i64, i64* %16, align 8
  %66 = load i64, i64* @EFUSE_MAX_SIZE, align 8
  %67 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %68 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* @EFUSE_OOB_PROTECT_BYTES_LEN, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %66, %74
  %76 = icmp slt i64 %65, %75
  br label %77

77:                                               ; preds = %64, %61
  %78 = phi i1 [ false, %61 ], [ %76, %64 ]
  br i1 %78, label %79, label %154

79:                                               ; preds = %77
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* @PG_STATE_HEADER, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %105

83:                                               ; preds = %79
  store i32 1, i32* %14, align 4
  store i64 15, i64* %19, align 8
  %84 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %85 = load i32, i32* @FEEPROM, align 4
  %86 = load i32, i32* @EFUSE_PG, align 4
  %87 = call i32 @RTPRINT(%struct.rtl_priv* %84, i32 %85, i32 %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %88 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %89 = load i64, i64* %16, align 8
  %90 = call i64 @efuse_one_byte_read(%struct.ieee80211_hw* %88, i64 %89, i64* %17)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %83
  %93 = load i64, i64* %17, align 8
  %94 = icmp ne i64 %93, 255
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %97 = load i64, i64* %17, align 8
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @efuse_write_data_case1(%struct.ieee80211_hw* %96, i64* %16, i64 %97, i64 %98, i32* %13, i64* %12, %struct.pgpkt_struct* %11, i32* @efuse_pg_packet_write.repeat_times, i32* %15, i64 %99)
  br label %104

101:                                              ; preds = %92, %83
  %102 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %103 = call i32 @efuse_write_data_case2(%struct.ieee80211_hw* %102, i64* %16, i32* %13, i64* %12, %struct.pgpkt_struct* byval(%struct.pgpkt_struct) align 8 %11, i32* @efuse_pg_packet_write.repeat_times, i32* %15)
  br label %104

104:                                              ; preds = %101, %95
  br label %153

105:                                              ; preds = %79
  %106 = load i64, i64* %12, align 8
  %107 = load i64, i64* @PG_STATE_DATA, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %152

109:                                              ; preds = %105
  %110 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %111 = load i32, i32* @FEEPROM, align 4
  %112 = load i32, i32* @EFUSE_PG, align 4
  %113 = call i32 @RTPRINT(%struct.rtl_priv* %110, i32 %111, i32 %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %114 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %115 = load i64, i64* %16, align 8
  %116 = add nsw i64 %115, 1
  %117 = getelementptr inbounds %struct.pgpkt_struct, %struct.pgpkt_struct* %11, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.pgpkt_struct, %struct.pgpkt_struct* %11, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @enable_efuse_data_write(%struct.ieee80211_hw* %114, i64 %116, i64 %118, i32 %120)
  store i64 %121, i64* %19, align 8
  %122 = load i64, i64* %19, align 8
  %123 = and i64 %122, 15
  %124 = icmp eq i64 %123, 15
  br i1 %124, label %125, label %126

125:                                              ; preds = %109
  store i32 0, i32* %13, align 4
  br label %151

126:                                              ; preds = %109
  %127 = load i64, i64* %16, align 8
  %128 = load i64, i64* %18, align 8
  %129 = mul nsw i64 2, %128
  %130 = add nsw i64 %127, %129
  %131 = add nsw i64 %130, 1
  store i64 %131, i64* %16, align 8
  %132 = load i64, i64* %7, align 8
  %133 = getelementptr inbounds %struct.pgpkt_struct, %struct.pgpkt_struct* %11, i32 0, i32 1
  store i64 %132, i64* %133, align 8
  %134 = load i64, i64* %19, align 8
  %135 = getelementptr inbounds %struct.pgpkt_struct, %struct.pgpkt_struct* %11, i32 0, i32 0
  store i64 %134, i64* %135, align 8
  %136 = getelementptr inbounds %struct.pgpkt_struct, %struct.pgpkt_struct* %11, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @efuse_calculate_word_cnts(i64 %137)
  store i64 %138, i64* %18, align 8
  %139 = load i64, i64* @PG_STATE_HEADER, align 8
  store i64 %139, i64* %12, align 8
  %140 = load i32, i32* @efuse_pg_packet_write.repeat_times, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* @efuse_pg_packet_write.repeat_times, align 4
  %142 = load i32, i32* @efuse_pg_packet_write.repeat_times, align 4
  %143 = load i32, i32* @EFUSE_REPEAT_THRESHOLD_, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %126
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %146

146:                                              ; preds = %145, %126
  %147 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %148 = load i32, i32* @FEEPROM, align 4
  %149 = load i32, i32* @EFUSE_PG, align 4
  %150 = call i32 @RTPRINT(%struct.rtl_priv* %147, i32 %148, i32 %149, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %151

151:                                              ; preds = %146, %125
  br label %152

152:                                              ; preds = %151, %105
  br label %153

153:                                              ; preds = %152, %104
  br label %61

154:                                              ; preds = %77
  %155 = load i64, i64* %16, align 8
  %156 = load i64, i64* @EFUSE_MAX_SIZE, align 8
  %157 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %158 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %157, i32 0, i32 0
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i64*, i64** %160, align 8
  %162 = load i64, i64* @EFUSE_OOB_PROTECT_BYTES_LEN, align 8
  %163 = getelementptr inbounds i64, i64* %161, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = sub nsw i64 %156, %164
  %166 = icmp sge i64 %155, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %154
  %168 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %169 = load i32, i32* @COMP_EFUSE, align 4
  %170 = load i32, i32* @DBG_LOUD, align 4
  %171 = load i64, i64* %16, align 8
  %172 = call i32 @RT_TRACE(%struct.rtl_priv* %168, i32 %169, i32 %170, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %171)
  br label %173

173:                                              ; preds = %167, %154
  store i32 1, i32* %5, align 4
  br label %174

174:                                              ; preds = %173, %36
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @efuse_get_current_size(%struct.ieee80211_hw*) #1

declare dso_local i32 @RTPRINT(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @efuse_word_enable_data_read(i64, i64*, i32) #1

declare dso_local i64 @efuse_calculate_word_cnts(i64) #1

declare dso_local i64 @efuse_one_byte_read(%struct.ieee80211_hw*, i64, i64*) #1

declare dso_local i32 @efuse_write_data_case1(%struct.ieee80211_hw*, i64*, i64, i64, i32*, i64*, %struct.pgpkt_struct*, i32*, i32*, i64) #1

declare dso_local i32 @efuse_write_data_case2(%struct.ieee80211_hw*, i64*, i32*, i64*, %struct.pgpkt_struct* byval(%struct.pgpkt_struct) align 8, i32*, i32*) #1

declare dso_local i64 @enable_efuse_data_write(%struct.ieee80211_hw*, i64, i64, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
