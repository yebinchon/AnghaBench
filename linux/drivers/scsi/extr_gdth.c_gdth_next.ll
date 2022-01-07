; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_gdth.c_gdth_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_gdth.c_gdth_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i64, i64, i32, i64, i32, i32, i32, %struct.scsi_cmnd*, %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.scsi_cmnd = type { i32*, i32*, i32, %struct.TYPE_18__, %struct.TYPE_15__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_15__ = type { i64, i64, i64 }
%struct.TYPE_17__ = type { i32, i32, i64, i32, i64 }
%struct.TYPE_16__ = type { i64*, i64 }
%struct.gdth_cmndinfo = type { i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"gdth_next() hanum %d\0A\00", align 1
@gdth_polling = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@DEFAULT_PRI = common dso_local global i64 0, align 8
@MAX_HDRIVES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"gdth_next() controller %d busy !\0A\00", align 1
@CACHESERVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"TEST_UNIT_READY Bus %d Id %d LUN %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Scan mode: 0x%x\0A\00", align 1
@GDT_SCAN_START = common dso_local global i32 0, align 4
@SCSIRAWSERVICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Scan mode: 0x%x (SCAN_START)\0A\00", align 1
@GDT_SCAN_END = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Scan mode: 0x%x (SCAN_END)\0A\00", align 1
@CLUSTER_DRIVE = common dso_local global i32 0, align 4
@GDT_CLUST_INFO = common dso_local global i32 0, align 4
@NOT_READY = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@CHECK_CONDITION = common dso_local global i32 0, align 4
@GDTH_MAX_RAW = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [47 x i8] c"Command 0x%x to bus %d id %d lun %d -> IGNORE\0A\00", align 1
@DID_BAD_TARGET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"cache cmd %x/%x/%x/%x/%x/%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"cmd 0x%x target %d: UNIT_ATTENTION\0A\00", align 1
@UNIT_ATTENTION = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [40 x i8] c"Prevent r. nonremov. drive->do nothing\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Prevent/allow r. %d rem. drive %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"cache cmd %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"RESERVE\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"RELEASE\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"cache cmd %x/%x/%x/%x/%x/%x unknown\0A\00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"GDT-HA %d: Unknown SCSI command 0x%x to cache service !\0A\00", align 1
@DID_ABORT = common dso_local global i32 0, align 4
@POLL_TIMEOUT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [35 x i8] c"GDT-HA %d: Command %d timed out !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*)* @gdth_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdth_next(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.gdth_cmndinfo*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  store i64 0, i64* %11, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @TRACE(i8* %18)
  %20 = load i64, i64* @gdth_polling, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 7
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  br label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load i64, i64* @TRUE, align 8
  store i64 %32, i64* %8, align 8
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* @gdth_polling, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i64, i64* @FALSE, align 8
  br label %39

37:                                               ; preds = %27
  %38 = load i64, i64* @TRUE, align 8
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i64 [ %36, %35 ], [ %38, %37 ]
  store i64 %40, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 8
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %42, align 8
  store %struct.scsi_cmnd* %43, %struct.scsi_cmnd** %3, align 8
  store %struct.scsi_cmnd* %43, %struct.scsi_cmnd** %4, align 8
  br label %44

44:                                               ; preds = %951, %39
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %46 = icmp ne %struct.scsi_cmnd* %45, null
  br i1 %46, label %47, label %957

47:                                               ; preds = %44
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %49 = call %struct.gdth_cmndinfo* @gdth_cmnd_priv(%struct.scsi_cmnd* %48)
  store %struct.gdth_cmndinfo* %49, %struct.gdth_cmndinfo** %13, align 8
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %52 = icmp ne %struct.scsi_cmnd* %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %56 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.scsi_cmnd*
  %60 = icmp ne %struct.scsi_cmnd* %54, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %66, %struct.scsi_cmnd** %3, align 8
  br label %67

67:                                               ; preds = %61, %53, %47
  %68 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %13, align 8
  %69 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %132, label %72

72:                                               ; preds = %67
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %74 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %73, i32 0, i32 4
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %5, align 8
  %78 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %79 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %78, i32 0, i32 4
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %6, align 8
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %84 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %83, i32 0, i32 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %7, align 8
  %88 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %13, align 8
  %89 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @DEFAULT_PRI, align 8
  %92 = icmp sge i64 %90, %91
  br i1 %92, label %93, label %131

93:                                               ; preds = %72
  %94 = load i64, i64* %5, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %94, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %93
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 10
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %104 = load i64, i64* %5, align 8
  %105 = call i64 @BUS_L2P(%struct.TYPE_19__* %103, i64 %104)
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %129, label %110

110:                                              ; preds = %99, %93
  %111 = load i64, i64* %5, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %111, %114
  br i1 %115, label %116, label %130

116:                                              ; preds = %110
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* @MAX_HDRIVES, align 8
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %116
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 9
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %122, align 8
  %124 = load i64, i64* %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %120, %99
  br label %951

130:                                              ; preds = %120, %116, %110
  br label %131

131:                                              ; preds = %130, %72
  br label %133

132:                                              ; preds = %67
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %133

133:                                              ; preds = %132, %131
  %134 = load i64, i64* %8, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %164

136:                                              ; preds = %133
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %138 = call i64 @gdth_test_busy(%struct.TYPE_19__* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %162

140:                                              ; preds = %136
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = inttoptr i64 %144 to i8*
  %146 = call i32 @TRACE(i8* %145)
  %147 = load i64, i64* @gdth_polling, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %140
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 7
  %152 = load i64, i64* %11, align 8
  %153 = call i32 @spin_unlock_irqrestore(i32* %151, i64 %152)
  br label %994

154:                                              ; preds = %140
  br label %155

155:                                              ; preds = %159, %154
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %157 = call i64 @gdth_test_busy(%struct.TYPE_19__* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = call i32 @gdth_delay(i32 1)
  br label %155

161:                                              ; preds = %155
  br label %162

162:                                              ; preds = %161, %136
  %163 = load i64, i64* @FALSE, align 8
  store i64 %163, i64* %8, align 8
  br label %164

164:                                              ; preds = %162, %133
  %165 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %13, align 8
  %166 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %357, label %169

169:                                              ; preds = %164
  %170 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %13, align 8
  %171 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %172, -1
  br i1 %173, label %174, label %356

174:                                              ; preds = %169
  %175 = load i32, i32* @CACHESERVICE, align 4
  %176 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %13, align 8
  %177 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 8
  %178 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %179 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, 132
  br i1 %183, label %184, label %313

184:                                              ; preds = %174
  %185 = load i64, i64* %5, align 8
  %186 = load i64, i64* %6, align 8
  %187 = load i64, i64* %7, align 8
  %188 = inttoptr i64 %187 to i8*
  %189 = call i32 @TRACE2(i8* %188)
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = and i32 %192, 15
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %216

195:                                              ; preds = %184
  %196 = load i64, i64* %5, align 8
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %215

198:                                              ; preds = %195
  %199 = load i64, i64* %6, align 8
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %215

201:                                              ; preds = %198
  %202 = load i64, i64* %7, align 8
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %215

204:                                              ; preds = %201
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = or i32 %207, 1
  store i32 %208, i32* %206, align 8
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = sext i32 %211 to i64
  %213 = inttoptr i64 %212 to i8*
  %214 = call i32 @TRACE2(i8* %213)
  br label %215

215:                                              ; preds = %204, %201, %198, %195
  br label %312

216:                                              ; preds = %184
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = and i32 %219, 15
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %222, label %273

222:                                              ; preds = %216
  %223 = load i64, i64* %5, align 8
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %261

225:                                              ; preds = %222
  %226 = load i64, i64* %6, align 8
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %225
  %229 = load i64, i64* %7, align 8
  %230 = icmp eq i64 %229, 1
  br i1 %230, label %237, label %231

231:                                              ; preds = %228, %225
  %232 = load i64, i64* %6, align 8
  %233 = icmp eq i64 %232, 1
  br i1 %233, label %234, label %261

234:                                              ; preds = %231
  %235 = load i64, i64* %7, align 8
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %261

237:                                              ; preds = %234, %228
  %238 = load i32, i32* @GDT_SCAN_START, align 4
  %239 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %13, align 8
  %240 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %239, i32 0, i32 2
  store i32 %238, i32* %240, align 4
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 8
  %244 = and i32 %243, 16
  %245 = icmp ne i32 %244, 0
  %246 = zext i1 %245 to i64
  %247 = select i1 %245, i32 1, i32 0
  %248 = shl i32 %247, 8
  %249 = load i32, i32* @SCSIRAWSERVICE, align 4
  %250 = or i32 %248, %249
  %251 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %13, align 8
  %252 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %251, i32 0, i32 1
  store i32 %250, i32* %252, align 8
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 3
  store i32 18, i32* %254, align 8
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = sext i32 %257 to i64
  %259 = inttoptr i64 %258 to i8*
  %260 = call i32 @TRACE2(i8* %259)
  br label %272

261:                                              ; preds = %234, %231, %222
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 8
  %265 = and i32 %264, 16
  store i32 %265, i32* %263, align 8
  %266 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 8
  %269 = sext i32 %268 to i64
  %270 = inttoptr i64 %269 to i8*
  %271 = call i32 @TRACE2(i8* %270)
  br label %272

272:                                              ; preds = %261, %237
  br label %311

273:                                              ; preds = %216
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  %277 = icmp eq i32 %276, 18
  br i1 %277, label %278, label %310

278:                                              ; preds = %273
  %279 = load i64, i64* %5, align 8
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i32 0, i32 4
  %282 = load i64, i64* %281, align 8
  %283 = icmp eq i64 %279, %282
  br i1 %283, label %284, label %309

284:                                              ; preds = %278
  %285 = load i64, i64* %6, align 8
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 8
  %289 = sub nsw i32 %288, 1
  %290 = sext i32 %289 to i64
  %291 = icmp eq i64 %285, %290
  br i1 %291, label %292, label %309

292:                                              ; preds = %284
  %293 = load i32, i32* @SCSIRAWSERVICE, align 4
  %294 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %13, align 8
  %295 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %294, i32 0, i32 1
  store i32 %293, i32* %295, align 8
  %296 = load i32, i32* @GDT_SCAN_END, align 4
  %297 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %13, align 8
  %298 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %297, i32 0, i32 2
  store i32 %296, i32* %298, align 4
  %299 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %300 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 8
  %302 = and i32 %301, 16
  store i32 %302, i32* %300, align 8
  %303 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %304 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 8
  %306 = sext i32 %305 to i64
  %307 = inttoptr i64 %306 to i8*
  %308 = call i32 @TRACE2(i8* %307)
  br label %309

309:                                              ; preds = %292, %284, %278
  br label %310

310:                                              ; preds = %309, %273
  br label %311

311:                                              ; preds = %310, %272
  br label %312

312:                                              ; preds = %311, %215
  br label %313

313:                                              ; preds = %312, %174
  %314 = load i64, i64* %5, align 8
  %315 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %316 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %315, i32 0, i32 2
  %317 = load i64, i64* %316, align 8
  %318 = icmp eq i64 %314, %317
  br i1 %318, label %319, label %355

319:                                              ; preds = %313
  %320 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %321 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %320, i32 0, i32 0
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 0
  %324 = load i32, i32* %323, align 4
  %325 = icmp ne i32 %324, 143
  br i1 %325, label %326, label %355

326:                                              ; preds = %319
  %327 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %328 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %327, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 0
  %331 = load i32, i32* %330, align 4
  %332 = icmp ne i32 %331, 138
  br i1 %332, label %333, label %355

333:                                              ; preds = %326
  %334 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %335 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %334, i32 0, i32 0
  %336 = load i32*, i32** %335, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 0
  %338 = load i32, i32* %337, align 4
  %339 = icmp ne i32 %338, 142
  br i1 %339, label %340, label %355

340:                                              ; preds = %333
  %341 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %342 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %341, i32 0, i32 9
  %343 = load %struct.TYPE_17__*, %struct.TYPE_17__** %342, align 8
  %344 = load i64, i64* %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %343, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* @CLUSTER_DRIVE, align 4
  %349 = and i32 %347, %348
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %355

351:                                              ; preds = %340
  %352 = load i32, i32* @GDT_CLUST_INFO, align 4
  %353 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %13, align 8
  %354 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %353, i32 0, i32 2
  store i32 %352, i32* %354, align 4
  br label %355

355:                                              ; preds = %351, %340, %333, %326, %319, %313
  br label %356

356:                                              ; preds = %355, %169
  br label %357

357:                                              ; preds = %356, %164
  %358 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %13, align 8
  %359 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 4
  %361 = icmp ne i32 %360, -1
  br i1 %361, label %362, label %435

362:                                              ; preds = %357
  %363 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %13, align 8
  %364 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 8
  %366 = and i32 %365, 255
  %367 = load i32, i32* @CACHESERVICE, align 4
  %368 = icmp eq i32 %366, %367
  br i1 %368, label %369, label %379

369:                                              ; preds = %362
  %370 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %371 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %372 = load i64, i64* %6, align 8
  %373 = call i32 @gdth_fill_cache_cmd(%struct.TYPE_19__* %370, %struct.scsi_cmnd* %371, i64 %372)
  store i32 %373, i32* %12, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %377, label %375

375:                                              ; preds = %369
  %376 = load i64, i64* @FALSE, align 8
  store i64 %376, i64* %9, align 8
  br label %377

377:                                              ; preds = %375, %369
  %378 = load i64, i64* @FALSE, align 8
  store i64 %378, i64* %10, align 8
  br label %434

379:                                              ; preds = %362
  %380 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %13, align 8
  %381 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 8
  %383 = and i32 %382, 255
  %384 = load i32, i32* @SCSIRAWSERVICE, align 4
  %385 = icmp eq i32 %383, %384
  br i1 %385, label %386, label %398

386:                                              ; preds = %379
  %387 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %388 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %389 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %390 = load i64, i64* %5, align 8
  %391 = call i64 @BUS_L2P(%struct.TYPE_19__* %389, i64 %390)
  %392 = call i32 @gdth_fill_raw_cmd(%struct.TYPE_19__* %387, %struct.scsi_cmnd* %388, i64 %391)
  store i32 %392, i32* %12, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %396, label %394

394:                                              ; preds = %386
  %395 = load i64, i64* @FALSE, align 8
  store i64 %395, i64* %9, align 8
  br label %396

396:                                              ; preds = %394, %386
  %397 = load i64, i64* @FALSE, align 8
  store i64 %397, i64* %10, align 8
  br label %433

398:                                              ; preds = %379
  %399 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %400 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %399, i32 0, i32 1
  %401 = load i32*, i32** %400, align 8
  %402 = bitcast i32* %401 to i8*
  %403 = call i32 @memset(i8* %402, i32 0, i32 16)
  %404 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %405 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %404, i32 0, i32 1
  %406 = load i32*, i32** %405, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 0
  store i32 112, i32* %407, align 4
  %408 = load i32, i32* @NOT_READY, align 4
  %409 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %410 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %409, i32 0, i32 1
  %411 = load i32*, i32** %410, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 2
  store i32 %408, i32* %412, align 4
  %413 = load i32, i32* @DID_OK, align 4
  %414 = shl i32 %413, 16
  %415 = load i32, i32* @CHECK_CONDITION, align 4
  %416 = shl i32 %415, 1
  %417 = or i32 %414, %416
  %418 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %419 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %418, i32 0, i32 2
  store i32 %417, i32* %419, align 8
  %420 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %13, align 8
  %421 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %420, i32 0, i32 3
  %422 = load i32, i32* %421, align 8
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %429, label %424

424:                                              ; preds = %398
  %425 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %13, align 8
  %426 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %425, i32 0, i32 3
  %427 = load i32, i32* %426, align 8
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %426, align 8
  br label %432

429:                                              ; preds = %398
  %430 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %431 = call i32 @gdth_scsi_done(%struct.scsi_cmnd* %430)
  br label %432

432:                                              ; preds = %429, %424
  br label %433

433:                                              ; preds = %432, %396
  br label %434

434:                                              ; preds = %433, %377
  br label %920

435:                                              ; preds = %357
  %436 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %437 = call %struct.gdth_cmndinfo* @gdth_cmnd_priv(%struct.scsi_cmnd* %436)
  %438 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %437, i32 0, i32 4
  %439 = load i64, i64* %438, align 8
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %450

441:                                              ; preds = %435
  %442 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %443 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %444 = call i32 @gdth_special_cmd(%struct.TYPE_19__* %442, %struct.scsi_cmnd* %443)
  store i32 %444, i32* %12, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %448, label %446

446:                                              ; preds = %441
  %447 = load i64, i64* @FALSE, align 8
  store i64 %447, i64* %9, align 8
  br label %448

448:                                              ; preds = %446, %441
  %449 = load i64, i64* @FALSE, align 8
  store i64 %449, i64* %10, align 8
  br label %919

450:                                              ; preds = %435
  %451 = load i64, i64* %5, align 8
  %452 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %453 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %452, i32 0, i32 2
  %454 = load i64, i64* %453, align 8
  %455 = icmp ne i64 %451, %454
  br i1 %455, label %456, label %496

456:                                              ; preds = %450
  %457 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %458 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %457, i32 0, i32 10
  %459 = load %struct.TYPE_16__*, %struct.TYPE_16__** %458, align 8
  %460 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %461 = load i64, i64* %5, align 8
  %462 = call i64 @BUS_L2P(%struct.TYPE_19__* %460, i64 %461)
  %463 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %459, i64 %462
  %464 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %463, i32 0, i32 0
  %465 = load i64*, i64** %464, align 8
  %466 = load i64, i64* %6, align 8
  %467 = getelementptr inbounds i64, i64* %465, i64 %466
  %468 = load i64, i64* %467, align 8
  %469 = load i64, i64* @GDTH_MAX_RAW, align 8
  %470 = icmp sge i64 %468, %469
  br i1 %470, label %479, label %471

471:                                              ; preds = %456
  %472 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %473 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %474 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %475 = load i64, i64* %5, align 8
  %476 = call i64 @BUS_L2P(%struct.TYPE_19__* %474, i64 %475)
  %477 = call i32 @gdth_fill_raw_cmd(%struct.TYPE_19__* %472, %struct.scsi_cmnd* %473, i64 %476)
  store i32 %477, i32* %12, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %481, label %479

479:                                              ; preds = %471, %456
  %480 = load i64, i64* @FALSE, align 8
  store i64 %480, i64* %9, align 8
  br label %495

481:                                              ; preds = %471
  %482 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %483 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %482, i32 0, i32 10
  %484 = load %struct.TYPE_16__*, %struct.TYPE_16__** %483, align 8
  %485 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %486 = load i64, i64* %5, align 8
  %487 = call i64 @BUS_L2P(%struct.TYPE_19__* %485, i64 %486)
  %488 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %484, i64 %487
  %489 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %488, i32 0, i32 0
  %490 = load i64*, i64** %489, align 8
  %491 = load i64, i64* %6, align 8
  %492 = getelementptr inbounds i64, i64* %490, i64 %491
  %493 = load i64, i64* %492, align 8
  %494 = add nsw i64 %493, 1
  store i64 %494, i64* %492, align 8
  br label %495

495:                                              ; preds = %481, %479
  br label %918

496:                                              ; preds = %450
  %497 = load i64, i64* %6, align 8
  %498 = load i64, i64* @MAX_HDRIVES, align 8
  %499 = icmp sge i64 %497, %498
  br i1 %499, label %512, label %500

500:                                              ; preds = %496
  %501 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %502 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %501, i32 0, i32 9
  %503 = load %struct.TYPE_17__*, %struct.TYPE_17__** %502, align 8
  %504 = load i64, i64* %6, align 8
  %505 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %503, i64 %504
  %506 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %505, i32 0, i32 3
  %507 = load i32, i32* %506, align 8
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %512

509:                                              ; preds = %500
  %510 = load i64, i64* %7, align 8
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %512, label %540

512:                                              ; preds = %509, %500, %496
  %513 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %514 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %513, i32 0, i32 0
  %515 = load i32*, i32** %514, align 8
  %516 = getelementptr inbounds i32, i32* %515, i64 0
  %517 = load i32, i32* %516, align 4
  %518 = load i64, i64* %5, align 8
  %519 = load i64, i64* %6, align 8
  %520 = load i64, i64* %7, align 8
  %521 = inttoptr i64 %520 to i8*
  %522 = call i32 @TRACE2(i8* %521)
  %523 = load i32, i32* @DID_BAD_TARGET, align 4
  %524 = shl i32 %523, 16
  %525 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %526 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %525, i32 0, i32 2
  store i32 %524, i32* %526, align 8
  %527 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %13, align 8
  %528 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %527, i32 0, i32 3
  %529 = load i32, i32* %528, align 8
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %536, label %531

531:                                              ; preds = %512
  %532 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %13, align 8
  %533 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %532, i32 0, i32 3
  %534 = load i32, i32* %533, align 8
  %535 = add nsw i32 %534, 1
  store i32 %535, i32* %533, align 8
  br label %539

536:                                              ; preds = %512
  %537 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %538 = call i32 @gdth_scsi_done(%struct.scsi_cmnd* %537)
  br label %539

539:                                              ; preds = %536, %531
  br label %917

540:                                              ; preds = %509
  %541 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %542 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %541, i32 0, i32 0
  %543 = load i32*, i32** %542, align 8
  %544 = getelementptr inbounds i32, i32* %543, i64 0
  %545 = load i32, i32* %544, align 4
  switch i32 %545, label %856 [
    i32 132, label %546
    i32 143, label %546
    i32 136, label %546
    i32 138, label %546
    i32 131, label %546
    i32 133, label %546
    i32 142, label %546
    i32 134, label %546
    i32 144, label %656
    i32 135, label %768
    i32 137, label %768
    i32 139, label %786
    i32 128, label %786
    i32 141, label %786
    i32 130, label %786
    i32 140, label %786
    i32 129, label %786
  ]

546:                                              ; preds = %540, %540, %540, %540, %540, %540, %540, %540
  %547 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %548 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %547, i32 0, i32 0
  %549 = load i32*, i32** %548, align 8
  %550 = getelementptr inbounds i32, i32* %549, i64 0
  %551 = load i32, i32* %550, align 4
  %552 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %553 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %552, i32 0, i32 0
  %554 = load i32*, i32** %553, align 8
  %555 = getelementptr inbounds i32, i32* %554, i64 1
  %556 = load i32, i32* %555, align 4
  %557 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %558 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %557, i32 0, i32 0
  %559 = load i32*, i32** %558, align 8
  %560 = getelementptr inbounds i32, i32* %559, i64 2
  %561 = load i32, i32* %560, align 4
  %562 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %563 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %562, i32 0, i32 0
  %564 = load i32*, i32** %563, align 8
  %565 = getelementptr inbounds i32, i32* %564, i64 3
  %566 = load i32, i32* %565, align 4
  %567 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %568 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %567, i32 0, i32 0
  %569 = load i32*, i32** %568, align 8
  %570 = getelementptr inbounds i32, i32* %569, i64 4
  %571 = load i32, i32* %570, align 4
  %572 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %573 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %572, i32 0, i32 0
  %574 = load i32*, i32** %573, align 8
  %575 = getelementptr inbounds i32, i32* %574, i64 5
  %576 = load i32, i32* %575, align 4
  %577 = sext i32 %576 to i64
  %578 = inttoptr i64 %577 to i8*
  %579 = call i32 @TRACE(i8* %578)
  %580 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %581 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %580, i32 0, i32 9
  %582 = load %struct.TYPE_17__*, %struct.TYPE_17__** %581, align 8
  %583 = load i64, i64* %6, align 8
  %584 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %582, i64 %583
  %585 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %584, i32 0, i32 2
  %586 = load i64, i64* %585, align 8
  %587 = icmp ne i64 %586, 0
  br i1 %587, label %588, label %646

588:                                              ; preds = %546
  %589 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %590 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %589, i32 0, i32 0
  %591 = load i32*, i32** %590, align 8
  %592 = getelementptr inbounds i32, i32* %591, i64 0
  %593 = load i32, i32* %592, align 4
  %594 = icmp ne i32 %593, 143
  br i1 %594, label %595, label %646

595:                                              ; preds = %588
  %596 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %597 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %596, i32 0, i32 0
  %598 = load i32*, i32** %597, align 8
  %599 = getelementptr inbounds i32, i32* %598, i64 0
  %600 = load i32, i32* %599, align 4
  %601 = load i64, i64* %6, align 8
  %602 = inttoptr i64 %601 to i8*
  %603 = call i32 @TRACE2(i8* %602)
  %604 = load i64, i64* @FALSE, align 8
  %605 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %606 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %605, i32 0, i32 9
  %607 = load %struct.TYPE_17__*, %struct.TYPE_17__** %606, align 8
  %608 = load i64, i64* %6, align 8
  %609 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %607, i64 %608
  %610 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %609, i32 0, i32 2
  store i64 %604, i64* %610, align 8
  %611 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %612 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %611, i32 0, i32 1
  %613 = load i32*, i32** %612, align 8
  %614 = bitcast i32* %613 to i8*
  %615 = call i32 @memset(i8* %614, i32 0, i32 16)
  %616 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %617 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %616, i32 0, i32 1
  %618 = load i32*, i32** %617, align 8
  %619 = getelementptr inbounds i32, i32* %618, i64 0
  store i32 112, i32* %619, align 4
  %620 = load i8*, i8** @UNIT_ATTENTION, align 8
  %621 = ptrtoint i8* %620 to i32
  %622 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %623 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %622, i32 0, i32 1
  %624 = load i32*, i32** %623, align 8
  %625 = getelementptr inbounds i32, i32* %624, i64 2
  store i32 %621, i32* %625, align 4
  %626 = load i32, i32* @DID_OK, align 4
  %627 = shl i32 %626, 16
  %628 = load i32, i32* @CHECK_CONDITION, align 4
  %629 = shl i32 %628, 1
  %630 = or i32 %627, %629
  %631 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %632 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %631, i32 0, i32 2
  store i32 %630, i32* %632, align 8
  %633 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %13, align 8
  %634 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %633, i32 0, i32 3
  %635 = load i32, i32* %634, align 8
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %642, label %637

637:                                              ; preds = %595
  %638 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %13, align 8
  %639 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %638, i32 0, i32 3
  %640 = load i32, i32* %639, align 8
  %641 = add nsw i32 %640, 1
  store i32 %641, i32* %639, align 8
  br label %645

642:                                              ; preds = %595
  %643 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %644 = call i32 @gdth_scsi_done(%struct.scsi_cmnd* %643)
  br label %645

645:                                              ; preds = %642, %637
  br label %655

646:                                              ; preds = %588, %546
  %647 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %648 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %649 = call i32 @gdth_internal_cache_cmd(%struct.TYPE_19__* %647, %struct.scsi_cmnd* %648)
  %650 = icmp ne i32 %649, 0
  br i1 %650, label %651, label %654

651:                                              ; preds = %646
  %652 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %653 = call i32 @gdth_scsi_done(%struct.scsi_cmnd* %652)
  br label %654

654:                                              ; preds = %651, %646
  br label %655

655:                                              ; preds = %654, %645
  br label %916

656:                                              ; preds = %540
  %657 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %658 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %657, i32 0, i32 0
  %659 = load i32*, i32** %658, align 8
  %660 = getelementptr inbounds i32, i32* %659, i64 0
  %661 = load i32, i32* %660, align 4
  %662 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %663 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %662, i32 0, i32 0
  %664 = load i32*, i32** %663, align 8
  %665 = getelementptr inbounds i32, i32* %664, i64 1
  %666 = load i32, i32* %665, align 4
  %667 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %668 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %667, i32 0, i32 0
  %669 = load i32*, i32** %668, align 8
  %670 = getelementptr inbounds i32, i32* %669, i64 2
  %671 = load i32, i32* %670, align 4
  %672 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %673 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %672, i32 0, i32 0
  %674 = load i32*, i32** %673, align 8
  %675 = getelementptr inbounds i32, i32* %674, i64 3
  %676 = load i32, i32* %675, align 4
  %677 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %678 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %677, i32 0, i32 0
  %679 = load i32*, i32** %678, align 8
  %680 = getelementptr inbounds i32, i32* %679, i64 4
  %681 = load i32, i32* %680, align 4
  %682 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %683 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %682, i32 0, i32 0
  %684 = load i32*, i32** %683, align 8
  %685 = getelementptr inbounds i32, i32* %684, i64 5
  %686 = load i32, i32* %685, align 4
  %687 = sext i32 %686 to i64
  %688 = inttoptr i64 %687 to i8*
  %689 = call i32 @TRACE(i8* %688)
  %690 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %691 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %690, i32 0, i32 0
  %692 = load i32*, i32** %691, align 8
  %693 = getelementptr inbounds i32, i32* %692, i64 4
  %694 = load i32, i32* %693, align 4
  %695 = and i32 %694, 1
  %696 = icmp ne i32 %695, 0
  br i1 %696, label %697, label %730

697:                                              ; preds = %656
  %698 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %699 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %698, i32 0, i32 9
  %700 = load %struct.TYPE_17__*, %struct.TYPE_17__** %699, align 8
  %701 = load i64, i64* %6, align 8
  %702 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %700, i64 %701
  %703 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %702, i32 0, i32 1
  %704 = load i32, i32* %703, align 4
  %705 = and i32 %704, 1
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %730, label %707

707:                                              ; preds = %697
  %708 = call i32 @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  %709 = load i32, i32* @DID_OK, align 4
  %710 = shl i32 %709, 16
  %711 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %712 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %711, i32 0, i32 2
  store i32 %710, i32* %712, align 8
  %713 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %714 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %713, i32 0, i32 1
  %715 = load i32*, i32** %714, align 8
  %716 = getelementptr inbounds i32, i32* %715, i64 0
  store i32 0, i32* %716, align 4
  %717 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %13, align 8
  %718 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %717, i32 0, i32 3
  %719 = load i32, i32* %718, align 8
  %720 = icmp ne i32 %719, 0
  br i1 %720, label %726, label %721

721:                                              ; preds = %707
  %722 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %13, align 8
  %723 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %722, i32 0, i32 3
  %724 = load i32, i32* %723, align 8
  %725 = add nsw i32 %724, 1
  store i32 %725, i32* %723, align 8
  br label %729

726:                                              ; preds = %707
  %727 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %728 = call i32 @gdth_scsi_done(%struct.scsi_cmnd* %727)
  br label %729

729:                                              ; preds = %726, %721
  br label %767

730:                                              ; preds = %697, %656
  %731 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %732 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %731, i32 0, i32 9
  %733 = load %struct.TYPE_17__*, %struct.TYPE_17__** %732, align 8
  %734 = load i64, i64* %6, align 8
  %735 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %733, i64 %734
  %736 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %735, i32 0, i32 1
  %737 = load i32, i32* %736, align 4
  %738 = and i32 %737, 1
  %739 = icmp ne i32 %738, 0
  %740 = zext i1 %739 to i64
  %741 = select i1 %739, i32 1, i32 0
  %742 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %743 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %742, i32 0, i32 0
  %744 = load i32*, i32** %743, align 8
  %745 = getelementptr inbounds i32, i32* %744, i64 3
  store i32 %741, i32* %745, align 4
  %746 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %747 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %746, i32 0, i32 0
  %748 = load i32*, i32** %747, align 8
  %749 = getelementptr inbounds i32, i32* %748, i64 4
  %750 = load i32, i32* %749, align 4
  %751 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %752 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %751, i32 0, i32 0
  %753 = load i32*, i32** %752, align 8
  %754 = getelementptr inbounds i32, i32* %753, i64 3
  %755 = load i32, i32* %754, align 4
  %756 = sext i32 %755 to i64
  %757 = inttoptr i64 %756 to i8*
  %758 = call i32 @TRACE(i8* %757)
  %759 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %760 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %761 = load i64, i64* %6, align 8
  %762 = call i32 @gdth_fill_cache_cmd(%struct.TYPE_19__* %759, %struct.scsi_cmnd* %760, i64 %761)
  store i32 %762, i32* %12, align 4
  %763 = icmp ne i32 %762, 0
  br i1 %763, label %766, label %764

764:                                              ; preds = %730
  %765 = load i64, i64* @FALSE, align 8
  store i64 %765, i64* %9, align 8
  br label %766

766:                                              ; preds = %764, %730
  br label %767

767:                                              ; preds = %766, %729
  br label %916

768:                                              ; preds = %540, %540
  %769 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %770 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %769, i32 0, i32 0
  %771 = load i32*, i32** %770, align 8
  %772 = getelementptr inbounds i32, i32* %771, i64 0
  %773 = load i32, i32* %772, align 4
  %774 = icmp eq i32 %773, 135
  %775 = zext i1 %774 to i64
  %776 = select i1 %774, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0)
  %777 = call i32 @TRACE2(i8* %776)
  %778 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %779 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %780 = load i64, i64* %6, align 8
  %781 = call i32 @gdth_fill_cache_cmd(%struct.TYPE_19__* %778, %struct.scsi_cmnd* %779, i64 %780)
  store i32 %781, i32* %12, align 4
  %782 = icmp ne i32 %781, 0
  br i1 %782, label %785, label %783

783:                                              ; preds = %768
  %784 = load i64, i64* @FALSE, align 8
  store i64 %784, i64* %9, align 8
  br label %785

785:                                              ; preds = %783, %768
  br label %916

786:                                              ; preds = %540, %540, %540, %540, %540, %540
  %787 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %788 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %787, i32 0, i32 9
  %789 = load %struct.TYPE_17__*, %struct.TYPE_17__** %788, align 8
  %790 = load i64, i64* %6, align 8
  %791 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %789, i64 %790
  %792 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %791, i32 0, i32 2
  %793 = load i64, i64* %792, align 8
  %794 = icmp ne i64 %793, 0
  br i1 %794, label %795, label %846

795:                                              ; preds = %786
  %796 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %797 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %796, i32 0, i32 0
  %798 = load i32*, i32** %797, align 8
  %799 = getelementptr inbounds i32, i32* %798, i64 0
  %800 = load i32, i32* %799, align 4
  %801 = load i64, i64* %6, align 8
  %802 = inttoptr i64 %801 to i8*
  %803 = call i32 @TRACE2(i8* %802)
  %804 = load i64, i64* @FALSE, align 8
  %805 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %806 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %805, i32 0, i32 9
  %807 = load %struct.TYPE_17__*, %struct.TYPE_17__** %806, align 8
  %808 = load i64, i64* %6, align 8
  %809 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %807, i64 %808
  %810 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %809, i32 0, i32 2
  store i64 %804, i64* %810, align 8
  %811 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %812 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %811, i32 0, i32 1
  %813 = load i32*, i32** %812, align 8
  %814 = bitcast i32* %813 to i8*
  %815 = call i32 @memset(i8* %814, i32 0, i32 16)
  %816 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %817 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %816, i32 0, i32 1
  %818 = load i32*, i32** %817, align 8
  %819 = getelementptr inbounds i32, i32* %818, i64 0
  store i32 112, i32* %819, align 4
  %820 = load i8*, i8** @UNIT_ATTENTION, align 8
  %821 = ptrtoint i8* %820 to i32
  %822 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %823 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %822, i32 0, i32 1
  %824 = load i32*, i32** %823, align 8
  %825 = getelementptr inbounds i32, i32* %824, i64 2
  store i32 %821, i32* %825, align 4
  %826 = load i32, i32* @DID_OK, align 4
  %827 = shl i32 %826, 16
  %828 = load i32, i32* @CHECK_CONDITION, align 4
  %829 = shl i32 %828, 1
  %830 = or i32 %827, %829
  %831 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %832 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %831, i32 0, i32 2
  store i32 %830, i32* %832, align 8
  %833 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %13, align 8
  %834 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %833, i32 0, i32 3
  %835 = load i32, i32* %834, align 8
  %836 = icmp ne i32 %835, 0
  br i1 %836, label %842, label %837

837:                                              ; preds = %795
  %838 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %13, align 8
  %839 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %838, i32 0, i32 3
  %840 = load i32, i32* %839, align 8
  %841 = add nsw i32 %840, 1
  store i32 %841, i32* %839, align 8
  br label %845

842:                                              ; preds = %795
  %843 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %844 = call i32 @gdth_scsi_done(%struct.scsi_cmnd* %843)
  br label %845

845:                                              ; preds = %842, %837
  br label %855

846:                                              ; preds = %786
  %847 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %848 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %849 = load i64, i64* %6, align 8
  %850 = call i32 @gdth_fill_cache_cmd(%struct.TYPE_19__* %847, %struct.scsi_cmnd* %848, i64 %849)
  store i32 %850, i32* %12, align 4
  %851 = icmp ne i32 %850, 0
  br i1 %851, label %854, label %852

852:                                              ; preds = %846
  %853 = load i64, i64* @FALSE, align 8
  store i64 %853, i64* %9, align 8
  br label %854

854:                                              ; preds = %852, %846
  br label %855

855:                                              ; preds = %854, %845
  br label %916

856:                                              ; preds = %540
  %857 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %858 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %857, i32 0, i32 0
  %859 = load i32*, i32** %858, align 8
  %860 = getelementptr inbounds i32, i32* %859, i64 0
  %861 = load i32, i32* %860, align 4
  %862 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %863 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %862, i32 0, i32 0
  %864 = load i32*, i32** %863, align 8
  %865 = getelementptr inbounds i32, i32* %864, i64 1
  %866 = load i32, i32* %865, align 4
  %867 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %868 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %867, i32 0, i32 0
  %869 = load i32*, i32** %868, align 8
  %870 = getelementptr inbounds i32, i32* %869, i64 2
  %871 = load i32, i32* %870, align 4
  %872 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %873 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %872, i32 0, i32 0
  %874 = load i32*, i32** %873, align 8
  %875 = getelementptr inbounds i32, i32* %874, i64 3
  %876 = load i32, i32* %875, align 4
  %877 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %878 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %877, i32 0, i32 0
  %879 = load i32*, i32** %878, align 8
  %880 = getelementptr inbounds i32, i32* %879, i64 4
  %881 = load i32, i32* %880, align 4
  %882 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %883 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %882, i32 0, i32 0
  %884 = load i32*, i32** %883, align 8
  %885 = getelementptr inbounds i32, i32* %884, i64 5
  %886 = load i32, i32* %885, align 4
  %887 = sext i32 %886 to i64
  %888 = inttoptr i64 %887 to i8*
  %889 = call i32 @TRACE2(i8* %888)
  %890 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %891 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %890, i32 0, i32 6
  %892 = load i32, i32* %891, align 4
  %893 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %894 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %893, i32 0, i32 0
  %895 = load i32*, i32** %894, align 8
  %896 = getelementptr inbounds i32, i32* %895, i64 0
  %897 = load i32, i32* %896, align 4
  %898 = call i32 @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.15, i64 0, i64 0), i32 %892, i32 %897)
  %899 = load i32, i32* @DID_ABORT, align 4
  %900 = shl i32 %899, 16
  %901 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %902 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %901, i32 0, i32 2
  store i32 %900, i32* %902, align 8
  %903 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %13, align 8
  %904 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %903, i32 0, i32 3
  %905 = load i32, i32* %904, align 8
  %906 = icmp ne i32 %905, 0
  br i1 %906, label %912, label %907

907:                                              ; preds = %856
  %908 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %13, align 8
  %909 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %908, i32 0, i32 3
  %910 = load i32, i32* %909, align 8
  %911 = add nsw i32 %910, 1
  store i32 %911, i32* %909, align 8
  br label %915

912:                                              ; preds = %856
  %913 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %914 = call i32 @gdth_scsi_done(%struct.scsi_cmnd* %913)
  br label %915

915:                                              ; preds = %912, %907
  br label %916

916:                                              ; preds = %915, %855, %785, %767, %655
  br label %917

917:                                              ; preds = %916, %539
  br label %918

918:                                              ; preds = %917, %495
  br label %919

919:                                              ; preds = %918, %448
  br label %920

920:                                              ; preds = %919, %434
  %921 = load i64, i64* %9, align 8
  %922 = icmp ne i64 %921, 0
  br i1 %922, label %924, label %923

923:                                              ; preds = %920
  br label %957

924:                                              ; preds = %920
  %925 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %926 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %927 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %926, i32 0, i32 8
  %928 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %927, align 8
  %929 = icmp eq %struct.scsi_cmnd* %925, %928
  br i1 %929, label %930, label %938

930:                                              ; preds = %924
  %931 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %932 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %931, i32 0, i32 3
  %933 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %932, i32 0, i32 0
  %934 = load i64, i64* %933, align 8
  %935 = inttoptr i64 %934 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %935, %struct.scsi_cmnd** %3, align 8
  %936 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %937 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %936, i32 0, i32 8
  store %struct.scsi_cmnd* %935, %struct.scsi_cmnd** %937, align 8
  br label %946

938:                                              ; preds = %924
  %939 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %940 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %939, i32 0, i32 3
  %941 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %940, i32 0, i32 0
  %942 = load i64, i64* %941, align 8
  %943 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %944 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %943, i32 0, i32 3
  %945 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %944, i32 0, i32 0
  store i64 %942, i64* %945, align 8
  br label %946

946:                                              ; preds = %938, %930
  %947 = load i64, i64* %10, align 8
  %948 = icmp ne i64 %947, 0
  br i1 %948, label %950, label %949

949:                                              ; preds = %946
  br label %957

950:                                              ; preds = %946
  br label %951

951:                                              ; preds = %950, %129
  %952 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %953 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %952, i32 0, i32 3
  %954 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %953, i32 0, i32 0
  %955 = load i64, i64* %954, align 8
  %956 = inttoptr i64 %955 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %956, %struct.scsi_cmnd** %4, align 8
  br label %44

957:                                              ; preds = %949, %923, %44
  %958 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %959 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %958, i32 0, i32 0
  %960 = load i64, i64* %959, align 8
  %961 = icmp sgt i64 %960, 0
  br i1 %961, label %962, label %965

962:                                              ; preds = %957
  %963 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %964 = call i32 @gdth_release_event(%struct.TYPE_19__* %963)
  br label %965

965:                                              ; preds = %962, %957
  %966 = load i64, i64* @gdth_polling, align 8
  %967 = icmp ne i64 %966, 0
  br i1 %967, label %973, label %968

968:                                              ; preds = %965
  %969 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %970 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %969, i32 0, i32 7
  %971 = load i64, i64* %11, align 8
  %972 = call i32 @spin_unlock_irqrestore(i32* %970, i64 %971)
  br label %973

973:                                              ; preds = %968, %965
  %974 = load i64, i64* @gdth_polling, align 8
  %975 = icmp ne i64 %974, 0
  br i1 %975, label %976, label %994

976:                                              ; preds = %973
  %977 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %978 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %977, i32 0, i32 0
  %979 = load i64, i64* %978, align 8
  %980 = icmp sgt i64 %979, 0
  br i1 %980, label %981, label %994

981:                                              ; preds = %976
  %982 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %983 = load i32, i32* %12, align 4
  %984 = load i32, i32* @POLL_TIMEOUT, align 4
  %985 = call i32 @gdth_wait(%struct.TYPE_19__* %982, i32 %983, i32 %984)
  %986 = icmp ne i32 %985, 0
  br i1 %986, label %993, label %987

987:                                              ; preds = %981
  %988 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %989 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %988, i32 0, i32 6
  %990 = load i32, i32* %989, align 4
  %991 = load i32, i32* %12, align 4
  %992 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0), i32 %990, i32 %991)
  br label %993

993:                                              ; preds = %987, %981
  br label %994

994:                                              ; preds = %149, %993, %976, %973
  ret void
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.gdth_cmndinfo* @gdth_cmnd_priv(%struct.scsi_cmnd*) #1

declare dso_local i64 @BUS_L2P(%struct.TYPE_19__*, i64) #1

declare dso_local i64 @gdth_test_busy(%struct.TYPE_19__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @gdth_delay(i32) #1

declare dso_local i32 @TRACE2(i8*) #1

declare dso_local i32 @gdth_fill_cache_cmd(%struct.TYPE_19__*, %struct.scsi_cmnd*, i64) #1

declare dso_local i32 @gdth_fill_raw_cmd(%struct.TYPE_19__*, %struct.scsi_cmnd*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @gdth_scsi_done(%struct.scsi_cmnd*) #1

declare dso_local i32 @gdth_special_cmd(%struct.TYPE_19__*, %struct.scsi_cmnd*) #1

declare dso_local i32 @gdth_internal_cache_cmd(%struct.TYPE_19__*, %struct.scsi_cmnd*) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @gdth_release_event(%struct.TYPE_19__*) #1

declare dso_local i32 @gdth_wait(%struct.TYPE_19__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
