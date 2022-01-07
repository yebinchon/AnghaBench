; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_search_qinfifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_search_qinfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i64, i64*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.scb = type { i32 }

@AHD_MODE_CCHAN = common dso_local global i32 0, align 4
@CCSCBCTL = common dso_local global i32 0, align 4
@CCARREN = common dso_local global i64 0, align 8
@CCSCBEN = common dso_local global i64 0, align 8
@CCSCBDIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"qinstart = %d qinfifonext = %d\0AQINFIFO:\00", align 1
@NEXT_QUEUED_SCB_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"qinpos = %d, SCB index = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Loop 1\0A\00", align 1
@SCB_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Inactive SCB in qinfifo\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" 0x%x\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"\0AWAITING_TID_QUEUES:\0A\00", align 1
@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@SEQ_FLAGS2 = common dso_local global i32 0, align 4
@PENDING_MK_MESSAGE = common dso_local global i64 0, align 8
@MK_MESSAGE_SCB = common dso_local global i64 0, align 8
@WAITING_TID_HEAD = common dso_local global i64 0, align 8
@SCB_LIST_NULL = common dso_local global i64 0, align 8
@AHD_NUM_TARGETS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"TID LIST LOOP\00", align 1
@.str.7 = private unnamed_addr constant [76 x i8] c"%s: Waiting TID List inconsistency. SCB index == 0x%x, yet numscbs == 0x%x.\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"for safety\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"%s: SCB = 0x%x Not Active!\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Waiting TID List traversal\0A\00", align 1
@SCB_NEXT2 = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@ROLE_UNKNOWN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"       %d ( \00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Inactive SCB pending MK_MSG\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Removing MK_MSG scb\0A\00", align 1
@WAITING_SCB_TAILS = common dso_local global i32 0, align 4
@CMDS_PENDING = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [21 x i8] c"Queueing mk_msg_scb\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_search_qinfifo(%struct.ahd_softc* %0, i32 %1, i8 signext %2, i32 %3, i64 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.ahd_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.scb*, align 8
  %18 = alloca %struct.scb*, align 8
  %19 = alloca %struct.scb*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8 %2, i8* %11, align 1
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %35 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %36 = call i32 @ahd_save_modes(%struct.ahd_softc* %35)
  store i32 %36, i32* %20, align 4
  %37 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %38 = load i32, i32* @AHD_MODE_CCHAN, align 4
  %39 = load i32, i32* @AHD_MODE_CCHAN, align 4
  %40 = call i32 @ahd_set_modes(%struct.ahd_softc* %37, i32 %38, i32 %39)
  %41 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %42 = load i32, i32* @CCSCBCTL, align 4
  %43 = call i64 @ahd_inb(%struct.ahd_softc* %41, i32 %42)
  %44 = load i64, i64* @CCARREN, align 8
  %45 = load i64, i64* @CCSCBEN, align 8
  %46 = or i64 %44, %45
  %47 = load i64, i64* @CCSCBDIR, align 8
  %48 = or i64 %46, %47
  %49 = and i64 %43, %48
  %50 = load i64, i64* @CCARREN, align 8
  %51 = load i64, i64* @CCSCBEN, align 8
  %52 = or i64 %50, %51
  %53 = load i64, i64* @CCSCBDIR, align 8
  %54 = or i64 %52, %53
  %55 = icmp eq i64 %49, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %8
  %57 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %58 = load i32, i32* @CCSCBCTL, align 4
  %59 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %60 = load i32, i32* @CCSCBCTL, align 4
  %61 = call i64 @ahd_inb(%struct.ahd_softc* %59, i32 %60)
  %62 = load i64, i64* @CCARREN, align 8
  %63 = load i64, i64* @CCSCBEN, align 8
  %64 = or i64 %62, %63
  %65 = xor i64 %64, -1
  %66 = and i64 %61, %65
  %67 = call i32 @ahd_outb(%struct.ahd_softc* %57, i32 %58, i64 %66)
  br label %68

