; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_set_syncrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_set_syncrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i64, i32 }
%struct.ahd_devinfo = type { i32, i32, i32 }
%struct.ahd_initiator_tinfo = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.ahd_tmode_tstate = type { i32 }

@AHD_TRANS_ACTIVE = common dso_local global i64 0, align 8
@AHD_TRANS_USER = common dso_local global i64 0, align 8
@AHD_TRANS_GOAL = common dso_local global i64 0, align 8
@AHD_TRANS_CUR = common dso_local global i64 0, align 8
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@AC_TRANSFER_NEG = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"%s: target %d synchronous with period = 0x%x, offset = 0x%x\00", align 1
@MSG_EXT_PPR_RD_STRM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"(RDSTRM\00", align 1
@MSG_EXT_PPR_DT_REQ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"|DT\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"(DT\00", align 1
@MSG_EXT_PPR_IU_REQ = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"|IU\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"(IU\00", align 1
@MSG_EXT_PPR_RTI = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"|RTI\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"(RTI\00", align 1
@MSG_EXT_PPR_QAS_REQ = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"|QAS\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"(QAS\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"%s: target %d using asynchronous transfers%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"(QAS)\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MSG_TYPE_NONE = common dso_local global i64 0, align 8
@MSG_FLAG_EXPECT_PPR_BUSFREE = common dso_local global i32 0, align 4
@MSG_FLAG_IU_REQ_CHANGED = common dso_local global i32 0, align 4
@AHD_NEG_TO_GOAL = common dso_local global i32 0, align 4
@AHD_SHOW_MESSAGES = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_set_syncrate(%struct.ahd_softc* %0, %struct.ahd_devinfo* %1, i64 %2, i64 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.ahd_softc*, align 8
  %9 = alloca %struct.ahd_devinfo*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ahd_initiator_tinfo*, align 8
  %16 = alloca %struct.ahd_tmode_tstate*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %8, align 8
  store %struct.ahd_devinfo* %1, %struct.ahd_devinfo** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %23 = load i64, i64* %13, align 8
  %24 = load i64, i64* @AHD_TRANS_ACTIVE, align 8
  %25 = and i64 %23, %24
  %26 = load i64, i64* @AHD_TRANS_ACTIVE, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %29 = load i64, i64* %10, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %7
  %32 = load i64, i64* %11, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %7
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %35

35:                                               ; preds = %34, %31
  %36 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %37 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %9, align 8
  %38 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %9, align 8
  %41 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %9, align 8
  %44 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc* %36, i32 %39, i32 %42, i32 %45, %struct.ahd_tmode_tstate** %16)
  store %struct.ahd_initiator_tinfo* %46, %struct.ahd_initiator_tinfo** %15, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* @AHD_TRANS_USER, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %35
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %15, align 8
  %54 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i64 %52, i64* %55, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %15, align 8
  %58 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i64 %56, i64* %59, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %15, align 8
  %62 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  br label %64

64:                                               ; preds = %51, %35
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* @AHD_TRANS_GOAL, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %15, align 8
  %72 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  store i64 %70, i64* %73, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %15, align 8
  %76 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store i64 %74, i64* %77, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %15, align 8
  %80 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  br label %82

82:                                               ; preds = %69, %64
  %83 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %15, align 8
  %84 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %17, align 8
  %87 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %15, align 8
  %88 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %18, align 8
  %91 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %15, align 8
  %92 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %19, align 8
  %95 = load i64, i64* %13, align 8
  %96 = load i64, i64* @AHD_TRANS_CUR, align 8
  %97 = and i64 %95, %96
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %233

99:                                               ; preds = %82
  %100 = load i64, i64* %17, align 8
  %101 = load i64, i64* %10, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %111, label %103

103:                                              ; preds = %99
  %104 = load i64, i64* %18, align 8
  %105 = load i64, i64* %11, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i64, i64* %19, align 8
  %109 = load i64, i64* %12, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %233

111:                                              ; preds = %107, %103, %99
  %112 = load i32, i32* %21, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %21, align 4
  %114 = load i64, i64* %10, align 8
  %115 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %15, align 8
  %116 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i64 %114, i64* %117, align 8
  %118 = load i64, i64* %11, align 8
  %119 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %15, align 8
  %120 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  store i64 %118, i64* %121, align 8
  %122 = load i64, i64* %12, align 8
  %123 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %15, align 8
  %124 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  store i64 %122, i64* %125, align 8
  %126 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %127 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %9, align 8
  %128 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %9, align 8
  %131 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %134 = load i32, i32* @AC_TRANSFER_NEG, align 4
  %135 = call i32 @ahd_send_async(%struct.ahd_softc* %126, i32 %129, i32 %132, i32 %133, i32 %134)
  %136 = load i64, i64* @bootverbose, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %232

138:                                              ; preds = %111
  %139 = load i64, i64* %11, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %218

141:                                              ; preds = %138
  %142 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %143 = call i32 @ahd_name(%struct.ahd_softc* %142)
  %144 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %9, align 8
  %145 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i64, i64* %10, align 8
  %148 = load i64, i64* %11, align 8
  %149 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %143, i32 %146, i64 %147, i64 %148)
  store i32 0, i32* %22, align 4
  %150 = load i64, i64* %12, align 8
  %151 = load i64, i64* @MSG_EXT_PPR_RD_STRM, align 8
  %152 = and i64 %150, %151
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %141
  %155 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %156 = load i32, i32* %22, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %22, align 4
  br label %158

158:                                              ; preds = %154, %141
  %159 = load i64, i64* %12, align 8
  %160 = load i64, i64* @MSG_EXT_PPR_DT_REQ, align 8
  %161 = and i64 %159, %160
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %158
  %164 = load i32, i32* %22, align 4
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %168 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %167)
  %169 = load i32, i32* %22, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %22, align 4
  br label %171

171:                                              ; preds = %163, %158
  %172 = load i64, i64* %12, align 8
  %173 = load i64, i64* @MSG_EXT_PPR_IU_REQ, align 8
  %174 = and i64 %172, %173
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %171
  %177 = load i32, i32* %22, align 4
  %178 = icmp ne i32 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %181 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %180)
  %182 = load i32, i32* %22, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %22, align 4
  br label %184

184:                                              ; preds = %176, %171
  %185 = load i64, i64* %12, align 8
  %186 = load i64, i64* @MSG_EXT_PPR_RTI, align 8
  %187 = and i64 %185, %186
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %184
  %190 = load i32, i32* %22, align 4
  %191 = icmp ne i32 %190, 0
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)
  %194 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %193)
  %195 = load i32, i32* %22, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %22, align 4
  br label %197

