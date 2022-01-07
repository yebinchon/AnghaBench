; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_debugfs.c_mt7601u_eeprom_param_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_debugfs.c_mt7601u_eeprom_param_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.mt7601u_dev* }
%struct.mt7601u_dev = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32*, %struct.TYPE_6__, i32, i32, i32*, i32, %struct.tssi_data, %struct.mt7601u_rate_power }
%struct.TYPE_6__ = type { i64, i64 }
%struct.tssi_data = type { i32, i32*, i32 }
%struct.mt7601u_rate_power = type { %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"RF freq offset: %hhx\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"RSSI offset: %hhx %hhx\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Reference temp: %hhx\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"LNA gain: %hhx\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Reg channels: %hhu-%hhu\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Per rate power:\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"\09 raw:%02hhx bw20:%02hhx bw40:%02hhx\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Per channel power:\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"\09 tx_power  ch%u:%02hhx ch%u:%02hhx\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"TSSI:\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"\09 slope:%02hhx\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"\09 offset=%02hhx %02hhx %02hhx\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"\09 delta_off:%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mt7601u_eeprom_param_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7601u_eeprom_param_read(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mt7601u_dev*, align 8
  %7 = alloca %struct.mt7601u_rate_power*, align 8
  %8 = alloca %struct.tssi_data*, align 8
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %11, align 8
  store %struct.mt7601u_dev* %12, %struct.mt7601u_dev** %6, align 8
  %13 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %14 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 8
  store %struct.mt7601u_rate_power* %16, %struct.mt7601u_rate_power** %7, align 8
  %17 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %18 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 7
  store %struct.tssi_data* %20, %struct.tssi_data** %8, align 8
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %23 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %29 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %30 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %37 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 5
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %42)
  %44 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %45 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %46 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %52 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %53 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %59 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %60 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %67 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %73 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %71, %77
  %79 = sub nsw i64 %78, 1
  %80 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %65, i64 %79)
  %81 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %82 = call i32 @seq_puts(%struct.seq_file* %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %113, %2
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %84, 2
  br i1 %85, label %86, label %116

86:                                               ; preds = %83
  %87 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %88 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %7, align 8
  %89 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %88, i32 0, i32 2
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %7, align 8
  %97 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %96, i32 0, i32 2
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %7, align 8
  %105 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %104, i32 0, i32 2
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %87, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %95, i32 %103, i32 %111)
  br label %113

113:                                              ; preds = %86
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %83

116:                                              ; preds = %83
  store i32 0, i32* %9, align 4
  br label %117

117:                                              ; preds = %147, %116
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %118, 4
  br i1 %119, label %120, label %150

120:                                              ; preds = %117
  %121 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %122 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %7, align 8
  %123 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %122, i32 0, i32 1
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %7, align 8
  %131 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %130, i32 0, i32 1
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %7, align 8
  %139 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %138, i32 0, i32 1
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %121, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %129, i32 %137, i32 %145)
  br label %147

147:                                              ; preds = %120
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %117

150:                                              ; preds = %117
  store i32 0, i32* %9, align 4
  br label %151

151:                                              ; preds = %181, %150
  %152 = load i32, i32* %9, align 4
  %153 = icmp slt i32 %152, 4
  br i1 %153, label %154, label %184

154:                                              ; preds = %151
  %155 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %156 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %7, align 8
  %157 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %156, i32 0, i32 0
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %7, align 8
  %165 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %164, i32 0, i32 0
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.mt7601u_rate_power*, %struct.mt7601u_rate_power** %7, align 8
  %173 = getelementptr inbounds %struct.mt7601u_rate_power, %struct.mt7601u_rate_power* %172, i32 0, i32 0
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %173, align 8
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %155, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %163, i32 %171, i32 %179)
  br label %181

181:                                              ; preds = %154
  %182 = load i32, i32* %9, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %9, align 4
  br label %151

184:                                              ; preds = %151
  %185 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %186 = call i32 @seq_puts(%struct.seq_file* %185, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %187

187:                                              ; preds = %220, %184
  %188 = load i32, i32* %9, align 4
  %189 = icmp slt i32 %188, 7
  br i1 %189, label %190, label %223

190:                                              ; preds = %187
  %191 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %192 = load i32, i32* %9, align 4
  %193 = mul nsw i32 %192, 2
  %194 = add nsw i32 %193, 1
  %195 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %196 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %195, i32 0, i32 0
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = mul nsw i32 %200, 2
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %199, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %9, align 4
  %206 = mul nsw i32 %205, 2
  %207 = add nsw i32 %206, 2
  %208 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %209 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %208, i32 0, i32 0
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %9, align 4
  %214 = mul nsw i32 %213, 2
  %215 = add nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %212, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %191, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %194, i32 %204, i32 %207, i32 %218)
  br label %220

220:                                              ; preds = %190
  %221 = load i32, i32* %9, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %9, align 4
  br label %187

223:                                              ; preds = %187
  %224 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %225 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %224, i32 0, i32 0
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %223
  store i32 0, i32* %3, align 4
  br label %261

231:                                              ; preds = %223
  %232 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %233 = call i32 @seq_puts(%struct.seq_file* %232, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %234 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %235 = load %struct.tssi_data*, %struct.tssi_data** %8, align 8
  %236 = getelementptr inbounds %struct.tssi_data, %struct.tssi_data* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %234, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %237)
  %239 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %240 = load %struct.tssi_data*, %struct.tssi_data** %8, align 8
  %241 = getelementptr inbounds %struct.tssi_data, %struct.tssi_data* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.tssi_data*, %struct.tssi_data** %8, align 8
  %246 = getelementptr inbounds %struct.tssi_data, %struct.tssi_data* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 1
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.tssi_data*, %struct.tssi_data** %8, align 8
  %251 = getelementptr inbounds %struct.tssi_data, %struct.tssi_data* %250, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 2
  %254 = load i32, i32* %253, align 4
  %255 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %239, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %244, i32 %249, i32 %254)
  %256 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %257 = load %struct.tssi_data*, %struct.tssi_data** %8, align 8
  %258 = getelementptr inbounds %struct.tssi_data, %struct.tssi_data* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 %259)
  store i32 0, i32* %3, align 4
  br label %261

261:                                              ; preds = %231, %230
  %262 = load i32, i32* %3, align 4
  ret i32 %262
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
