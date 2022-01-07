; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_gdth.c_gdth_internal_cache_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_gdth.c_gdth_internal_cache_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.scsi_cmnd = type { i32*, i32, i64*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i8* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.gdth_cmndinfo = type { i32 }
%struct.TYPE_20__ = type { i8*, i32 }

@.str = private unnamed_addr constant [46 x i8] c"gdth_internal_cache_cmd() cmd 0x%x hdrive %d\0A\00", align 1
@DID_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Test/Verify/Start hdrive %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Inquiry hdrive %d devtype %d\0A\00", align 1
@TYPE_ROM = common dso_local global i32 0, align 4
@TYPE_DISK = common dso_local global i32 0, align 4
@CLUSTER_DRIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Host Drive  #%02d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Request sense hdrive %d\0A\00", align 1
@NO_SENSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"Mode sense hdrive %d\0A\00", align 1
@SECTOR_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"Read capacity hdrive %d\0A\00", align 1
@SAI_READ_CAPACITY_16 = common dso_local global i32 0, align 4
@GDT_64BIT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"Read capacity (16) hdrive %d\0A\00", align 1
@DID_ABORT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"Internal cache cmd 0x%x unknown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.scsi_cmnd*)* @gdth_internal_cache_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdth_internal_cache_cmd(%struct.TYPE_13__* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_22__, align 4
  %8 = alloca %struct.TYPE_19__, align 8
  %9 = alloca %struct.TYPE_18__, align 4
  %10 = alloca %struct.TYPE_21__, align 8
  %11 = alloca %struct.gdth_cmndinfo*, align 8
  %12 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %14 = call %struct.gdth_cmndinfo* @gdth_cmnd_priv(%struct.scsi_cmnd* %13)
  store %struct.gdth_cmndinfo* %14, %struct.gdth_cmndinfo** %11, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 3
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %6, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @TRACE(i8* %26)
  %28 = load i32, i32* @DID_OK, align 4
  %29 = shl i32 %28, 16
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %31 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 2
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %37 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %255 [
    i32 129, label %41
    i32 128, label %41
    i32 130, label %41
    i32 135, label %45
    i32 132, label %117
    i32 134, label %131
    i32 133, label %178
    i32 131, label %212
  ]

41:                                               ; preds = %2, %2, %2
  %42 = load i64, i64* %6, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @TRACE2(i8* %43)
  br label %264

45:                                               ; preds = %2
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 @TRACE2(i8* %55)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %45
  %67 = load i32, i32* @TYPE_ROM, align 4
  br label %70

68:                                               ; preds = %45
  %69 = load i32, i32* @TYPE_DISK, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 7
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  store i32 0, i32* %73, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 1
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %70
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %85, align 8
  %87 = load i64, i64* %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @CLUSTER_DRIVE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %83, %70
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  store i32 128, i32* %95, align 4
  br label %96

96:                                               ; preds = %94, %83
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  store i32 2, i32* %97, align 4
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 2
  store i32 2, i32* %98, align 4
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 3
  store i32 32, i32* %99, align 4
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @strcpy(i32 %101, i8* %104)
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = load i64, i64* %6, align 8
  %109 = call i32 @snprintf(i32 %107, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %108)
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @strcpy(i32 %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %114 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %115 = bitcast %struct.TYPE_22__* %7 to i8*
  %116 = call i32 @gdth_copy_internal_data(%struct.TYPE_13__* %113, %struct.scsi_cmnd* %114, i8* %115, i32 32)
  br label %264

117:                                              ; preds = %2
  %118 = load i64, i64* %6, align 8
  %119 = inttoptr i64 %118 to i8*
  %120 = call i32 @TRACE2(i8* %119)
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  store i32 112, i32* %121, align 4
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i32 0, i32* %122, align 4
  %123 = load i32, i32* @NO_SENSE, align 4
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 4
  store i32 %123, i32* %124, align 4
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 3
  store i32 0, i32* %125, align 4
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  store i32 0, i32* %126, align 4
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %128 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %129 = bitcast %struct.TYPE_18__* %9 to i8*
  %130 = call i32 @gdth_copy_internal_data(%struct.TYPE_13__* %127, %struct.scsi_cmnd* %128, i8* %129, i32 20)
  br label %264

131:                                              ; preds = %2
  %132 = load i64, i64* %6, align 8
  %133 = inttoptr i64 %132 to i8*
  %134 = call i32 @TRACE2(i8* %133)
  %135 = bitcast %struct.TYPE_21__* %10 to i8*
  %136 = call i32 @memset(i8* %135, i32 0, i32 24)
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  store i32 24, i32* %138, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %140, align 8
  %142 = load i64, i64* %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, 2
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 128, i32 0
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 2
  store i32 8, i32* %153, align 8
  %154 = load i32, i32* @SECTOR_SIZE, align 4
  %155 = and i32 %154, 16711680
  %156 = ashr i32 %155, 16
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  store i32 %156, i32* %160, align 4
  %161 = load i32, i32* @SECTOR_SIZE, align 4
  %162 = and i32 %161, 65280
  %163 = ashr i32 %162, 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  store i32 %163, i32* %167, align 4
  %168 = load i32, i32* @SECTOR_SIZE, align 4
  %169 = and i32 %168, 255
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 2
  store i32 %169, i32* %173, align 4
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %175 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %176 = bitcast %struct.TYPE_21__* %10 to i8*
  %177 = call i32 @gdth_copy_internal_data(%struct.TYPE_13__* %174, %struct.scsi_cmnd* %175, i8* %176, i32 24)
  br label %264

178:                                              ; preds = %2
  %179 = load i64, i64* %6, align 8
  %180 = inttoptr i64 %179 to i8*
  %181 = call i32 @TRACE2(i8* %180)
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %183, align 8
  %185 = load i64, i64* %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = icmp sgt i32 %188, -1
  br i1 %189, label %190, label %192

190:                                              ; preds = %178
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  store i32 -1, i32* %191, align 8
  br label %204

192:                                              ; preds = %178
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %194, align 8
  %196 = load i64, i64* %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = sub nsw i32 %199, 1
  %201 = call i8* @cpu_to_be32(i32 %200)
  %202 = ptrtoint i8* %201 to i32
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  store i32 %202, i32* %203, align 8
  br label %204

204:                                              ; preds = %192, %190
  %205 = load i32, i32* @SECTOR_SIZE, align 4
  %206 = call i8* @cpu_to_be32(i32 %205)
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  store i8* %206, i8** %207, align 8
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %209 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %210 = bitcast %struct.TYPE_19__* %8 to i8*
  %211 = call i32 @gdth_copy_internal_data(%struct.TYPE_13__* %208, %struct.scsi_cmnd* %209, i8* %210, i32 16)
  br label %264

212:                                              ; preds = %2
  %213 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %214 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 1
  %217 = load i32, i32* %216, align 4
  %218 = and i32 %217, 31
  %219 = load i32, i32* @SAI_READ_CAPACITY_16, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %249

221:                                              ; preds = %212
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @GDT_64BIT, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %249

228:                                              ; preds = %221
  %229 = load i64, i64* %6, align 8
  %230 = inttoptr i64 %229 to i8*
  %231 = call i32 @TRACE2(i8* %230)
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 2
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %233, align 8
  %235 = load i64, i64* %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = sub nsw i32 %238, 1
  %240 = call i32 @cpu_to_be64(i32 %239)
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  store i32 %240, i32* %241, align 8
  %242 = load i32, i32* @SECTOR_SIZE, align 4
  %243 = call i8* @cpu_to_be32(i32 %242)
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  store i8* %243, i8** %244, align 8
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %246 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %247 = bitcast %struct.TYPE_20__* %12 to i8*
  %248 = call i32 @gdth_copy_internal_data(%struct.TYPE_13__* %245, %struct.scsi_cmnd* %246, i8* %247, i32 16)
  br label %254

249:                                              ; preds = %221, %212
  %250 = load i32, i32* @DID_ABORT, align 4
  %251 = shl i32 %250, 16
  %252 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %253 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %252, i32 0, i32 1
  store i32 %251, i32* %253, align 8
  br label %254

254:                                              ; preds = %249, %228
  br label %264

255:                                              ; preds = %2
  %256 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %257 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 0
  %260 = load i32, i32* %259, align 4
  %261 = sext i32 %260 to i64
  %262 = inttoptr i64 %261 to i8*
  %263 = call i32 @TRACE2(i8* %262)
  br label %264

264:                                              ; preds = %255, %254, %204, %131, %117, %96, %41
  %265 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %11, align 8
  %266 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %274, label %269

269:                                              ; preds = %264
  %270 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %11, align 8
  %271 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %271, align 4
  br label %275

274:                                              ; preds = %264
  store i32 1, i32* %3, align 4
  br label %276

275:                                              ; preds = %269
  store i32 0, i32* %3, align 4
  br label %276

276:                                              ; preds = %275, %274
  %277 = load i32, i32* %3, align 4
  ret i32 %277
}

declare dso_local %struct.gdth_cmndinfo* @gdth_cmnd_priv(%struct.scsi_cmnd*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @TRACE2(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64) #1

declare dso_local i32 @gdth_copy_internal_data(%struct.TYPE_13__*, %struct.scsi_cmnd*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
