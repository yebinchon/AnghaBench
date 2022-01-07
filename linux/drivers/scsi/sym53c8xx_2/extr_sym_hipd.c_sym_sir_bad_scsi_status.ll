; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_sir_bad_scsi_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_sir_bad_scsi_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32, i64 }
%struct.sym_ccb = type { i32, i32, i32, i32, i32*, i32, %struct.TYPE_15__, i32, i32, i32, i32, i32, i8*, i8*, i32, %struct.TYPE_16__*, i32*, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i8*, i8* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_16__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@nc_scratcha = common dso_local global i32 0, align 4
@sym_verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"BUSY\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"QUEUE FULL\0A\00", align 1
@HF_SENSE = common dso_local global i32 0, align 4
@start = common dso_local global i32 0, align 4
@scsi_smsg2 = common dso_local global i32 0, align 4
@sensecmd = common dso_local global i32 0, align 4
@REQUEST_SENSE = common dso_local global i32 0, align 4
@SCSI_2 = common dso_local global i32 0, align 4
@SYM_SNS_BBUF_LEN = common dso_local global i32 0, align 4
@sns_bbuf = common dso_local global i32 0, align 4
@sdata_in = common dso_local global i32 0, align 4
@HS_NEGOTIATE = common dso_local global i32 0, align 4
@HS_BUSY = common dso_local global i32 0, align 4
@S_ILLEGAL = common dso_local global i32 0, align 4
@HF_DATA_IN = common dso_local global i32 0, align 4
@select = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_hcb*, i32, %struct.sym_ccb*)* @sym_sir_bad_scsi_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_sir_bad_scsi_status(%struct.sym_hcb* %0, i32 %1, %struct.sym_ccb* %2) #0 {
  %4 = alloca %struct.sym_hcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sym_ccb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sym_ccb* %2, %struct.sym_ccb** %6, align 8
  %12 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %13 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %16 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %19 = load i32, i32* @nc_scratcha, align 4
  %20 = call i32 @INL(%struct.sym_hcb* %18, i32 %19)
  %21 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %22 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %20, %23
  %25 = sdiv i32 %24, 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %40 [
    i32 131, label %27
    i32 129, label %27
    i32 128, label %44
    i32 130, label %44
  ]