197:                                              ; preds = %189, %184
  %198 = load i64, i64* %12, align 8
  %199 = load i64, i64* @MSG_EXT_PPR_QAS_REQ, align 8
  %200 = and i64 %198, %199
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %197
  %203 = load i32, i32* %22, align 4
  %204 = icmp ne i32 %203, 0
  %205 = zext i1 %204 to i64
  %206 = select i1 %204, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %207 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %206)
  %208 = load i32, i32* %22, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %22, align 4
  br label %210

210:                                              ; preds = %202, %197
  %211 = load i32, i32* %22, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %210
  %214 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  br label %217

215:                                              ; preds = %210
  %216 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %217

217:                                              ; preds = %215, %213
  br label %231

218:                                              ; preds = %138
  %219 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %220 = call i32 @ahd_name(%struct.ahd_softc* %219)
  %221 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %9, align 8
  %222 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i64, i64* %12, align 8
  %225 = load i64, i64* @MSG_EXT_PPR_QAS_REQ, align 8
  %226 = and i64 %224, %225
  %227 = icmp ne i64 %226, 0
  %228 = zext i1 %227 to i64
  %229 = select i1 %227, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %230 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0), i32 %220, i32 %223, i8* %229)
  br label %231

231:                                              ; preds = %218, %217
  br label %232

232:                                              ; preds = %231, %111
  br label %233

233:                                              ; preds = %232, %107, %82
  %234 = load i64, i64* %13, align 8
  %235 = load i64, i64* @AHD_TRANS_CUR, align 8
  %236 = and i64 %234, %235
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %290

