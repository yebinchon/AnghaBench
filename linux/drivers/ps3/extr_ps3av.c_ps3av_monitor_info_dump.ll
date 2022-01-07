; ModuleID = '/home/carl/AnghaBench/linux/drivers/ps3/extr_ps3av.c_ps3av_monitor_info_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ps3/extr_ps3av.c_ps3av_monitor_info_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3av_pkt_av_get_monitor_info = type { %struct.TYPE_8__, %struct.ps3av_info_monitor }
%struct.TYPE_8__ = type { i32 }
%struct.ps3av_info_monitor = type { i32*, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, i32, i32, i32, %struct.ps3av_info_audio* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.ps3av_info_audio = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Monitor Info: size %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"avport: %02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"monitor_id: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"monitor_type: %02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"monitor_name: %.*s\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"resolution_60: bits: %08x native: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"resolution_50: bits: %08x native: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"resolution_other: bits: %08x native: %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"resolution_vesa: bits: %08x native: %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"color space    rgb: %02x\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"color space yuv444: %02x\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"color space yuv422: %02x\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"color info   red: X %04x Y %04x\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"color info green: X %04x Y %04x\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"color info  blue: X %04x Y %04x\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"color info white: X %04x Y %04x\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"color info gamma:  %08x\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"supported_AI: %02x\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"speaker_info: %02x\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"num of audio: %02x\0A\00", align 1
@.str.21 = private unnamed_addr constant [55 x i8] c"audio[%d] type: %02x max_ch: %02x fs: %02x sbit: %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ps3av_pkt_av_get_monitor_info*)* @ps3av_monitor_info_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps3av_monitor_info_dump(%struct.ps3av_pkt_av_get_monitor_info* %0) #0 {
  %2 = alloca %struct.ps3av_pkt_av_get_monitor_info*, align 8
  %3 = alloca %struct.ps3av_info_monitor*, align 8
  %4 = alloca %struct.ps3av_info_audio*, align 8
  %5 = alloca [25 x i8], align 16
  %6 = alloca i32, align 4
  store %struct.ps3av_pkt_av_get_monitor_info* %0, %struct.ps3av_pkt_av_get_monitor_info** %2, align 8
  %7 = load %struct.ps3av_pkt_av_get_monitor_info*, %struct.ps3av_pkt_av_get_monitor_info** %2, align 8
  %8 = getelementptr inbounds %struct.ps3av_pkt_av_get_monitor_info, %struct.ps3av_pkt_av_get_monitor_info* %7, i32 0, i32 1
  store %struct.ps3av_info_monitor* %8, %struct.ps3av_info_monitor** %3, align 8
  %9 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %10 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %9, i32 0, i32 13
  %11 = load %struct.ps3av_info_audio*, %struct.ps3av_info_audio** %10, align 8
  store %struct.ps3av_info_audio* %11, %struct.ps3av_info_audio** %4, align 8
  %12 = load %struct.ps3av_pkt_av_get_monitor_info*, %struct.ps3av_pkt_av_get_monitor_info** %2, align 8
  %13 = getelementptr inbounds %struct.ps3av_pkt_av_get_monitor_info, %struct.ps3av_pkt_av_get_monitor_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %18 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %17, i32 0, i32 12
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %38, %1
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 8
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 %26, 3
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [25 x i8], [25 x i8]* %5, i64 0, i64 %28
  %30 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %31 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %21

41:                                               ; preds = %21
  %42 = getelementptr inbounds [25 x i8], [25 x i8]* %5, i64 0, i64 0
  %43 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %42)
  %44 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %45 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %44, i32 0, i32 11
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  %48 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %49 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 4, i32 %50)
  %52 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %53 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %52, i32 0, i32 9
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %57 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %56, i32 0, i32 9
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %55, i32 %59)
  %61 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %62 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %61, i32 0, i32 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %66 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %65, i32 0, i32 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %64, i32 %68)
  %70 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %71 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %70, i32 0, i32 7
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %75 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %74, i32 0, i32 7
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %73, i32 %77)
  %79 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %80 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %84 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %82, i32 %86)
  %88 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %89 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %91)
  %93 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %94 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %96)
  %98 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %99 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %101)
  %103 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %104 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %108 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i32 %106, i32 %110)
  %112 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %113 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %117 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i32 %115, i32 %119)
  %121 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %122 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %126 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i32 %124, i32 %128)
  %130 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %131 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %135 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i32 %133, i32 %137)
  %139 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %140 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32 %142)
  %144 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %145 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32 %146)
  %148 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %149 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 %150)
  %152 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %153 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32 %154)
  store i32 0, i32* %6, align 4
  br label %156

156:                                              ; preds = %179, %41
  %157 = load i32, i32* %6, align 4
  %158 = load %struct.ps3av_info_monitor*, %struct.ps3av_info_monitor** %3, align 8
  %159 = getelementptr inbounds %struct.ps3av_info_monitor, %struct.ps3av_info_monitor* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %182

162:                                              ; preds = %156
  %163 = load i32, i32* %6, align 4
  %164 = load %struct.ps3av_info_audio*, %struct.ps3av_info_audio** %4, align 8
  %165 = getelementptr inbounds %struct.ps3av_info_audio, %struct.ps3av_info_audio* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.ps3av_info_audio*, %struct.ps3av_info_audio** %4, align 8
  %168 = getelementptr inbounds %struct.ps3av_info_audio, %struct.ps3av_info_audio* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ps3av_info_audio*, %struct.ps3av_info_audio** %4, align 8
  %171 = getelementptr inbounds %struct.ps3av_info_audio, %struct.ps3av_info_audio* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.ps3av_info_audio*, %struct.ps3av_info_audio** %4, align 8
  %174 = getelementptr inbounds %struct.ps3av_info_audio, %struct.ps3av_info_audio* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.21, i64 0, i64 0), i32 %163, i32 %166, i32 %169, i32 %172, i32 %175)
  %177 = load %struct.ps3av_info_audio*, %struct.ps3av_info_audio** %4, align 8
  %178 = getelementptr inbounds %struct.ps3av_info_audio, %struct.ps3av_info_audio* %177, i32 1
  store %struct.ps3av_info_audio* %178, %struct.ps3av_info_audio** %4, align 8
  br label %179

179:                                              ; preds = %162
  %180 = load i32, i32* %6, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %6, align 4
  br label %156

182:                                              ; preds = %156
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