68:                                               ; preds = %77, %56
  %69 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %70 = load i32, i32* @CCSCBCTL, align 4
  %71 = call i64 @ahd_inb(%struct.ahd_softc* %69, i32 %70)
  %72 = load i64, i64* @CCARREN, align 8
  %73 = load i64, i64* @CCSCBEN, align 8
  %74 = or i64 %72, %73
  %75 = and i64 %71, %74
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %68

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %8
  %80 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %81 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @AHD_QIN_WRAP(i64 %82)
  store i64 %83, i64* %23, align 8
  %84 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %85 = call i64 @ahd_get_snscb_qoff(%struct.ahd_softc* %84)
  store i64 %85, i64* %21, align 8
  %86 = load i64, i64* %21, align 8
  %87 = call i64 @AHD_QIN_WRAP(i64 %86)
  store i64 %87, i64* %22, align 8
  store i32 0, i32* %30, align 4
  store %struct.scb* null, %struct.scb** %19, align 8
  %88 = load i32, i32* %16, align 4
  %89 = icmp eq i32 %88, 129
  br i1 %89, label %90, label %96

90:                                               ; preds = %79
  %91 = load i64, i64* %21, align 8
  %92 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %93 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %91, i64 %94)
  br label %96

96:                                               ; preds = %90, %79
  %97 = load i64, i64* %21, align 8
  %98 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %99 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %101 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %100, i32 0, i32 3
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ahd_le32toh(i32 %104)
  store i32 %105, i32* %29, align 4
  %106 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %107 = load i32, i32* @NEXT_QUEUED_SCB_ADDR, align 4
  %108 = load i32, i32* %29, align 4
  %109 = call i32 @ahd_outl(%struct.ahd_softc* %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %185, %96
  %111 = load i64, i64* %22, align 8
  %112 = load i64, i64* %23, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %189

114:                                              ; preds = %110
  %115 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %116 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %117 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %116, i32 0, i32 1
  %118 = load i64*, i64** %117, align 8
  %119 = load i64, i64* %22, align 8
  %120 = getelementptr inbounds i64, i64* %118, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %115, i64 %121)
  store %struct.scb* %122, %struct.scb** %17, align 8
  %123 = load %struct.scb*, %struct.scb** %17, align 8
  %124 = icmp eq %struct.scb* %123, null
  br i1 %124, label %125, label %135

