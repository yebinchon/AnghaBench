; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_debugfs.c_telem_pss_states_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_debugfs.c_telem_pss_states_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.telemetry_debugfs_conf = type { i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.seq_file = type { i32 }
%struct.telemetry_evtlog = type { i32, i64 }

@TELEM_MAX_OS_ALLOCATED_EVENTS = common dso_local global i32 0, align 4
@debugfs_conf = common dso_local global %struct.telemetry_debugfs_conf* null, align 8
@TELEM_PSS_IDLE_BLOCKED_EVTS = common dso_local global i32 0, align 4
@TELEM_PSS_S0IX_BLOCKED_EVTS = common dso_local global i32 0, align 4
@TELEM_PSS_S0IX_WAKEUP_EVTS = common dso_local global i32 0, align 4
@TELEM_PSS_LTR_BLOCKING_EVTS = common dso_local global i32 0, align 4
@TELEM_PSS_IDLE_EVTS = common dso_local global i32 0, align 4
@TELEM_PSS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"\0A----------------------------------------------------\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"\09PSS TELEM EVENTLOG (Residency = field/19.2 us\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"----------------------------------------------------\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%-32s %llu\0A\00", align 1
@TELEM_APL_MASK_PCS_STATE = common dso_local global i32 0, align 4
@TELEM_MASK_BIT = common dso_local global i32 0, align 4
@TELEM_MASK_BYTE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"\0A--------------------------------------\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"PStates\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"--------------------------------------\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Domain\09\09\09\09Freq(Mhz)\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c" IA\09\09\09\09 %llu\0A GT\09\09\09\09 %llu\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c" IUNIT\09\09\09\09 %llu\0A SA\09\09\09\09 %llu\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"PSS IDLE Status\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Device\09\09\09\09\09IDLE\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"%-32s\09%u\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"PSS Idle blkd Status (~1ms saturating bucket)\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Blocker\09\09\09\09\09Count\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"PSS S0ix blkd Status (~1ms saturating bucket)\0A\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"LTR Blocking Status (~1ms saturating bucket)\0A\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"Wakes Status (~1ms saturating bucket)\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Wakes\09\09\09\09\09Count\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @telem_pss_states_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @telem_pss_states_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.telemetry_debugfs_conf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %21 = load i32, i32* @TELEM_MAX_OS_ALLOCATED_EVENTS, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %6, align 8
  %24 = alloca %struct.telemetry_evtlog, i64 %22, align 16
  store i64 %22, i64* %7, align 8
  %25 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** @debugfs_conf, align 8
  store %struct.telemetry_debugfs_conf* %25, %struct.telemetry_debugfs_conf** %8, align 8
  %26 = load i32, i32* @TELEM_MAX_OS_ALLOCATED_EVENTS, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8*, i64 %27, align 16
  store i64 %27, i64* %9, align 8
  %29 = load i32, i32* @TELEM_PSS_IDLE_BLOCKED_EVTS, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %10, align 8
  %32 = load i32, i32* @TELEM_PSS_S0IX_BLOCKED_EVTS, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %11, align 8
  %35 = load i32, i32* @TELEM_PSS_S0IX_WAKEUP_EVTS, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %12, align 8
  %38 = load i32, i32* @TELEM_PSS_LTR_BLOCKING_EVTS, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i32, i64 %39, align 16
  store i64 %39, i64* %13, align 8
  %41 = load i32, i32* @TELEM_PSS_IDLE_EVTS, align 4
  %42 = zext i32 %41 to i64
  %43 = alloca i32, i64 %42, align 16
  store i64 %42, i64* %14, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %44 = load i32, i32* @TELEM_PSS, align 4
  %45 = load i32, i32* @TELEM_MAX_OS_ALLOCATED_EVENTS, align 4
  %46 = call i32 @telemetry_read_eventlog(i32 %44, %struct.telemetry_evtlog* %24, i32 %45)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %2
  %50 = load i32, i32* %17, align 4
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %417

51:                                               ; preds = %2
  %52 = load i32, i32* @TELEM_PSS, align 4
  %53 = load i32, i32* @TELEM_MAX_OS_ALLOCATED_EVENTS, align 4
  %54 = call i32 @telemetry_get_evtname(i32 %52, i8** %28, i32 %53)
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %18, align 4
  store i32 %58, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %417

59:                                               ; preds = %51
  %60 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %61 = call i32 @seq_puts(%struct.seq_file* %60, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %63 = call i32 @seq_puts(%struct.seq_file* %62, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %65 = call i32 @seq_puts(%struct.seq_file* %64, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %66

66:                                               ; preds = %215, %59
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %17, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %218

70:                                               ; preds = %66
  %71 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %28, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %24, i64 %77
  %79 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 16
  %81 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %75, i32 %80)
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %24, i64 %83
  %85 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %8, align 8
  %88 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %117

91:                                               ; preds = %70
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %24, i64 %93
  %95 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 16
  %97 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %8, align 8
  %98 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %97, i32 0, i32 15
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %8, align 8
  %101 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = ashr i32 %96, %107
  %109 = load i32, i32* @TELEM_APL_MASK_PCS_STATE, align 4
  %110 = and i32 %108, %109
  %111 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %8, align 8
  %112 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %43, i64 %115
  store i32 %110, i32* %116, align 4
  br label %117

117:                                              ; preds = %91, %70
  %118 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %8, align 8
  %119 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %8, align 8
  %122 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = sub nsw i32 %123, 1
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %24, i64 %126
  %128 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 16
  %130 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %8, align 8
  %131 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %130, i32 0, i32 15
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* @TELEM_MASK_BIT, align 4
  %134 = call i32 @TELEM_CHECK_AND_PARSE_EVTS(i64 %120, i32 %124, i32* %43, i32 %129, %struct.TYPE_2__* %132, i32 %133)
  %135 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %8, align 8
  %136 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %8, align 8
  %139 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %24, i64 %142
  %144 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 16
  %146 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %8, align 8
  %147 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %146, i32 0, i32 14
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = load i32, i32* @TELEM_MASK_BYTE, align 4
  %150 = call i32 @TELEM_CHECK_AND_PARSE_EVTS(i64 %137, i32 %140, i32* %31, i32 %145, %struct.TYPE_2__* %148, i32 %149)
  %151 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %8, align 8
  %152 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %8, align 8
  %155 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %24, i64 %158
  %160 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 16
  %162 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %8, align 8
  %163 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %162, i32 0, i32 13
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = load i32, i32* @TELEM_MASK_BYTE, align 4
  %166 = call i32 @TELEM_CHECK_AND_PARSE_EVTS(i64 %153, i32 %156, i32* %34, i32 %161, %struct.TYPE_2__* %164, i32 %165)
  %167 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %8, align 8
  %168 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %167, i32 0, i32 6
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %8, align 8
  %171 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %15, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %24, i64 %174
  %176 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 16
  %178 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %8, align 8
  %179 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %178, i32 0, i32 11
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = load i32, i32* @TELEM_MASK_BYTE, align 4
  %182 = call i32 @TELEM_CHECK_AND_PARSE_EVTS(i64 %169, i32 %172, i32* %37, i32 %177, %struct.TYPE_2__* %180, i32 %181)
  %183 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %8, align 8
  %184 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %183, i32 0, i32 8
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %8, align 8
  %187 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %186, i32 0, i32 9
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %15, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %24, i64 %190
  %192 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 16
  %194 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %8, align 8
  %195 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %194, i32 0, i32 12
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = load i32, i32* @TELEM_MASK_BYTE, align 4
  %198 = call i32 @TELEM_CHECK_AND_PARSE_EVTS(i64 %185, i32 %188, i32* %40, i32 %193, %struct.TYPE_2__* %196, i32 %197)
  %199 = load i32, i32* %15, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %24, i64 %200
  %202 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** @debugfs_conf, align 8
  %205 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %204, i32 0, i32 10
  %206 = load i64, i64* %205, align 8
  %207 = icmp eq i64 %203, %206
  br i1 %207, label %208, label %214

208:                                              ; preds = %117
  %209 = load i32, i32* %15, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %24, i64 %210
  %212 = getelementptr inbounds %struct.telemetry_evtlog, %struct.telemetry_evtlog* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 16
  store i32 %213, i32* %19, align 4
  br label %214

214:                                              ; preds = %208, %117
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %15, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %15, align 4
  br label %66

218:                                              ; preds = %66
  %219 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %220 = call i32 @seq_puts(%struct.seq_file* %219, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %221 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %222 = call i32 @seq_puts(%struct.seq_file* %221, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %223 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %224 = call i32 @seq_puts(%struct.seq_file* %223, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %225 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %226 = call i32 @seq_puts(%struct.seq_file* %225, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %227 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %228 = load i32, i32* %19, align 4
  %229 = load i32, i32* @TELEM_MASK_BYTE, align 4
  %230 = and i32 %228, %229
  %231 = mul nsw i32 %230, 100
  %232 = load i32, i32* %19, align 4
  %233 = ashr i32 %232, 8
  %234 = load i32, i32* @TELEM_MASK_BYTE, align 4
  %235 = and i32 %233, %234
  %236 = mul nsw i32 %235, 50
  %237 = sdiv i32 %236, 3
  %238 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %227, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %231, i32 %237)
  %239 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %240 = load i32, i32* %19, align 4
  %241 = ashr i32 %240, 16
  %242 = load i32, i32* @TELEM_MASK_BYTE, align 4
  %243 = and i32 %241, %242
  %244 = mul nsw i32 %243, 25
  %245 = load i32, i32* %19, align 4
  %246 = ashr i32 %245, 24
  %247 = load i32, i32* @TELEM_MASK_BYTE, align 4
  %248 = and i32 %246, %247
  %249 = mul nsw i32 %248, 50
  %250 = sdiv i32 %249, 3
  %251 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %239, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %244, i32 %250)
  %252 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %253 = call i32 @seq_puts(%struct.seq_file* %252, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %254 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %255 = call i32 @seq_puts(%struct.seq_file* %254, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %256 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %257 = call i32 @seq_puts(%struct.seq_file* %256, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %258 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %259 = call i32 @seq_puts(%struct.seq_file* %258, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %260

260:                                              ; preds = %281, %218
  %261 = load i32, i32* %15, align 4
  %262 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** @debugfs_conf, align 8
  %263 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = icmp slt i32 %261, %264
  br i1 %265, label %266, label %284

266:                                              ; preds = %260
  %267 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %268 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** @debugfs_conf, align 8
  %269 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %268, i32 0, i32 15
  %270 = load %struct.TYPE_2__*, %struct.TYPE_2__** %269, align 8
  %271 = load i32, i32* %15, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* %15, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %43, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %267, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %275, i32 %279)
  br label %281

281:                                              ; preds = %266
  %282 = load i32, i32* %15, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %15, align 4
  br label %260

284:                                              ; preds = %260
  %285 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %286 = call i32 @seq_puts(%struct.seq_file* %285, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %287 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %288 = call i32 @seq_puts(%struct.seq_file* %287, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0))
  %289 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %290 = call i32 @seq_puts(%struct.seq_file* %289, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %291 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %292 = call i32 @seq_puts(%struct.seq_file* %291, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %293

293:                                              ; preds = %314, %284
  %294 = load i32, i32* %15, align 4
  %295 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** @debugfs_conf, align 8
  %296 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 8
  %298 = icmp slt i32 %294, %297
  br i1 %298, label %299, label %317

299:                                              ; preds = %293
  %300 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %301 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** @debugfs_conf, align 8
  %302 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %301, i32 0, i32 14
  %303 = load %struct.TYPE_2__*, %struct.TYPE_2__** %302, align 8
  %304 = load i32, i32* %15, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* %15, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %31, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %300, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %308, i32 %312)
  br label %314

314:                                              ; preds = %299
  %315 = load i32, i32* %15, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %15, align 4
  br label %293

317:                                              ; preds = %293
  %318 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %319 = call i32 @seq_puts(%struct.seq_file* %318, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %320 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %321 = call i32 @seq_puts(%struct.seq_file* %320, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0))
  %322 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %323 = call i32 @seq_puts(%struct.seq_file* %322, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %324 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %325 = call i32 @seq_puts(%struct.seq_file* %324, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %326

326:                                              ; preds = %347, %317
  %327 = load i32, i32* %15, align 4
  %328 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** @debugfs_conf, align 8
  %329 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %328, i32 0, i32 5
  %330 = load i32, i32* %329, align 8
  %331 = icmp slt i32 %327, %330
  br i1 %331, label %332, label %350

332:                                              ; preds = %326
  %333 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %334 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** @debugfs_conf, align 8
  %335 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %334, i32 0, i32 13
  %336 = load %struct.TYPE_2__*, %struct.TYPE_2__** %335, align 8
  %337 = load i32, i32* %15, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %15, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %34, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %333, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %341, i32 %345)
  br label %347

347:                                              ; preds = %332
  %348 = load i32, i32* %15, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %15, align 4
  br label %326

350:                                              ; preds = %326
  %351 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %352 = call i32 @seq_puts(%struct.seq_file* %351, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %353 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %354 = call i32 @seq_puts(%struct.seq_file* %353, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i64 0, i64 0))
  %355 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %356 = call i32 @seq_puts(%struct.seq_file* %355, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %357 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %358 = call i32 @seq_puts(%struct.seq_file* %357, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %359

359:                                              ; preds = %380, %350
  %360 = load i32, i32* %15, align 4
  %361 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** @debugfs_conf, align 8
  %362 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %361, i32 0, i32 9
  %363 = load i32, i32* %362, align 8
  %364 = icmp slt i32 %360, %363
  br i1 %364, label %365, label %383

365:                                              ; preds = %359
  %366 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %367 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** @debugfs_conf, align 8
  %368 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %367, i32 0, i32 12
  %369 = load %struct.TYPE_2__*, %struct.TYPE_2__** %368, align 8
  %370 = load i32, i32* %15, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %369, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* %15, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %37, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %366, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %374, i32 %378)
  br label %380

380:                                              ; preds = %365
  %381 = load i32, i32* %15, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %15, align 4
  br label %359

383:                                              ; preds = %359
  %384 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %385 = call i32 @seq_puts(%struct.seq_file* %384, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %386 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %387 = call i32 @seq_puts(%struct.seq_file* %386, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0))
  %388 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %389 = call i32 @seq_puts(%struct.seq_file* %388, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %390 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %391 = call i32 @seq_puts(%struct.seq_file* %390, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %392

392:                                              ; preds = %413, %383
  %393 = load i32, i32* %15, align 4
  %394 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** @debugfs_conf, align 8
  %395 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %394, i32 0, i32 7
  %396 = load i32, i32* %395, align 8
  %397 = icmp slt i32 %393, %396
  br i1 %397, label %398, label %416

398:                                              ; preds = %392
  %399 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %400 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** @debugfs_conf, align 8
  %401 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %400, i32 0, i32 11
  %402 = load %struct.TYPE_2__*, %struct.TYPE_2__** %401, align 8
  %403 = load i32, i32* %15, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %402, i64 %404
  %406 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* %15, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %40, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %399, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %407, i32 %411)
  br label %413

413:                                              ; preds = %398
  %414 = load i32, i32* %15, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %15, align 4
  br label %392

416:                                              ; preds = %392
  store i32 0, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %417

417:                                              ; preds = %416, %57, %49
  %418 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %418)
  %419 = load i32, i32* %3, align 4
  ret i32 %419
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @telemetry_read_eventlog(i32, %struct.telemetry_evtlog*, i32) #2

declare dso_local i32 @telemetry_get_evtname(i32, i8**, i32) #2

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #2

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #2

declare dso_local i32 @TELEM_CHECK_AND_PARSE_EVTS(i64, i32, i32*, i32, %struct.TYPE_2__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