238:                                              ; preds = %233
  %239 = load i32, i32* %14, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %244, label %241

241:                                              ; preds = %238
  %242 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %243 = call i32 @ahd_pause(%struct.ahd_softc* %242)
  br label %244

244:                                              ; preds = %241, %238
  %245 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %246 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %9, align 8
  %247 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %15, align 8
  %248 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %247, i32 0, i32 0
  %249 = call i32 @ahd_update_neg_table(%struct.ahd_softc* %245, %struct.ahd_devinfo* %246, %struct.TYPE_6__* %248)
  %250 = load i32, i32* %14, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %244
  %253 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %254 = call i32 @ahd_unpause(%struct.ahd_softc* %253)
  br label %255

255:                                              ; preds = %252, %244
  %256 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %257 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @MSG_TYPE_NONE, align 8
  %260 = icmp ne i64 %258, %259
  br i1 %260, label %261, label %289

261:                                              ; preds = %255
  %262 = load i64, i64* %19, align 8
  %263 = load i64, i64* @MSG_EXT_PPR_IU_REQ, align 8
  %264 = and i64 %262, %263
  %265 = load i64, i64* %12, align 8
  %266 = load i64, i64* @MSG_EXT_PPR_IU_REQ, align 8
  %267 = and i64 %265, %266
  %268 = icmp ne i64 %264, %267
  br i1 %268, label %269, label %277

269:                                              ; preds = %261
  %270 = load i32, i32* @MSG_FLAG_EXPECT_PPR_BUSFREE, align 4
  %271 = load i32, i32* @MSG_FLAG_IU_REQ_CHANGED, align 4
  %272 = or i32 %270, %271
  %273 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %274 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = or i32 %275, %272
  store i32 %276, i32* %274, align 8
  br label %277

277:                                              ; preds = %269, %261
  %278 = load i64, i64* %19, align 8
  %279 = load i64, i64* @MSG_EXT_PPR_IU_REQ, align 8
  %280 = and i64 %278, %279
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %277
  %283 = load i32, i32* @MSG_FLAG_EXPECT_PPR_BUSFREE, align 4
  %284 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %285 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = or i32 %286, %283
  store i32 %287, i32* %285, align 8
  br label %288

288:                                              ; preds = %282, %277
  br label %289

289:                                              ; preds = %288, %255
  br label %290

290:                                              ; preds = %289, %233
  %291 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %292 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %9, align 8
  %293 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %16, align 8
  %294 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %15, align 8
  %295 = load i32, i32* @AHD_NEG_TO_GOAL, align 4
  %296 = call i64 @ahd_update_neg_request(%struct.ahd_softc* %291, %struct.ahd_devinfo* %292, %struct.ahd_tmode_tstate* %293, %struct.ahd_initiator_tinfo* %294, i32 %295)
  %297 = load i32, i32* %21, align 4
  %298 = sext i32 %297 to i64
  %299 = add nsw i64 %298, %296
  %300 = trunc i64 %299 to i32
  store i32 %300, i32* %21, align 4
  %301 = load i32, i32* %21, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %290
  %304 = load i32, i32* %20, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %303
  %307 = load %struct.ahd_softc*, %struct.ahd_softc** %8, align 8
  %308 = call i32 @ahd_update_pending_scbs(%struct.ahd_softc* %307)
  br label %309

309:                                              ; preds = %306, %303, %290
  ret void
}

declare dso_local %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc*, i32, i32, i32, %struct.ahd_tmode_tstate**) #1

declare dso_local i32 @ahd_send_async(%struct.ahd_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_pause(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_update_neg_table(%struct.ahd_softc*, %struct.ahd_devinfo*, %struct.TYPE_6__*) #1

declare dso_local i32 @ahd_unpause(%struct.ahd_softc*) #1

declare dso_local i64 @ahd_update_neg_request(%struct.ahd_softc*, %struct.ahd_devinfo*, %struct.ahd_tmode_tstate*, %struct.ahd_initiator_tinfo*, i32) #1

declare dso_local i32 @ahd_update_pending_scbs(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