125:                                              ; preds = %114
  %126 = load i64, i64* %22, align 8
  %127 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %128 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %127, i32 0, i32 1
  %129 = load i64*, i64** %128, align 8
  %130 = load i64, i64* %22, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %126, i64 %132)
  %134 = call i32 @panic(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %135

135:                                              ; preds = %125, %114
  %136 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %137 = load %struct.scb*, %struct.scb** %17, align 8
  %138 = load i32, i32* %10, align 4
  %139 = load i8, i8* %11, align 1
  %140 = load i32, i32* %12, align 4
  %141 = load i64, i64* %13, align 8
  %142 = load i32, i32* %14, align 4
  %143 = call i64 @ahd_match_scb(%struct.ahd_softc* %136, %struct.scb* %137, i32 %138, i8 signext %139, i32 %140, i64 %141, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %179

145:                                              ; preds = %135
  %146 = load i32, i32* %30, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %30, align 4
  %148 = load i32, i32* %16, align 4
  switch i32 %148, label %178 [
    i32 131, label %149
    i32 128, label %163
    i32 129, label %164
    i32 130, label %172
  ]

149:                                              ; preds = %145
  %150 = load %struct.scb*, %struct.scb** %17, align 8
  %151 = getelementptr inbounds %struct.scb, %struct.scb* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @SCB_ACTIVE, align 4
  %154 = and i32 %152, %153
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %149
  %159 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %160 = load %struct.scb*, %struct.scb** %17, align 8
  %161 = load i32, i32* %15, align 4
  %162 = call i32 @ahd_done_with_status(%struct.ahd_softc* %159, %struct.scb* %160, i32 %161)
  br label %163

163:                                              ; preds = %145, %158
  br label %178

164:                                              ; preds = %145
  %165 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %166 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %165, i32 0, i32 1
  %167 = load i64*, i64** %166, align 8
  %168 = load i64, i64* %22, align 8
  %169 = getelementptr inbounds i64, i64* %167, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %170)
  br label %172

172:                                              ; preds = %145, %164
  %173 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %174 = load %struct.scb*, %struct.scb** %19, align 8
  %175 = load %struct.scb*, %struct.scb** %17, align 8
  %176 = call i32 @ahd_qinfifo_requeue(%struct.ahd_softc* %173, %struct.scb* %174, %struct.scb* %175)
  %177 = load %struct.scb*, %struct.scb** %17, align 8
  store %struct.scb* %177, %struct.scb** %19, align 8
  br label %178

178:                                              ; preds = %145, %172, %163
  br label %185

179:                                              ; preds = %135
  %180 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %181 = load %struct.scb*, %struct.scb** %19, align 8
  %182 = load %struct.scb*, %struct.scb** %17, align 8
  %183 = call i32 @ahd_qinfifo_requeue(%struct.ahd_softc* %180, %struct.scb* %181, %struct.scb* %182)
  %184 = load %struct.scb*, %struct.scb** %17, align 8
  store %struct.scb* %184, %struct.scb** %19, align 8
  br label %185

185:                                              ; preds = %179, %178
  %186 = load i64, i64* %22, align 8
  %187 = add i64 %186, 1
  %188 = call i64 @AHD_QIN_WRAP(i64 %187)
  store i64 %188, i64* %22, align 8
  br label %110

189:                                              ; preds = %110
  %190 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %191 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %192 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @ahd_set_hnscb_qoff(%struct.ahd_softc* %190, i64 %193)
  %195 = load i32, i32* %16, align 4
  %196 = icmp eq i32 %195, 129
  br i1 %196, label %197, label %199

197:                                              ; preds = %189
  %198 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %199

199:                                              ; preds = %197, %189
  %200 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %201 = load i32, i32* @AHD_MODE_SCSI, align 4
  %202 = load i32, i32* @AHD_MODE_SCSI, align 4
  %203 = call i32 @ahd_set_modes(%struct.ahd_softc* %200, i32 %201, i32 %202)
  %204 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %205 = load i32, i32* @SEQ_FLAGS2, align 4
  %206 = call i64 @ahd_inb(%struct.ahd_softc* %204, i32 %205)
  store i64 %206, i64* %27, align 8
  %207 = load i64, i64* %27, align 8
  %208 = load i64, i64* @PENDING_MK_MESSAGE, align 8
  %209 = and i64 %207, %208
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %199
  %212 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %213 = load i64, i64* @MK_MESSAGE_SCB, align 8
  %214 = call i64 @ahd_inw(%struct.ahd_softc* %212, i64 %213)
  store i64 %214, i64* %26, align 8
  %215 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %216 = load i64, i64* %26, align 8
  %217 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %215, i64 %216)
  store %struct.scb* %217, %struct.scb** %18, align 8
  br label %219

218:                                              ; preds = %199
  store %struct.scb* null, %struct.scb** %18, align 8
  br label %219

219:                                              ; preds = %218, %211
  %220 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %221 = call i64 @ahd_get_scbptr(%struct.ahd_softc* %220)
  store i64 %221, i64* %28, align 8
  %222 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %223 = load i64, i64* @WAITING_TID_HEAD, align 8
  %224 = call i64 @ahd_inw(%struct.ahd_softc* %222, i64 %223)
  store i64 %224, i64* %24, align 8
  %225 = load i64, i64* @SCB_LIST_NULL, align 8
  store i64 %225, i64* %25, align 8
  store i32 0, i32* %31, align 4
  %226 = load i64, i64* %24, align 8
  store i64 %226, i64* %26, align 8
  br label %227

227:                                              ; preds = %431, %219
  %228 = load i64, i64* %26, align 8
  %229 = call i64 @SCBID_IS_NULL(i64 %228)
  %230 = icmp ne i64 %229, 0
  %231 = xor i1 %230, true
  br i1 %231, label %232, label %433

232:                                              ; preds = %227
  %233 = load i32, i32* %31, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %31, align 4
  %235 = load i32, i32* %31, align 4
  %236 = load i32, i32* @AHD_NUM_TARGETS, align 4
  %237 = icmp sgt i32 %235, %236
  br i1 %237, label %238, label %240

238:                                              ; preds = %232
  %239 = call i32 @panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %240

240:                                              ; preds = %238, %232
  %241 = load i64, i64* %26, align 8
  %242 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %243 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = icmp uge i64 %241, %245
  br i1 %246, label %247, label %259

