; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_megaraid.c_mega_cmd_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_megaraid.c_mega_cmd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32*, i32, %struct.TYPE_14__*, i32*, i32*, %struct.TYPE_16__*, i32, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, i64, %struct.TYPE_18__*, %struct.TYPE_17__*, %struct.scsi_cmnd*, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.scsi_cmnd = type { i32, i64, i64*, i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.scatterlist = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }

@CMDID_INT_CMDS = common dso_local global i32 0, align 4
@SCB_FREE = common dso_local global i32 0, align 4
@SCB_ISSUED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"invalid command Id %d, scb->state:%x, scsi cmd:%p\0A\00", align 1
@SCB_ABORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"aborted cmd [%x] complete\0A\00", align 1
@DID_ABORT = common dso_local global i32 0, align 4
@SCB_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"reset cmd [%x] complete\0A\00", align 1
@DID_RESET = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"invalid sg\0A\00", align 1
@TYPE_DISK = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@MEGA_MBOXCMD_PASSTHRU = common dso_local global i32 0, align 4
@MEGA_MBOXCMD_PASSTHRU64 = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@CHECK_CONDITION = common dso_local global i32 0, align 4
@MEGA_MBOXCMD_EXTPTHRU = common dso_local global i32 0, align 4
@ABORTED_COMMAND = common dso_local global i32 0, align 4
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@DID_BAD_TARGET = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@READ_10 = common dso_local global i64 0, align 8
@READ_12 = common dso_local global i64 0, align 8
@READ_6 = common dso_local global i64 0, align 8
@RELEASE = common dso_local global i64 0, align 8
@RESERVATION_CONFLICT = common dso_local global i32 0, align 4
@RESERVE = common dso_local global i64 0, align 8
@TEST_UNIT_READY = common dso_local global i64 0, align 8
@WRITE_10 = common dso_local global i64 0, align 8
@WRITE_12 = common dso_local global i64 0, align 8
@WRITE_6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, i32*, i32, i32)* @mega_cmd_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mega_cmd_done(%struct.TYPE_20__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca %struct.scsi_cmnd*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %9, align 8
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %11, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %13, align 8
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %325, %4
  %20 = load i32, i32* %18, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %328

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %18, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* @CMDID_INT_CMDS, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %23
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 8
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %15, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 6
  %37 = call i32 @list_del_init(i32* %36)
  %38 = load i32, i32* @SCB_FREE, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 7
  %46 = call i32 @complete(i32* %45)
  br label %156

47:                                               ; preds = %23
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 6
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = load i32, i32* %17, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i64 %52
  store %struct.TYPE_16__* %53, %struct.TYPE_16__** %15, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SCB_ISSUED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %47
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 4
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %62, align 8
  %64 = icmp eq %struct.scsi_cmnd* %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %60, %47
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %17, align 4
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 4
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %75, align 8
  %77 = call i32 @dev_crit(i32* %69, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %73, %struct.scsi_cmnd* %76)
  br label %325

78:                                               ; preds = %60
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @SCB_ABORT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %78
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i32*, i8*, ...) @dev_warn(i32* %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @DID_ABORT, align 4
  %95 = shl i32 %94, 16
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 4
  %98 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %97, align 8
  %99 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 4
  %102 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %101, align 8
  %103 = call i32 @SCSI_LIST(%struct.scsi_cmnd* %102)
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 2
  %106 = call i32 @list_add_tail(i32 %103, i32* %105)
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %109 = call i32 @mega_free_scb(%struct.TYPE_20__* %107, %struct.TYPE_16__* %108)
  br label %325

110:                                              ; preds = %78
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @SCB_RESET, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %142

117:                                              ; preds = %110
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (i32*, i8*, ...) @dev_warn(i32* %121, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @DID_RESET, align 4
  %127 = shl i32 %126, 16
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 4
  %130 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %129, align 8
  %131 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %130, i32 0, i32 0
  store i32 %127, i32* %131, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 4
  %134 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %133, align 8
  %135 = call i32 @SCSI_LIST(%struct.scsi_cmnd* %134)
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 2
  %138 = call i32 @list_add_tail(i32 %135, i32* %137)
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %141 = call i32 @mega_free_scb(%struct.TYPE_20__* %139, %struct.TYPE_16__* %140)
  br label %325

142:                                              ; preds = %110
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 4
  %145 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %144, align 8
  store %struct.scsi_cmnd* %145, %struct.scsi_cmnd** %11, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 3
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %147, align 8
  store %struct.TYPE_17__* %148, %struct.TYPE_17__** %12, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %150, align 8
  store %struct.TYPE_18__* %151, %struct.TYPE_18__** %9, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = inttoptr i64 %154 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %155, %struct.TYPE_19__** %13, align 8
  br label %156

156:                                              ; preds = %142, %32
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %161 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %160, i32 0, i32 4
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds i32, i32* %159, i64 %164
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %16, align 4
  %167 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %168 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %167, i32 0, i32 2
  %169 = load i64*, i64** %168, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @INQUIRY, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %212

174:                                              ; preds = %156
  %175 = load i32, i32* %16, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %212, label %177

177:                                              ; preds = %174
  %178 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %179 = call %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd* %178)
  store %struct.scatterlist* %179, %struct.scatterlist** %10, align 8
  %180 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %181 = call i64 @sg_page(%struct.scatterlist* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %177
  %184 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %185 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %184, i64 0
  %186 = call i64 @sg_virt(%struct.scatterlist* %185)
  %187 = inttoptr i64 %186 to i8*
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  store i32 %189, i32* %14, align 4
  br label %196

190:                                              ; preds = %177
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 3
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  %195 = call i32 (i32*, i8*, ...) @dev_warn(i32* %194, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %196

196:                                              ; preds = %190, %183
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %198 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %199 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %198, i32 0, i32 4
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = call i64 @IS_RAID_CH(%struct.TYPE_20__* %197, i64 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %196
  %206 = load i32, i32* %14, align 4
  %207 = and i32 %206, 31
  %208 = load i32, i32* @TYPE_DISK, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %205
  store i32 240, i32* %8, align 4
  br label %211

211:                                              ; preds = %210, %205, %196
  br label %212

212:                                              ; preds = %211, %174, %156
  %213 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %214 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %213, i32 0, i32 0
  store i32 0, i32* %214, align 8
  %215 = load i32, i32* %8, align 4
  switch i32 %215, label %307 [
    i32 0, label %216
    i32 2, label %223
    i32 8, label %298
  ]

216:                                              ; preds = %212
  %217 = load i32, i32* @DID_OK, align 4
  %218 = shl i32 %217, 16
  %219 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %220 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 8
  br label %316

223:                                              ; preds = %212
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @MEGA_MBOXCMD_PASSTHRU, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %237, label %230

230:                                              ; preds = %223
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @MEGA_MBOXCMD_PASSTHRU64, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %255

237:                                              ; preds = %230, %223
  %238 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %239 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %238, i32 0, i32 3
  %240 = load i32*, i32** %239, align 8
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @memcpy(i32* %240, i32 %243, i32 14)
  %245 = load i32, i32* @DRIVER_SENSE, align 4
  %246 = shl i32 %245, 24
  %247 = load i32, i32* @DID_OK, align 4
  %248 = shl i32 %247, 16
  %249 = or i32 %246, %248
  %250 = load i32, i32* @CHECK_CONDITION, align 4
  %251 = shl i32 %250, 1
  %252 = or i32 %249, %251
  %253 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %254 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %253, i32 0, i32 0
  store i32 %252, i32* %254, align 8
  br label %297

255:                                              ; preds = %230
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @MEGA_MBOXCMD_EXTPTHRU, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %280

262:                                              ; preds = %255
  %263 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %264 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %263, i32 0, i32 3
  %265 = load i32*, i32** %264, align 8
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @memcpy(i32* %265, i32 %268, i32 14)
  %270 = load i32, i32* @DRIVER_SENSE, align 4
  %271 = shl i32 %270, 24
  %272 = load i32, i32* @DID_OK, align 4
  %273 = shl i32 %272, 16
  %274 = or i32 %271, %273
  %275 = load i32, i32* @CHECK_CONDITION, align 4
  %276 = shl i32 %275, 1
  %277 = or i32 %274, %276
  %278 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %279 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %278, i32 0, i32 0
  store i32 %277, i32* %279, align 8
  br label %296

280:                                              ; preds = %255
  %281 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %282 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %281, i32 0, i32 3
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 0
  store i32 112, i32* %284, align 4
  %285 = load i32, i32* @ABORTED_COMMAND, align 4
  %286 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %287 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %286, i32 0, i32 3
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 2
  store i32 %285, i32* %289, align 4
  %290 = load i32, i32* @CHECK_CONDITION, align 4
  %291 = shl i32 %290, 1
  %292 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %293 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = or i32 %294, %291
  store i32 %295, i32* %293, align 8
  br label %296

296:                                              ; preds = %280, %262
  br label %297

297:                                              ; preds = %296, %237
  br label %316

298:                                              ; preds = %212
  %299 = load i32, i32* @DID_BUS_BUSY, align 4
  %300 = shl i32 %299, 16
  %301 = load i32, i32* %8, align 4
  %302 = or i32 %300, %301
  %303 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %304 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = or i32 %305, %302
  store i32 %306, i32* %304, align 8
  br label %316

307:                                              ; preds = %212
  %308 = load i32, i32* @DID_BAD_TARGET, align 4
  %309 = shl i32 %308, 16
  %310 = load i32, i32* %8, align 4
  %311 = or i32 %309, %310
  %312 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %313 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = or i32 %314, %311
  store i32 %315, i32* %313, align 8
  br label %316

316:                                              ; preds = %307, %298, %297, %216
  %317 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %318 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %319 = call i32 @mega_free_scb(%struct.TYPE_20__* %317, %struct.TYPE_16__* %318)
  %320 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %321 = call i32 @SCSI_LIST(%struct.scsi_cmnd* %320)
  %322 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %322, i32 0, i32 2
  %324 = call i32 @list_add_tail(i32 %321, i32* %323)
  br label %325

325:                                              ; preds = %316, %117, %85, %65
  %326 = load i32, i32* %18, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %18, align 4
  br label %19

328:                                              ; preds = %19
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @dev_crit(i32*, i8*, i32, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @list_add_tail(i32, i32*) #1

declare dso_local i32 @SCSI_LIST(%struct.scsi_cmnd*) #1

declare dso_local i32 @mega_free_scb(%struct.TYPE_20__*, %struct.TYPE_16__*) #1

declare dso_local %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i64 @sg_page(%struct.scatterlist*) #1

declare dso_local i64 @sg_virt(%struct.scatterlist*) #1

declare dso_local i64 @IS_RAID_CH(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