27:                                               ; preds = %3, %3
  %28 = load i32, i32* @sym_verbose, align 4
  %29 = icmp sge i32 %28, 2
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %32 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %31, i32 0, i32 15
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 131
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %38 = call i32 @sym_print_addr(%struct.TYPE_16__* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %30, %27
  br label %40

40:                                               ; preds = %3, %39
  %41 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %42 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %43 = call i32 @sym_complete_error(%struct.sym_hcb* %41, %struct.sym_ccb* %42)
  br label %252

44:                                               ; preds = %3, %3
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @HF_SENSE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %51 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %52 = call i32 @sym_complete_error(%struct.sym_hcb* %50, %struct.sym_ccb* %51)
  br label %252

53:                                               ; preds = %44
  %54 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %57 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %56, i32 0, i32 19
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %60 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @sym_dequeue_from_squeue(%struct.sym_hcb* %54, i32 %55, i32 %58, i32 %61, i32 -1)
  %63 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %64 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %65 = load i32, i32* @start, align 4
  %66 = call i32 @SCRIPTA_BA(%struct.sym_hcb* %64, i32 %65)
  %67 = call i32 @OUTL_DSP(%struct.sym_hcb* %63, i32 %66)
  %68 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %69 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %72 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %74 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %77 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %76, i32 0, i32 18
  store i32 %75, i32* %77, align 4
  %78 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %79 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %80 = call i32 @sym_compute_residual(%struct.sym_hcb* %78, %struct.sym_ccb* %79)
  %81 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %82 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %81, i32 0, i32 17
  store i32 %80, i32* %82, align 8
  %83 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %84 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @IDENTIFY(i32 0, i32 %85)
  %87 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %88 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %87, i32 0, i32 16
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  store i32 %86, i32* %90, align 4
  store i32 1, i32* %10, align 4
  %91 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %92 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %91, i32 0, i32 9
  store i32 0, i32* %92, align 8
  %93 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %94 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %95 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %96 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %95, i32 0, i32 16
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = call i32 @sym_prepare_nego(%struct.sym_hcb* %93, %struct.sym_ccb* %94, i32* %100)
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %10, align 4
  %104 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %105 = load i32, i32* @scsi_smsg2, align 4
  %106 = call i8* @CCB_BA(%struct.sym_ccb* %104, i32 %105)
  %107 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %108 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %107, i32 0, i32 6
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  store i8* %106, i8** %110, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i8* @cpu_to_scr(i32 %111)
  %113 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %114 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  store i8* %112, i8** %116, align 8
  %117 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %118 = load i32, i32* @sensecmd, align 4
  %119 = call i8* @CCB_BA(%struct.sym_ccb* %117, i32 %118)
  %120 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %121 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  store i8* %119, i8** %123, align 8
  %124 = call i8* @cpu_to_scr(i32 6)
  %125 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %126 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %125, i32 0, i32 6
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  store i8* %124, i8** %128, align 8
  %129 = load i32, i32* @REQUEST_SENSE, align 4
  %130 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %131 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %130, i32 0, i32 4
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  store i32 %129, i32* %133, align 4
  %134 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %135 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  store i32 0, i32* %137, align 4
  %138 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %139 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %138, i32 0, i32 15
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @SCSI_2, align 4
  %146 = icmp sle i32 %144, %145
  br i1 %146, label %147, label %161

147:                                              ; preds = %53
  %148 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %149 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = icmp sle i32 %150, 7
  br i1 %151, label %152, label %161

152:                                              ; preds = %147
  %153 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %154 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = shl i32 %155, 5
  %157 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %158 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %157, i32 0, i32 4
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  store i32 %156, i32* %160, align 4
  br label %161

161:                                              ; preds = %152, %147, %53
  %162 = load i32, i32* @SYM_SNS_BBUF_LEN, align 4
  %163 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %164 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %163, i32 0, i32 4
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 4
  store i32 %162, i32* %166, align 4
  %167 = load i32, i32* @SYM_SNS_BBUF_LEN, align 4
  %168 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %169 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %168, i32 0, i32 5
  store i32 %167, i32* %169, align 8
  %170 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %171 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %170, i32 0, i32 14
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @SYM_SNS_BBUF_LEN, align 4
  %174 = call i32 @memset(i32 %172, i32 0, i32 %173)
  %175 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %176 = load i32, i32* @sns_bbuf, align 4
  %177 = call i8* @CCB_BA(%struct.sym_ccb* %175, i32 %176)
  %178 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %179 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %178, i32 0, i32 6
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 1
  store i8* %177, i8** %181, align 8
  %182 = load i32, i32* @SYM_SNS_BBUF_LEN, align 4
  %183 = call i8* @cpu_to_scr(i32 %182)
  %184 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %185 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %184, i32 0, i32 6
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  store i8* %183, i8** %187, align 8
  %188 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %189 = load i32, i32* @sdata_in, align 4
  %190 = call i32 @SCRIPTB_BA(%struct.sym_hcb* %188, i32 %189)
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %7, align 4
  %192 = call i8* @cpu_to_scr(i32 %191)
  %193 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %194 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %193, i32 0, i32 6
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 2
  store i8* %192, i8** %196, align 8
  %197 = load i32, i32* %7, align 4
  %198 = call i8* @cpu_to_scr(i32 %197)
  %199 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %200 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %199, i32 0, i32 6
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 1
  store i8* %198, i8** %202, align 8
  %203 = load i32, i32* %7, align 4
  %204 = call i8* @cpu_to_scr(i32 %203)
  %205 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %206 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %205, i32 0, i32 13
  store i8* %204, i8** %206, align 8
  %207 = load i32, i32* %7, align 4
  %208 = add nsw i32 %207, 16
  %209 = call i8* @cpu_to_scr(i32 %208)
  %210 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %211 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %210, i32 0, i32 12
  store i8* %209, i8** %211, align 8
  %212 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %213 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %212, i32 0, i32 11
  store i32 0, i32* %213, align 8
  %214 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %215 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %214, i32 0, i32 9
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %161
  %219 = load i32, i32* @HS_NEGOTIATE, align 4
  br label %222

220:                                              ; preds = %161
  %221 = load i32, i32* @HS_BUSY, align 4
  br label %222

222:                                              ; preds = %220, %218
  %223 = phi i32 [ %219, %218 ], [ %221, %220 ]
  %224 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %225 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %224, i32 0, i32 10
  store i32 %223, i32* %225, align 4
  %226 = load i32, i32* @S_ILLEGAL, align 4
  %227 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %228 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 8
  %229 = load i32, i32* @HF_SENSE, align 4
  %230 = load i32, i32* @HF_DATA_IN, align 4
  %231 = or i32 %229, %230
  %232 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %233 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %232, i32 0, i32 1
  store i32 %231, i32* %233, align 4
  %234 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %235 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %234, i32 0, i32 8
  store i32 0, i32* %235, align 4
  %236 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %237 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %236, i32 0, i32 7
  store i32 0, i32* %237, align 8
  %238 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %239 = load i32, i32* @select, align 4
  %240 = call i32 @SCRIPTA_BA(%struct.sym_hcb* %238, i32 %239)
  %241 = call i8* @cpu_to_scr(i32 %240)
  %242 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %243 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %242, i32 0, i32 6
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 0
  store i8* %241, i8** %246, align 8
  %247 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %248 = load %struct.sym_ccb*, %struct.sym_ccb** %6, align 8
  %249 = call i32 @sym_put_start_queue(%struct.sym_hcb* %247, %struct.sym_ccb* %248)
  %250 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %251 = call i32 @sym_flush_comp_queue(%struct.sym_hcb* %250, i32 0)
  br label %252

252:                                              ; preds = %222, %49, %40
  ret void
}

declare dso_local i32 @INL(%struct.sym_hcb*, i32) #1

declare dso_local i32 @sym_print_addr(%struct.TYPE_16__*, i8*, i8*) #1

declare dso_local i32 @sym_complete_error(%struct.sym_hcb*, %struct.sym_ccb*) #1

declare dso_local i32 @sym_dequeue_from_squeue(%struct.sym_hcb*, i32, i32, i32, i32) #1

declare dso_local i32 @OUTL_DSP(%struct.sym_hcb*, i32) #1

declare dso_local i32 @SCRIPTA_BA(%struct.sym_hcb*, i32) #1

declare dso_local i32 @sym_compute_residual(%struct.sym_hcb*, %struct.sym_ccb*) #1

declare dso_local i32 @IDENTIFY(i32, i32) #1

declare dso_local i32 @sym_prepare_nego(%struct.sym_hcb*, %struct.sym_ccb*, i32*) #1

declare dso_local i8* @CCB_BA(%struct.sym_ccb*, i32) #1

declare dso_local i8* @cpu_to_scr(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @SCRIPTB_BA(%struct.sym_hcb*, i32) #1

declare dso_local i32 @sym_put_start_queue(%struct.sym_hcb*, %struct.sym_ccb*) #1

declare dso_local i32 @sym_flush_comp_queue(%struct.sym_hcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