247:                                              ; preds = %240
  %248 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %249 = call i32 @ahd_name(%struct.ahd_softc* %248)
  %250 = load i64, i64* %26, align 8
  %251 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %252 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.7, i64 0, i64 0), i32 %249, i64 %250, i64 %254)
  %256 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %257 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %256)
  %258 = call i32 @panic(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %259

259:                                              ; preds = %247, %240
  %260 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %261 = load i64, i64* %26, align 8
  %262 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %260, i64 %261)
  store %struct.scb* %262, %struct.scb** %17, align 8
  %263 = load %struct.scb*, %struct.scb** %17, align 8
  %264 = icmp eq %struct.scb* %263, null
  br i1 %264, label %265, label %271

265:                                              ; preds = %259
  %266 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %267 = call i32 @ahd_name(%struct.ahd_softc* %266)
  %268 = load i64, i64* %26, align 8
  %269 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %267, i64 %268)
  %270 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %271

271:                                              ; preds = %265, %259
  %272 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %273 = load i64, i64* %26, align 8
  %274 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %272, i64 %273)
  %275 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %276 = load i32, i32* @SCB_NEXT2, align 4
  %277 = call i64 @ahd_inw_scbram(%struct.ahd_softc* %275, i32 %276)
  store i64 %277, i64* %24, align 8
  %278 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %279 = load %struct.scb*, %struct.scb** %17, align 8
  %280 = load i32, i32* %10, align 4
  %281 = load i8, i8* %11, align 1
  %282 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %283 = load i64, i64* @SCB_LIST_NULL, align 8
  %284 = load i32, i32* @ROLE_UNKNOWN, align 4
  %285 = call i64 @ahd_match_scb(%struct.ahd_softc* %278, %struct.scb* %279, i32 %280, i8 signext %281, i32 %282, i64 %283, i32 %284)
  %286 = icmp eq i64 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %271
  %288 = load i64, i64* %26, align 8
  store i64 %288, i64* %25, align 8
  br label %431

289:                                              ; preds = %271
  %290 = load i32, i32* %16, align 4
  %291 = icmp eq i32 %290, 129
  br i1 %291, label %292, label %297

292:                                              ; preds = %289
  %293 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %294 = load %struct.scb*, %struct.scb** %17, align 8
  %295 = call i32 @SCB_GET_TARGET(%struct.ahd_softc* %293, %struct.scb* %294)
  %296 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %295)
  br label %297

297:                                              ; preds = %292, %289
  %298 = load i64, i64* %26, align 8
  store i64 %298, i64* %32, align 8
  %299 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %300 = load i32, i32* %10, align 4
  %301 = load i8, i8* %11, align 1
  %302 = load i32, i32* %12, align 4
  %303 = load i64, i64* %13, align 8
  %304 = load i32, i32* %14, align 4
  %305 = load i32, i32* %15, align 4
  %306 = load i32, i32* %16, align 4
  %307 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %308 = load %struct.scb*, %struct.scb** %17, align 8
  %309 = call i32 @SCB_GET_TARGET(%struct.ahd_softc* %307, %struct.scb* %308)
  %310 = call i64 @ahd_search_scb_list(%struct.ahd_softc* %299, i32 %300, i8 signext %301, i32 %302, i64 %303, i32 %304, i32 %305, i32 %306, i64* %32, i64* %33, i32 %309)
  %311 = load i32, i32* %30, align 4
  %312 = sext i32 %311 to i64
  %313 = add nsw i64 %312, %310
  %314 = trunc i64 %313 to i32
  store i32 %314, i32* %30, align 4
  %315 = load %struct.scb*, %struct.scb** %18, align 8
  %316 = icmp ne %struct.scb* %315, null
  br i1 %316, label %317, label %379

