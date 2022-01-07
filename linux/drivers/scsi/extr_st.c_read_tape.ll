; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_read_tape.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_read_tape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_tape = type { i64, i64, i32, %struct.st_buffer*, i64, %struct.TYPE_6__*, i64, %struct.st_partstat*, %struct.st_modedef* }
%struct.st_buffer = type { i32, i32, i64, i32, %struct.st_cmdstatus, i64, i32 }
%struct.st_cmdstatus = type { i32, i64, %struct.TYPE_4__, i64, i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.st_partstat = type { i64, i32, i64 }
%struct.st_modedef = type { i64 }
%struct.st_request = type { i32* }

@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@ST_FM_HIT = common dso_local global i64 0, align 8
@try_rdio = common dso_local global i64 0, align 8
@READ_6 = common dso_local global i8 0, align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@MAX_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Sense: %2x %2x %2x %2x %2x %2x %2x %2x\0A\00", align 1
@BLANK_CHECK = common dso_local global i64 0, align 8
@MEDIUM_ERROR = common dso_local global i64 0, align 8
@SENSE_ILI = common dso_local global i32 0, align 4
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Failed to read %d byte block with %d byte transfer.\0A\00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Incorrect block size.\0A\00", align 1
@MTBSR = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"ILI but enough data received %ld %d.\0A\00", align 1
@SENSE_FMK = common dso_local global i32 0, align 4
@ST_EOD_2 = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"EOF detected (%d bytes read).\0A\00", align 1
@SENSE_EOM = common dso_local global i32 0, align 4
@ST_FM = common dso_local global i64 0, align 8
@ST_EOD_1 = common dso_local global i64 0, align 8
@ST_EOM_OK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"EOM detected (%d bytes read).\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Tape error while reading.\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Zero returned for first BLANK CHECK after EOF.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scsi_tape*, i64, %struct.st_request**)* @read_tape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_tape(%struct.scsi_tape* %0, i64 %1, %struct.st_request** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.scsi_tape*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.st_request**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.st_request*, align 8
  %14 = alloca %struct.st_modedef*, align 8
  %15 = alloca %struct.st_partstat*, align 8
  %16 = alloca %struct.st_buffer*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.st_cmdstatus*, align 8
  store %struct.scsi_tape* %0, %struct.scsi_tape** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.st_request** %2, %struct.st_request*** %7, align 8
  %20 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  store i32 0, i32* %17, align 4
  %24 = load i64, i64* %6, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  store i32 1, i32* %18, align 4
  br label %596

27:                                               ; preds = %3
  %28 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %29 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %28, i32 0, i32 8
  %30 = load %struct.st_modedef*, %struct.st_modedef** %29, align 8
  %31 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %32 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %30, i64 %33
  store %struct.st_modedef* %34, %struct.st_modedef** %14, align 8
  %35 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %36 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %35, i32 0, i32 7
  %37 = load %struct.st_partstat*, %struct.st_partstat** %36, align 8
  %38 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %39 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %37, i64 %40
  store %struct.st_partstat* %41, %struct.st_partstat** %15, align 8
  %42 = load %struct.st_partstat*, %struct.st_partstat** %15, align 8
  %43 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ST_FM_HIT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %27
  store i64 1, i64* %4, align 8
  store i32 1, i32* %18, align 4
  br label %596

48:                                               ; preds = %27
  %49 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %50 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %49, i32 0, i32 3
  %51 = load %struct.st_buffer*, %struct.st_buffer** %50, align 8
  store %struct.st_buffer* %51, %struct.st_buffer** %16, align 8
  %52 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %53 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i64, i64* %6, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %10, align 4
  store i32 %58, i32* %9, align 4
  br label %116

59:                                               ; preds = %48
  %60 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %61 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i64, i64* @try_rdio, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %64, %59
  %68 = load %struct.st_modedef*, %struct.st_modedef** %14, align 8
  %69 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %74 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %73, i32 0, i32 3
  %75 = load %struct.st_buffer*, %struct.st_buffer** %74, align 8
  %76 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %80 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %78, %81
  store i32 %82, i32* %10, align 4
  br label %115

83:                                               ; preds = %67, %64
  %84 = load i64, i64* %6, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %10, align 4
  %86 = load %struct.st_buffer*, %struct.st_buffer** %16, align 8
  %87 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %104, label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %93 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %92, i32 0, i32 3
  %94 = load %struct.st_buffer*, %struct.st_buffer** %93, align 8
  %95 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %91, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %100 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %99, i32 0, i32 3
  %101 = load %struct.st_buffer*, %struct.st_buffer** %100, align 8
  %102 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %98, %90, %83
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %107 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = sdiv i32 %105, %108
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %112 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = mul nsw i32 %110, %113
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %104, %72
  br label %116

116:                                              ; preds = %115, %56
  %117 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %118 = call i32 @memset(i8* %23, i32 0, i32 %117)
  %119 = load i8, i8* @READ_6, align 1
  %120 = getelementptr inbounds i8, i8* %23, i64 0
  store i8 %119, i8* %120, align 16
  %121 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %122 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = trunc i32 %125 to i8
  %127 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 %126, i8* %127, align 1
  %128 = getelementptr inbounds i8, i8* %23, i64 1
  %129 = load i8, i8* %128, align 1
  %130 = icmp ne i8 %129, 0
  br i1 %130, label %142, label %131

131:                                              ; preds = %116
  %132 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %133 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = getelementptr inbounds i8, i8* %23, i64 1
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = or i32 %139, 2
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %137, align 1
  br label %142

142:                                              ; preds = %136, %131, %116
  %143 = load i32, i32* %9, align 4
  %144 = ashr i32 %143, 16
  %145 = trunc i32 %144 to i8
  %146 = getelementptr inbounds i8, i8* %23, i64 2
  store i8 %145, i8* %146, align 2
  %147 = load i32, i32* %9, align 4
  %148 = ashr i32 %147, 8
  %149 = trunc i32 %148 to i8
  %150 = getelementptr inbounds i8, i8* %23, i64 3
  store i8 %149, i8* %150, align 1
  %151 = load i32, i32* %9, align 4
  %152 = trunc i32 %151 to i8
  %153 = getelementptr inbounds i8, i8* %23, i64 4
  store i8 %152, i8* %153, align 4
  %154 = load %struct.st_request**, %struct.st_request*** %7, align 8
  %155 = load %struct.st_request*, %struct.st_request** %154, align 8
  store %struct.st_request* %155, %struct.st_request** %13, align 8
  %156 = load %struct.st_request*, %struct.st_request** %13, align 8
  %157 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %160 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %161 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %160, i32 0, i32 5
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @MAX_RETRIES, align 4
  %168 = call %struct.st_request* @st_do_scsi(%struct.st_request* %156, %struct.scsi_tape* %157, i8* %23, i32 %158, i32 %159, i32 %166, i32 %167, i32 1)
  store %struct.st_request* %168, %struct.st_request** %13, align 8
  %169 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %170 = call i32 @release_buffering(%struct.scsi_tape* %169, i32 1)
  %171 = load %struct.st_request*, %struct.st_request** %13, align 8
  %172 = load %struct.st_request**, %struct.st_request*** %7, align 8
  store %struct.st_request* %171, %struct.st_request** %172, align 8
  %173 = load %struct.st_request*, %struct.st_request** %13, align 8
  %174 = icmp ne %struct.st_request* %173, null
  br i1 %174, label %179, label %175

175:                                              ; preds = %142
  %176 = load %struct.st_buffer*, %struct.st_buffer** %16, align 8
  %177 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* %4, align 8
  store i32 1, i32* %18, align 4
  br label %596

179:                                              ; preds = %142
  %180 = load %struct.st_buffer*, %struct.st_buffer** %16, align 8
  %181 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %180, i32 0, i32 5
  store i64 0, i64* %181, align 8
  %182 = load %struct.st_partstat*, %struct.st_partstat** %15, align 8
  %183 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %182, i32 0, i32 2
  store i64 0, i64* %183, align 8
  %184 = load %struct.st_buffer*, %struct.st_buffer** %16, align 8
  %185 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %543

188:                                              ; preds = %179
  %189 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %190 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %189, i32 0, i32 3
  %191 = load %struct.st_buffer*, %struct.st_buffer** %190, align 8
  %192 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %191, i32 0, i32 4
  store %struct.st_cmdstatus* %192, %struct.st_cmdstatus** %19, align 8
  store i32 1, i32* %17, align 4
  %193 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %194 = load %struct.st_request*, %struct.st_request** %13, align 8
  %195 = getelementptr inbounds %struct.st_request, %struct.st_request* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.st_request*, %struct.st_request** %13, align 8
  %200 = getelementptr inbounds %struct.st_request, %struct.st_request* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.st_request*, %struct.st_request** %13, align 8
  %205 = getelementptr inbounds %struct.st_request, %struct.st_request* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 2
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.st_request*, %struct.st_request** %13, align 8
  %210 = getelementptr inbounds %struct.st_request, %struct.st_request* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 3
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.st_request*, %struct.st_request** %13, align 8
  %215 = getelementptr inbounds %struct.st_request, %struct.st_request* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 4
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.st_request*, %struct.st_request** %13, align 8
  %220 = getelementptr inbounds %struct.st_request, %struct.st_request* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 5
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.st_request*, %struct.st_request** %13, align 8
  %225 = getelementptr inbounds %struct.st_request, %struct.st_request* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 6
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.st_request*, %struct.st_request** %13, align 8
  %230 = getelementptr inbounds %struct.st_request, %struct.st_request* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 7
  %233 = load i32, i32* %232, align 4
  %234 = call i32 (%struct.scsi_tape*, i8*, ...) @DEBC_printk(%struct.scsi_tape* %193, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %198, i32 %203, i32 %208, i32 %213, i32 %218, i32 %223, i32 %228, i32 %233)
  %235 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %19, align 8
  %236 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %235, i32 0, i32 5
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %537

239:                                              ; preds = %188
  %240 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %19, align 8
  %241 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @BLANK_CHECK, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %251

246:                                              ; preds = %239
  %247 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %19, align 8
  %248 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = and i32 %249, 207
  store i32 %250, i32* %248, align 8
  br label %251

251:                                              ; preds = %246, %239
  %252 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %19, align 8
  %253 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %499

256:                                              ; preds = %251
  %257 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %19, align 8
  %258 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %257, i32 0, i32 4
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %266

261:                                              ; preds = %256
  %262 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %19, align 8
  %263 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %262, i32 0, i32 3
  %264 = load i64, i64* %263, align 8
  %265 = trunc i64 %264 to i32
  store i32 %265, i32* %8, align 4
  br label %267

266:                                              ; preds = %256
  store i32 0, i32* %8, align 4
  br label %267

267:                                              ; preds = %266, %261
  %268 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %19, align 8
  %269 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @MEDIUM_ERROR, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %288

274:                                              ; preds = %267
  %275 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %276 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %274
  %280 = load i32, i32* %10, align 4
  store i32 %280, i32* %8, align 4
  br label %281

281:                                              ; preds = %279, %274
  %282 = load i32, i32* @SENSE_ILI, align 4
  %283 = xor i32 %282, -1
  %284 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %19, align 8
  %285 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = and i32 %286, %283
  store i32 %287, i32* %285, align 8
  br label %288

288:                                              ; preds = %281, %267
  %289 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %19, align 8
  %290 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @SENSE_ILI, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %402

295:                                              ; preds = %288
  %296 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %297 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %325

300:                                              ; preds = %295
  %301 = load i32, i32* %8, align 4
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %303, label %325

303:                                              ; preds = %300
  %304 = load i32, i32* @KERN_NOTICE, align 4
  %305 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %306 = load i32, i32* %10, align 4
  %307 = load i32, i32* %8, align 4
  %308 = sub nsw i32 %306, %307
  %309 = load i32, i32* %10, align 4
  %310 = call i32 (i32, %struct.scsi_tape*, i8*, ...) @st_printk(i32 %304, %struct.scsi_tape* %305, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %308, i32 %309)
  %311 = load %struct.st_partstat*, %struct.st_partstat** %15, align 8
  %312 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = icmp sge i32 %313, 0
  br i1 %314, label %315, label %320

315:                                              ; preds = %303
  %316 = load %struct.st_partstat*, %struct.st_partstat** %15, align 8
  %317 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 8
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %317, align 8
  br label %320

320:                                              ; preds = %315, %303
  %321 = load %struct.st_buffer*, %struct.st_buffer** %16, align 8
  %322 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %321, i32 0, i32 3
  store i32 0, i32* %322, align 8
  %323 = load i64, i64* @ENOMEM, align 8
  %324 = sub nsw i64 0, %323
  store i64 %324, i64* %4, align 8
  store i32 1, i32* %18, align 4
  br label %596

325:                                              ; preds = %300, %295
  %326 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %327 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %336

330:                                              ; preds = %325
  %331 = load i32, i32* %10, align 4
  %332 = load i32, i32* %8, align 4
  %333 = sub nsw i32 %331, %332
  %334 = load %struct.st_buffer*, %struct.st_buffer** %16, align 8
  %335 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %334, i32 0, i32 3
  store i32 %333, i32* %335, align 8
  br label %400

336:                                              ; preds = %325
  %337 = load %struct.st_request*, %struct.st_request** %13, align 8
  %338 = call i32 @st_release_request(%struct.st_request* %337)
  %339 = load %struct.st_request**, %struct.st_request*** %7, align 8
  store %struct.st_request* null, %struct.st_request** %339, align 8
  store %struct.st_request* null, %struct.st_request** %13, align 8
  %340 = load i32, i32* %8, align 4
  %341 = load i32, i32* %9, align 4
  %342 = icmp eq i32 %340, %341
  br i1 %342, label %343, label %366

343:                                              ; preds = %336
  %344 = load i32, i32* @KERN_NOTICE, align 4
  %345 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %346 = call i32 (i32, %struct.scsi_tape*, i8*, ...) @st_printk(i32 %344, %struct.scsi_tape* %345, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %347 = load %struct.st_partstat*, %struct.st_partstat** %15, align 8
  %348 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 8
  %350 = icmp sge i32 %349, 0
  br i1 %350, label %351, label %360

351:                                              ; preds = %343
  %352 = load i32, i32* %9, align 4
  %353 = load i32, i32* %8, align 4
  %354 = sub nsw i32 %352, %353
  %355 = add nsw i32 %354, 1
  %356 = load %struct.st_partstat*, %struct.st_partstat** %15, align 8
  %357 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  %359 = add nsw i32 %358, %355
  store i32 %359, i32* %357, align 8
  br label %360

360:                                              ; preds = %351, %343
  %361 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %362 = load i32, i32* @MTBSR, align 4
  %363 = call i64 @st_int_ioctl(%struct.scsi_tape* %361, i32 %362, i32 1)
  %364 = load i64, i64* @EIO, align 8
  %365 = sub nsw i64 0, %364
  store i64 %365, i64* %4, align 8
  store i32 1, i32* %18, align 4
  br label %596

366:                                              ; preds = %336
  %367 = load i32, i32* %9, align 4
  %368 = load i32, i32* %8, align 4
  %369 = sub nsw i32 %367, %368
  %370 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %371 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 8
  %373 = mul nsw i32 %369, %372
  %374 = load %struct.st_buffer*, %struct.st_buffer** %16, align 8
  %375 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %374, i32 0, i32 3
  store i32 %373, i32* %375, align 8
  %376 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %377 = load i64, i64* %6, align 8
  %378 = load %struct.st_buffer*, %struct.st_buffer** %16, align 8
  %379 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %378, i32 0, i32 3
  %380 = load i32, i32* %379, align 8
  %381 = call i32 (%struct.scsi_tape*, i8*, ...) @DEBC_printk(%struct.scsi_tape* %376, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %377, i32 %380)
  %382 = load %struct.st_partstat*, %struct.st_partstat** %15, align 8
  %383 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 8
  %385 = icmp sge i32 %384, 0
  br i1 %385, label %386, label %391

386:                                              ; preds = %366
  %387 = load %struct.st_partstat*, %struct.st_partstat** %15, align 8
  %388 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 8
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %388, align 8
  br label %391

391:                                              ; preds = %386, %366
  %392 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %393 = load i32, i32* @MTBSR, align 4
  %394 = call i64 @st_int_ioctl(%struct.scsi_tape* %392, i32 %393, i32 1)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %399

396:                                              ; preds = %391
  %397 = load i64, i64* @EIO, align 8
  %398 = sub nsw i64 0, %397
  store i64 %398, i64* %4, align 8
  store i32 1, i32* %18, align 4
  br label %596

399:                                              ; preds = %391
  br label %400

400:                                              ; preds = %399, %330
  br label %401

401:                                              ; preds = %400
  br label %498

402:                                              ; preds = %288
  %403 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %19, align 8
  %404 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = load i32, i32* @SENSE_FMK, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %448

409:                                              ; preds = %402
  %410 = load %struct.st_partstat*, %struct.st_partstat** %15, align 8
  %411 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = load i64, i64* @ST_FM_HIT, align 8
  %414 = icmp ne i64 %412, %413
  br i1 %414, label %415, label %419

415:                                              ; preds = %409
  %416 = load i64, i64* @ST_FM_HIT, align 8
  %417 = load %struct.st_partstat*, %struct.st_partstat** %15, align 8
  %418 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %417, i32 0, i32 0
  store i64 %416, i64* %418, align 8
  br label %424

419:                                              ; preds = %409
  %420 = load i8*, i8** @ST_EOD_2, align 8
  %421 = ptrtoint i8* %420 to i64
  %422 = load %struct.st_partstat*, %struct.st_partstat** %15, align 8
  %423 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %422, i32 0, i32 0
  store i64 %421, i64* %423, align 8
  br label %424

424:                                              ; preds = %419, %415
  %425 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %426 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %425, i32 0, i32 2
  %427 = load i32, i32* %426, align 8
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %432

429:                                              ; preds = %424
  %430 = load %struct.st_buffer*, %struct.st_buffer** %16, align 8
  %431 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %430, i32 0, i32 3
  store i32 0, i32* %431, align 8
  br label %442

432:                                              ; preds = %424
  %433 = load i32, i32* %10, align 4
  %434 = load i32, i32* %8, align 4
  %435 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %436 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %435, i32 0, i32 2
  %437 = load i32, i32* %436, align 8
  %438 = mul nsw i32 %434, %437
  %439 = sub nsw i32 %433, %438
  %440 = load %struct.st_buffer*, %struct.st_buffer** %16, align 8
  %441 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %440, i32 0, i32 3
  store i32 %439, i32* %441, align 8
  br label %442

442:                                              ; preds = %432, %429
  %443 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %444 = load %struct.st_buffer*, %struct.st_buffer** %16, align 8
  %445 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %444, i32 0, i32 3
  %446 = load i32, i32* %445, align 8
  %447 = call i32 (%struct.scsi_tape*, i8*, ...) @DEBC_printk(%struct.scsi_tape* %443, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %446)
  br label %497

448:                                              ; preds = %402
  %449 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %19, align 8
  %450 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = load i32, i32* @SENSE_EOM, align 4
  %453 = and i32 %451, %452
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %496

455:                                              ; preds = %448
  %456 = load %struct.st_partstat*, %struct.st_partstat** %15, align 8
  %457 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %456, i32 0, i32 0
  %458 = load i64, i64* %457, align 8
  %459 = load i64, i64* @ST_FM, align 8
  %460 = icmp eq i64 %458, %459
  br i1 %460, label %461, label %465

461:                                              ; preds = %455
  %462 = load i64, i64* @ST_EOD_1, align 8
  %463 = load %struct.st_partstat*, %struct.st_partstat** %15, align 8
  %464 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %463, i32 0, i32 0
  store i64 %462, i64* %464, align 8
  br label %469

465:                                              ; preds = %455
  %466 = load i64, i64* @ST_EOM_OK, align 8
  %467 = load %struct.st_partstat*, %struct.st_partstat** %15, align 8
  %468 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %467, i32 0, i32 0
  store i64 %466, i64* %468, align 8
  br label %469

469:                                              ; preds = %465, %461
  %470 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %471 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %470, i32 0, i32 2
  %472 = load i32, i32* %471, align 8
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %480

474:                                              ; preds = %469
  %475 = load i32, i32* %10, align 4
  %476 = load i32, i32* %8, align 4
  %477 = sub nsw i32 %475, %476
  %478 = load %struct.st_buffer*, %struct.st_buffer** %16, align 8
  %479 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %478, i32 0, i32 3
  store i32 %477, i32* %479, align 8
  br label %490

480:                                              ; preds = %469
  %481 = load i32, i32* %10, align 4
  %482 = load i32, i32* %8, align 4
  %483 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %484 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %483, i32 0, i32 2
  %485 = load i32, i32* %484, align 8
  %486 = mul nsw i32 %482, %485
  %487 = sub nsw i32 %481, %486
  %488 = load %struct.st_buffer*, %struct.st_buffer** %16, align 8
  %489 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %488, i32 0, i32 3
  store i32 %487, i32* %489, align 8
  br label %490

490:                                              ; preds = %480, %474
  %491 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %492 = load %struct.st_buffer*, %struct.st_buffer** %16, align 8
  %493 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %492, i32 0, i32 3
  %494 = load i32, i32* %493, align 8
  %495 = call i32 (%struct.scsi_tape*, i8*, ...) @DEBC_printk(%struct.scsi_tape* %491, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %494)
  br label %496

496:                                              ; preds = %490, %448
  br label %497

497:                                              ; preds = %496, %442
  br label %498

498:                                              ; preds = %497, %401
  br label %528

499:                                              ; preds = %251
  %500 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %501 = call i32 (%struct.scsi_tape*, i8*, ...) @DEBC_printk(%struct.scsi_tape* %500, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %502 = load %struct.st_partstat*, %struct.st_partstat** %15, align 8
  %503 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %502, i32 0, i32 1
  store i32 -1, i32* %503, align 8
  %504 = load %struct.st_partstat*, %struct.st_partstat** %15, align 8
  %505 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %504, i32 0, i32 0
  %506 = load i64, i64* %505, align 8
  %507 = load i64, i64* @ST_FM, align 8
  %508 = icmp eq i64 %506, %507
  br i1 %508, label %509, label %523

509:                                              ; preds = %499
  %510 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %19, align 8
  %511 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %510, i32 0, i32 2
  %512 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %511, i32 0, i32 0
  %513 = load i64, i64* %512, align 8
  %514 = load i64, i64* @BLANK_CHECK, align 8
  %515 = icmp eq i64 %513, %514
  br i1 %515, label %516, label %523

516:                                              ; preds = %509
  %517 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %518 = call i32 (%struct.scsi_tape*, i8*, ...) @DEBC_printk(%struct.scsi_tape* %517, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  %519 = load i8*, i8** @ST_EOD_2, align 8
  %520 = ptrtoint i8* %519 to i64
  %521 = load %struct.st_partstat*, %struct.st_partstat** %15, align 8
  %522 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %521, i32 0, i32 0
  store i64 %520, i64* %522, align 8
  br label %527

523:                                              ; preds = %509, %499
  %524 = load i64, i64* @EIO, align 8
  %525 = sub nsw i64 0, %524
  %526 = trunc i64 %525 to i32
  store i32 %526, i32* %17, align 4
  br label %527

527:                                              ; preds = %523, %516
  br label %528

528:                                              ; preds = %527, %498
  %529 = load %struct.st_buffer*, %struct.st_buffer** %16, align 8
  %530 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %529, i32 0, i32 3
  %531 = load i32, i32* %530, align 8
  %532 = icmp slt i32 %531, 0
  br i1 %532, label %533, label %536

533:                                              ; preds = %528
  %534 = load %struct.st_buffer*, %struct.st_buffer** %16, align 8
  %535 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %534, i32 0, i32 3
  store i32 0, i32* %535, align 8
  br label %536

536:                                              ; preds = %533, %528
  br label %542

537:                                              ; preds = %188
  %538 = load %struct.st_buffer*, %struct.st_buffer** %16, align 8
  %539 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %538, i32 0, i32 2
  %540 = load i64, i64* %539, align 8
  %541 = trunc i64 %540 to i32
  store i32 %541, i32* %17, align 4
  br label %542

542:                                              ; preds = %537, %536
  br label %565

543:                                              ; preds = %179
  %544 = load i32, i32* %10, align 4
  %545 = load %struct.st_buffer*, %struct.st_buffer** %16, align 8
  %546 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %545, i32 0, i32 3
  store i32 %544, i32* %546, align 8
  %547 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %548 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %547, i32 0, i32 4
  %549 = load i64, i64* %548, align 8
  %550 = icmp ne i64 %549, 0
  br i1 %550, label %551, label %564

551:                                              ; preds = %543
  %552 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %553 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %552, i32 0, i32 3
  %554 = load %struct.st_buffer*, %struct.st_buffer** %553, align 8
  %555 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %554, i32 0, i32 4
  %556 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %555, i32 0, i32 1
  %557 = load i64, i64* %556, align 8
  %558 = load %struct.st_buffer*, %struct.st_buffer** %16, align 8
  %559 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %558, i32 0, i32 3
  %560 = load i32, i32* %559, align 8
  %561 = sext i32 %560 to i64
  %562 = sub nsw i64 %561, %557
  %563 = trunc i64 %562 to i32
  store i32 %563, i32* %559, align 8
  br label %564

564:                                              ; preds = %551, %543
  br label %565

565:                                              ; preds = %564, %542
  %566 = load %struct.st_partstat*, %struct.st_partstat** %15, align 8
  %567 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %566, i32 0, i32 1
  %568 = load i32, i32* %567, align 8
  %569 = icmp sge i32 %568, 0
  br i1 %569, label %570, label %593

570:                                              ; preds = %565
  %571 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %572 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %571, i32 0, i32 2
  %573 = load i32, i32* %572, align 8
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %575, label %580

575:                                              ; preds = %570
  %576 = load %struct.st_partstat*, %struct.st_partstat** %15, align 8
  %577 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %576, i32 0, i32 1
  %578 = load i32, i32* %577, align 8
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* %577, align 8
  br label %592

580:                                              ; preds = %570
  %581 = load %struct.st_buffer*, %struct.st_buffer** %16, align 8
  %582 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %581, i32 0, i32 3
  %583 = load i32, i32* %582, align 8
  %584 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %585 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %584, i32 0, i32 2
  %586 = load i32, i32* %585, align 8
  %587 = sdiv i32 %583, %586
  %588 = load %struct.st_partstat*, %struct.st_partstat** %15, align 8
  %589 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %588, i32 0, i32 1
  %590 = load i32, i32* %589, align 8
  %591 = add nsw i32 %590, %587
  store i32 %591, i32* %589, align 8
  br label %592

592:                                              ; preds = %580, %575
  br label %593

593:                                              ; preds = %592, %565
  %594 = load i32, i32* %17, align 4
  %595 = sext i32 %594 to i64
  store i64 %595, i64* %4, align 8
  store i32 1, i32* %18, align 4
  br label %596

596:                                              ; preds = %593, %396, %360, %320, %175, %47, %26
  %597 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %597)
  %598 = load i64, i64* %4, align 8
  ret i64 %598
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local %struct.st_request* @st_do_scsi(%struct.st_request*, %struct.scsi_tape*, i8*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @release_buffering(%struct.scsi_tape*, i32) #2

declare dso_local i32 @DEBC_printk(%struct.scsi_tape*, i8*, ...) #2

declare dso_local i32 @st_printk(i32, %struct.scsi_tape*, i8*, ...) #2

declare dso_local i32 @st_release_request(%struct.st_request*) #2

declare dso_local i64 @st_int_ioctl(%struct.scsi_tape*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