317:                                              ; preds = %297
  %318 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %319 = load %struct.scb*, %struct.scb** %18, align 8
  %320 = load i32, i32* %10, align 4
  %321 = load i8, i8* %11, align 1
  %322 = load i32, i32* %12, align 4
  %323 = load i64, i64* %13, align 8
  %324 = load i32, i32* %14, align 4
  %325 = call i64 @ahd_match_scb(%struct.ahd_softc* %318, %struct.scb* %319, i32 %320, i8 signext %321, i32 %322, i64 %323, i32 %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %379

327:                                              ; preds = %317
  %328 = load i32, i32* %30, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %30, align 4
  %330 = load i32, i32* %16, align 4
  switch i32 %330, label %378 [
    i32 131, label %331
    i32 128, label %345
    i32 129, label %373
    i32 130, label %377
  ]

331:                                              ; preds = %327
  %332 = load %struct.scb*, %struct.scb** %18, align 8
  %333 = getelementptr inbounds %struct.scb, %struct.scb* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @SCB_ACTIVE, align 4
  %336 = and i32 %334, %335
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %340

338:                                              ; preds = %331
  %339 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  br label %340

340:                                              ; preds = %338, %331
  %341 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %342 = load %struct.scb*, %struct.scb** %18, align 8
  %343 = load i32, i32* %15, align 4
  %344 = call i32 @ahd_done_with_status(%struct.ahd_softc* %341, %struct.scb* %342, i32 %343)
  br label %345

345:                                              ; preds = %327, %340
  %346 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %347 = load i32, i32* @WAITING_SCB_TAILS, align 4
  %348 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %349 = load %struct.scb*, %struct.scb** %18, align 8
  %350 = call i32 @SCB_GET_TARGET(%struct.ahd_softc* %348, %struct.scb* %349)
  %351 = mul nsw i32 2, %350
  %352 = add nsw i32 %347, %351
  %353 = sext i32 %352 to i64
  store i64 %353, i64* %34, align 8
  %354 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %355 = load i64, i64* %34, align 8
  %356 = load i64, i64* %33, align 8
  %357 = call i32 @ahd_outw(%struct.ahd_softc* %354, i64 %355, i64 %356)
  %358 = load i64, i64* @PENDING_MK_MESSAGE, align 8
  %359 = xor i64 %358, -1
  %360 = load i64, i64* %27, align 8
  %361 = and i64 %360, %359
  store i64 %361, i64* %27, align 8
  %362 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %363 = load i32, i32* @SEQ_FLAGS2, align 4
  %364 = load i64, i64* %27, align 8
  %365 = call i32 @ahd_outb(%struct.ahd_softc* %362, i32 %363, i64 %364)
  %366 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %367 = load i64, i64* @CMDS_PENDING, align 8
  %368 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %369 = load i64, i64* @CMDS_PENDING, align 8
  %370 = call i64 @ahd_inw(%struct.ahd_softc* %368, i64 %369)
  %371 = sub i64 %370, 1
  %372 = call i32 @ahd_outw(%struct.ahd_softc* %366, i64 %367, i64 %371)
  store %struct.scb* null, %struct.scb** %18, align 8
  br label %378

373:                                              ; preds = %327
  %374 = load %struct.scb*, %struct.scb** %17, align 8
  %375 = call i32 @SCB_GET_TAG(%struct.scb* %374)
  %376 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %375)
  br label %377

377:                                              ; preds = %327, %373
  br label %378

378:                                              ; preds = %327, %377, %345
  br label %379

379:                                              ; preds = %378, %317, %297
  %380 = load %struct.scb*, %struct.scb** %18, align 8
  %381 = icmp ne %struct.scb* %380, null
  br i1 %381, label %382, label %409

382:                                              ; preds = %379
  %383 = load i64, i64* %32, align 8
  %384 = call i64 @SCBID_IS_NULL(i64 %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %409

386:                                              ; preds = %382
  %387 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %388 = load %struct.scb*, %struct.scb** %17, align 8
  %389 = load i32, i32* %10, align 4
  %390 = load i8, i8* %11, align 1
  %391 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %392 = load i64, i64* @SCB_LIST_NULL, align 8
  %393 = load i32, i32* @ROLE_UNKNOWN, align 4
  %394 = call i64 @ahd_match_scb(%struct.ahd_softc* %387, %struct.scb* %388, i32 %389, i8 signext %390, i32 %391, i64 %392, i32 %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %409

396:                                              ; preds = %386
  %397 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %398 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %399 = load i64, i64* @MK_MESSAGE_SCB, align 8
  %400 = call i64 @ahd_inw(%struct.ahd_softc* %398, i64 %399)
  store i64 %400, i64* %32, align 8
  %401 = load i64, i64* @PENDING_MK_MESSAGE, align 8
  %402 = xor i64 %401, -1
  %403 = load i64, i64* %27, align 8
  %404 = and i64 %403, %402
  store i64 %404, i64* %27, align 8
  %405 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %406 = load i32, i32* @SEQ_FLAGS2, align 4
  %407 = load i64, i64* %27, align 8
  %408 = call i32 @ahd_outb(%struct.ahd_softc* %405, i32 %406, i64 %407)
  store %struct.scb* null, %struct.scb** %18, align 8
  br label %409

409:                                              ; preds = %396, %386, %382, %379
  %410 = load i64, i64* %32, align 8
  %411 = load i64, i64* %26, align 8
  %412 = icmp ne i64 %410, %411
  br i1 %412, label %413, label %419

413:                                              ; preds = %409
  %414 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %415 = load i64, i64* %25, align 8
  %416 = load i64, i64* %32, align 8
  %417 = load i64, i64* %24, align 8
  %418 = call i32 @ahd_stitch_tid_list(%struct.ahd_softc* %414, i64 %415, i64 %416, i64 %417)
  br label %419

419:                                              ; preds = %413, %409
  %420 = load i64, i64* %32, align 8
  %421 = call i64 @SCBID_IS_NULL(i64 %420)
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %425, label %423

423:                                              ; preds = %419
  %424 = load i64, i64* %32, align 8
  store i64 %424, i64* %25, align 8
  br label %425

425:                                              ; preds = %423, %419
  %426 = load i32, i32* %16, align 4
  %427 = icmp eq i32 %426, 129
  br i1 %427, label %428, label %430

428:                                              ; preds = %425
  %429 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  br label %430

430:                                              ; preds = %428, %425
  br label %431

431:                                              ; preds = %430, %287
  %432 = load i64, i64* %24, align 8
  store i64 %432, i64* %26, align 8
  br label %227

433:                                              ; preds = %227
  %434 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %435 = load i64, i64* %28, align 8
  %436 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %434, i64 %435)
  %437 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %438 = load i32, i32* %20, align 4
  %439 = call i32 @ahd_restore_modes(%struct.ahd_softc* %437, i32 %438)
  %440 = load i32, i32* %30, align 4
  ret i32 %440
}

declare dso_local i32 @ahd_save_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i64 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i64) #1

declare dso_local i64 @AHD_QIN_WRAP(i64) #1

declare dso_local i64 @ahd_get_snscb_qoff(%struct.ahd_softc*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @ahd_le32toh(i32) #1

declare dso_local i32 @ahd_outl(%struct.ahd_softc*, i32, i32) #1

declare dso_local %struct.scb* @ahd_lookup_scb(%struct.ahd_softc*, i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @ahd_match_scb(%struct.ahd_softc*, %struct.scb*, i32, i8 signext, i32, i64, i32) #1

declare dso_local i32 @ahd_done_with_status(%struct.ahd_softc*, %struct.scb*, i32) #1

declare dso_local i32 @ahd_qinfifo_requeue(%struct.ahd_softc*, %struct.scb*, %struct.scb*) #1

declare dso_local i32 @ahd_set_hnscb_qoff(%struct.ahd_softc*, i64) #1

declare dso_local i64 @ahd_inw(%struct.ahd_softc*, i64) #1

declare dso_local i64 @ahd_get_scbptr(%struct.ahd_softc*) #1

declare dso_local i64 @SCBID_IS_NULL(i64) #1

declare dso_local i32 @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_dump_card_state(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_scbptr(%struct.ahd_softc*, i64) #1

declare dso_local i64 @ahd_inw_scbram(%struct.ahd_softc*, i32) #1

declare dso_local i32 @SCB_GET_TARGET(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i64 @ahd_search_scb_list(%struct.ahd_softc*, i32, i8 signext, i32, i64, i32, i32, i32, i64*, i64*, i32) #1

declare dso_local i32 @ahd_outw(%struct.ahd_softc*, i64, i64) #1

declare dso_local i32 @SCB_GET_TAG(%struct.scb*) #1

declare dso_local i32 @ahd_stitch_tid_list(%struct.ahd_softc*, i64, i64, i64) #1

declare dso_local i32 @ahd_restore_modes(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
