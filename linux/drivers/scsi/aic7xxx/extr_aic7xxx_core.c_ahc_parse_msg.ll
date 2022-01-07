; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_parse_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_parse_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32*, i32, i32, i32*, i64, %struct.ahc_tmode_tstate** }
%struct.ahc_tmode_tstate = type { %struct.ahc_tmode_lstate** }
%struct.ahc_tmode_lstate = type { i32 }
%struct.ahc_devinfo = type { i64, i64, i32, i32, i32 }
%struct.ahc_initiator_tinfo = type { i32 }
%struct.ahc_syncrate = type { i32 }

@MSGLOOP_IN_PROG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MSGLOOP_TERMINATED = common dso_local global i32 0, align 4
@MSGLOOP_MSGCOMPLETE = common dso_local global i32 0, align 4
@MSG_EXT_SDTR_LEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@WIDEXFER = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"(%s:%c:%d:%d): Received SDTR period %x, offset %x\0A\09Filtered to period %x, offset %x\0A\00", align 1
@AHC_TRANS_ACTIVE = common dso_local global i32 0, align 4
@AHC_TRANS_GOAL = common dso_local global i32 0, align 4
@AHCMSG_EXT = common dso_local global i32 0, align 4
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"(%s:%c:%d:%d): Target Initiated SDTR\0A\00", align 1
@MSG_EXT_WDTR_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"(%s:%c:%d:%d): Received WDTR %x filtered to %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"(%s:%c:%d:%d): requested %dBit transfers.  Rejecting...\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"(%s:%c:%d:%d): Target Initiated WDTR\0A\00", align 1
@AHC_NEG_ALWAYS = common dso_local global i32 0, align 4
@MSG_EXT_PPR_LEN = common dso_local global i32 0, align 4
@MSG_EXT_PPR_DT_REQ = common dso_local global i32 0, align 4
@ROLE_TARGET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"(%s:%c:%d:%d): Target Initiated PPR\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"(%s:%c:%d:%d): Initiator Initiated PPR\0A\00", align 1
@.str.7 = private unnamed_addr constant [127 x i8] c"(%s:%c:%d:%d): Received PPR width %x, period %x, offset %x,options %x\0A\09Filtered to width %x, period %x, offset %x, options %x\0A\00", align 1
@CAM_BDR_SENT = common dso_local global i32 0, align 4
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@INITIATOR_TAG = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahc_softc*, %struct.ahc_devinfo*)* @ahc_parse_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_parse_msg(%struct.ahc_softc* %0, %struct.ahc_devinfo* %1) #0 {
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca %struct.ahc_devinfo*, align 8
  %5 = alloca %struct.ahc_initiator_tinfo*, align 8
  %6 = alloca %struct.ahc_tmode_tstate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ahc_syncrate*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ahc_syncrate*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  store %struct.ahc_devinfo* %1, %struct.ahc_devinfo** %4, align 8
  %27 = load i32, i32* @MSGLOOP_IN_PROG, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %7, align 4
  %30 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %31 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %32 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %35 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %38 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc* %30, i32 %33, i64 %36, i32 %39, %struct.ahc_tmode_tstate** %6)
  store %struct.ahc_initiator_tinfo* %40, %struct.ahc_initiator_tinfo** %5, align 8
  %41 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %5, align 8
  %42 = getelementptr inbounds %struct.ahc_initiator_tinfo, %struct.ahc_initiator_tinfo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  %44 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %45 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %543 [
    i32 138, label %49
    i32 129, label %49
    i32 139, label %49
    i32 130, label %49
    i32 133, label %49
    i32 132, label %51
    i32 131, label %55
    i32 137, label %57
    i32 128, label %542
  ]

49:                                               ; preds = %2, %2, %2, %2, %2
  %50 = load i32, i32* @MSGLOOP_TERMINATED, align 4
  store i32 %50, i32* %8, align 4
  br label %545

51:                                               ; preds = %2
  %52 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %53 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %54 = call i32 @ahc_handle_msg_reject(%struct.ahc_softc* %52, %struct.ahc_devinfo* %53)
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %2, %51
  %56 = load i32, i32* @MSGLOOP_MSGCOMPLETE, align 4
  store i32 %56, i32* %8, align 4
  br label %545

57:                                               ; preds = %2
  %58 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %59 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %60, 2
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %545

63:                                               ; preds = %57
  %64 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %65 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %539 [
    i32 135, label %69
    i32 134, label %198
    i32 136, label %345
  ]

69:                                               ; preds = %63
  %70 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %71 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @MSG_EXT_SDTR_LEN, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* @TRUE, align 4
  store i32 %78, i32* %7, align 4
  br label %541

79:                                               ; preds = %69
  %80 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %81 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @MSG_EXT_SDTR_LEN, align 4
  %84 = add nsw i32 %83, 1
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %541

87:                                               ; preds = %79
  %88 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %89 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 3
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %93 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %94 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %14, align 4
  store i32 %97, i32* %15, align 4
  %98 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %99 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %5, align 8
  %100 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %101 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = call %struct.ahc_syncrate* @ahc_devlimited_syncrate(%struct.ahc_softc* %98, %struct.ahc_initiator_tinfo* %99, i32* %12, i32* %13, i32 %102)
  store %struct.ahc_syncrate* %103, %struct.ahc_syncrate** %11, align 8
  %104 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %105 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %5, align 8
  %106 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %11, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @WIDEXFER, align 4
  %109 = and i32 %107, %108
  %110 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %111 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @ahc_validate_offset(%struct.ahc_softc* %104, %struct.ahc_initiator_tinfo* %105, %struct.ahc_syncrate* %106, i32* %14, i32 %109, i32 %112)
  %114 = load i32, i32* @bootverbose, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %137

116:                                              ; preds = %87
  %117 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %118 = call i32 @ahc_name(%struct.ahc_softc* %117)
  %119 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %120 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %123 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %126 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %129 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 3
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %14, align 4
  %136 = call i32 (i8*, i32, i32, i32, i64, ...) @printk(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %118, i32 %121, i32 %124, i64 %127, i32 %132, i32 %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %116, %87
  %138 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %139 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %140 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %11, align 8
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* @AHC_TRANS_ACTIVE, align 4
  %145 = load i32, i32* @AHC_TRANS_GOAL, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @TRUE, align 4
  %148 = call i32 @ahc_set_syncrate(%struct.ahc_softc* %138, %struct.ahc_devinfo* %139, %struct.ahc_syncrate* %140, i32 %141, i32 %142, i32 %143, i32 %146, i32 %147)
  %149 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %150 = load i32, i32* @AHCMSG_EXT, align 4
  %151 = load i32, i32* @TRUE, align 4
  %152 = call i32 @ahc_sent_msg(%struct.ahc_softc* %149, i32 %150, i32 135, i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %137
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i32, i32* @TRUE, align 4
  store i32 %159, i32* %7, align 4
  br label %160

160:                                              ; preds = %158, %154
  br label %196

161:                                              ; preds = %137
  %162 = load i32, i32* @bootverbose, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %183

164:                                              ; preds = %161
  %165 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %166 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @ROLE_INITIATOR, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %183

170:                                              ; preds = %164
  %171 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %172 = call i32 @ahc_name(%struct.ahc_softc* %171)
  %173 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %174 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %177 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %180 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = call i32 (i8*, i32, i32, i32, i64, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %172, i32 %175, i32 %178, i64 %181)
  br label %183

183:                                              ; preds = %170, %164, %161
  %184 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %185 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %184, i32 0, i32 4
  store i64 0, i64* %185, align 8
  %186 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %187 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %186, i32 0, i32 2
  store i32 0, i32* %187, align 4
  %188 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %189 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* %14, align 4
  %192 = call i32 @ahc_construct_sdtr(%struct.ahc_softc* %188, %struct.ahc_devinfo* %189, i32 %190, i32 %191)
  %193 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %194 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %193, i32 0, i32 4
  store i64 0, i64* %194, align 8
  %195 = load i32, i32* @TRUE, align 4
  store i32 %195, i32* %9, align 4
  br label %196

196:                                              ; preds = %183, %160
  %197 = load i32, i32* @MSGLOOP_MSGCOMPLETE, align 4
  store i32 %197, i32* %8, align 4
  br label %541

198:                                              ; preds = %63
  %199 = load i32, i32* @FALSE, align 4
  store i32 %199, i32* %18, align 4
  %200 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %201 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 1
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @MSG_EXT_WDTR_LEN, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %198
  %208 = load i32, i32* @TRUE, align 4
  store i32 %208, i32* %7, align 4
  br label %541

209:                                              ; preds = %198
  %210 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %211 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @MSG_EXT_WDTR_LEN, align 4
  %214 = add nsw i32 %213, 1
  %215 = icmp slt i32 %212, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %209
  br label %541

217:                                              ; preds = %209
  %218 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %219 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 3
  %222 = load i32, i32* %221, align 4
  store i32 %222, i32* %16, align 4
  %223 = load i32, i32* %16, align 4
  store i32 %223, i32* %17, align 4
  %224 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %225 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %5, align 8
  %226 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %227 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @ahc_validate_width(%struct.ahc_softc* %224, %struct.ahc_initiator_tinfo* %225, i32* %16, i32 %228)
  %230 = load i32, i32* @bootverbose, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %247

232:                                              ; preds = %217
  %233 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %234 = call i32 @ahc_name(%struct.ahc_softc* %233)
  %235 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %236 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %239 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %242 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load i32, i32* %17, align 4
  %245 = load i32, i32* %16, align 4
  %246 = call i32 (i8*, i32, i32, i32, i64, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %234, i32 %237, i32 %240, i64 %243, i32 %244, i32 %245)
  br label %247

247:                                              ; preds = %232, %217
  %248 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %249 = load i32, i32* @AHCMSG_EXT, align 4
  %250 = load i32, i32* @TRUE, align 4
  %251 = call i32 @ahc_sent_msg(%struct.ahc_softc* %248, i32 %249, i32 134, i32 %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %275

253:                                              ; preds = %247
  %254 = load i32, i32* %17, align 4
  %255 = load i32, i32* %16, align 4
  %256 = icmp sgt i32 %254, %255
  br i1 %256, label %257, label %274

257:                                              ; preds = %253
  %258 = load i32, i32* @TRUE, align 4
  store i32 %258, i32* %7, align 4
  %259 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %260 = call i32 @ahc_name(%struct.ahc_softc* %259)
  %261 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %262 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %265 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %268 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = load i32, i32* %16, align 4
  %271 = shl i32 1, %270
  %272 = mul nsw i32 8, %271
  %273 = call i32 (i8*, i32, i32, i32, i64, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %260, i32 %263, i32 %266, i64 %269, i32 %272)
  store i32 0, i32* %16, align 4
  br label %274

274:                                              ; preds = %257, %253
  br label %310

275:                                              ; preds = %247
  %276 = load i32, i32* @bootverbose, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %297

278:                                              ; preds = %275
  %279 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %280 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @ROLE_INITIATOR, align 4
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %284, label %297

284:                                              ; preds = %278
  %285 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %286 = call i32 @ahc_name(%struct.ahc_softc* %285)
  %287 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %288 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %291 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %294 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = call i32 (i8*, i32, i32, i32, i64, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %286, i32 %289, i32 %292, i64 %295)
  br label %297

297:                                              ; preds = %284, %278, %275
  %298 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %299 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %298, i32 0, i32 4
  store i64 0, i64* %299, align 8
  %300 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %301 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %300, i32 0, i32 2
  store i32 0, i32* %301, align 4
  %302 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %303 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %304 = load i32, i32* %16, align 4
  %305 = call i32 @ahc_construct_wdtr(%struct.ahc_softc* %302, %struct.ahc_devinfo* %303, i32 %304)
  %306 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %307 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %306, i32 0, i32 4
  store i64 0, i64* %307, align 8
  %308 = load i32, i32* @TRUE, align 4
  store i32 %308, i32* %9, align 4
  %309 = load i32, i32* @TRUE, align 4
  store i32 %309, i32* %18, align 4
  br label %310

310:                                              ; preds = %297, %274
  %311 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %312 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %313 = load %struct.ahc_tmode_tstate*, %struct.ahc_tmode_tstate** %6, align 8
  %314 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %5, align 8
  %315 = load i32, i32* @AHC_NEG_ALWAYS, align 4
  %316 = call i32 @ahc_update_neg_request(%struct.ahc_softc* %311, %struct.ahc_devinfo* %312, %struct.ahc_tmode_tstate* %313, %struct.ahc_initiator_tinfo* %314, i32 %315)
  %317 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %318 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %319 = load i32, i32* %16, align 4
  %320 = load i32, i32* @AHC_TRANS_ACTIVE, align 4
  %321 = load i32, i32* @AHC_TRANS_GOAL, align 4
  %322 = or i32 %320, %321
  %323 = load i32, i32* @TRUE, align 4
  %324 = call i32 @ahc_set_width(%struct.ahc_softc* %317, %struct.ahc_devinfo* %318, i32 %319, i32 %322, i32 %323)
  %325 = load i32, i32* %18, align 4
  %326 = load i32, i32* @FALSE, align 4
  %327 = icmp eq i32 %325, %326
  br i1 %327, label %328, label %343

328:                                              ; preds = %310
  %329 = load i32, i32* %7, align 4
  %330 = load i32, i32* @FALSE, align 4
  %331 = icmp eq i32 %329, %330
  br i1 %331, label %332, label %343

332:                                              ; preds = %328
  %333 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %334 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %333, i32 0, i32 4
  store i64 0, i64* %334, align 8
  %335 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %336 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %335, i32 0, i32 2
  store i32 0, i32* %336, align 4
  %337 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %338 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %339 = call i32 @ahc_build_transfer_msg(%struct.ahc_softc* %337, %struct.ahc_devinfo* %338)
  %340 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %341 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %340, i32 0, i32 4
  store i64 0, i64* %341, align 8
  %342 = load i32, i32* @TRUE, align 4
  store i32 %342, i32* %9, align 4
  br label %343

343:                                              ; preds = %332, %328, %310
  %344 = load i32, i32* @MSGLOOP_MSGCOMPLETE, align 4
  store i32 %344, i32* %8, align 4
  br label %541

345:                                              ; preds = %63
  %346 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %347 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %346, i32 0, i32 0
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 1
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* @MSG_EXT_PPR_LEN, align 4
  %352 = icmp ne i32 %350, %351
  br i1 %352, label %353, label %355

353:                                              ; preds = %345
  %354 = load i32, i32* @TRUE, align 4
  store i32 %354, i32* %7, align 4
  br label %541

355:                                              ; preds = %345
  %356 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %357 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* @MSG_EXT_PPR_LEN, align 4
  %360 = add nsw i32 %359, 1
  %361 = icmp slt i32 %358, %360
  br i1 %361, label %362, label %363

362:                                              ; preds = %355
  br label %541

363:                                              ; preds = %355
  %364 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %365 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %364, i32 0, i32 0
  %366 = load i32*, i32** %365, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 3
  %368 = load i32, i32* %367, align 4
  store i32 %368, i32* %20, align 4
  %369 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %370 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %369, i32 0, i32 0
  %371 = load i32*, i32** %370, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 5
  %373 = load i32, i32* %372, align 4
  store i32 %373, i32* %21, align 4
  %374 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %375 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %374, i32 0, i32 0
  %376 = load i32*, i32** %375, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 6
  %378 = load i32, i32* %377, align 4
  store i32 %378, i32* %22, align 4
  %379 = load i32, i32* %22, align 4
  store i32 %379, i32* %24, align 4
  %380 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %381 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %380, i32 0, i32 0
  %382 = load i32*, i32** %381, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 7
  %384 = load i32, i32* %383, align 4
  store i32 %384, i32* %23, align 4
  %385 = load i32, i32* %23, align 4
  %386 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %387 = and i32 %385, %386
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %393

389:                                              ; preds = %363
  %390 = load i32, i32* %20, align 4
  %391 = icmp eq i32 %390, 9
  br i1 %391, label %392, label %393

392:                                              ; preds = %389
  store i32 0, i32* %21, align 4
  br label %393

393:                                              ; preds = %392, %389, %363
  %394 = load i32, i32* %23, align 4
  store i32 %394, i32* %26, align 4
  %395 = load i32, i32* %21, align 4
  store i32 %395, i32* %25, align 4
  %396 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %397 = load i32, i32* %23, align 4
  %398 = and i32 %397, %396
  store i32 %398, i32* %23, align 4
  %399 = load i32, i32* %22, align 4
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %393
  store i32 0, i32* %23, align 4
  br label %402

402:                                              ; preds = %401, %393
  %403 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %404 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %5, align 8
  %405 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %406 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %405, i32 0, i32 4
  %407 = load i32, i32* %406, align 8
  %408 = call i32 @ahc_validate_width(%struct.ahc_softc* %403, %struct.ahc_initiator_tinfo* %404, i32* %22, i32 %407)
  %409 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %410 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %5, align 8
  %411 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %412 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %411, i32 0, i32 4
  %413 = load i32, i32* %412, align 8
  %414 = call %struct.ahc_syncrate* @ahc_devlimited_syncrate(%struct.ahc_softc* %409, %struct.ahc_initiator_tinfo* %410, i32* %20, i32* %23, i32 %413)
  store %struct.ahc_syncrate* %414, %struct.ahc_syncrate** %19, align 8
  %415 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %416 = load %struct.ahc_initiator_tinfo*, %struct.ahc_initiator_tinfo** %5, align 8
  %417 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %19, align 8
  %418 = load i32, i32* %22, align 4
  %419 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %420 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %419, i32 0, i32 4
  %421 = load i32, i32* %420, align 8
  %422 = call i32 @ahc_validate_offset(%struct.ahc_softc* %415, %struct.ahc_initiator_tinfo* %416, %struct.ahc_syncrate* %417, i32* %21, i32 %418, i32 %421)
  %423 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %424 = load i32, i32* @AHCMSG_EXT, align 4
  %425 = load i32, i32* @TRUE, align 4
  %426 = call i32 @ahc_sent_msg(%struct.ahc_softc* %423, i32 %424, i32 136, i32 %425)
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %443

428:                                              ; preds = %402
  %429 = load i32, i32* %24, align 4
  %430 = load i32, i32* %22, align 4
  %431 = icmp sgt i32 %429, %430
  br i1 %431, label %440, label %432

432:                                              ; preds = %428
  %433 = load i32, i32* %25, align 4
  %434 = load i32, i32* %21, align 4
  %435 = icmp ne i32 %433, %434
  br i1 %435, label %440, label %436

436:                                              ; preds = %432
  %437 = load i32, i32* %26, align 4
  %438 = load i32, i32* %23, align 4
  %439 = icmp ne i32 %437, %438
  br i1 %439, label %440, label %442

440:                                              ; preds = %436, %432, %428
  %441 = load i32, i32* @TRUE, align 4
  store i32 %441, i32* %7, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store %struct.ahc_syncrate* null, %struct.ahc_syncrate** %19, align 8
  br label %442

442:                                              ; preds = %440, %436
  br label %490

443:                                              ; preds = %402
  %444 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %445 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %444, i32 0, i32 4
  %446 = load i32, i32* %445, align 8
  %447 = load i32, i32* @ROLE_TARGET, align 4
  %448 = icmp ne i32 %446, %447
  br i1 %448, label %449, label %462

449:                                              ; preds = %443
  %450 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %451 = call i32 @ahc_name(%struct.ahc_softc* %450)
  %452 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %453 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %452, i32 0, i32 2
  %454 = load i32, i32* %453, align 8
  %455 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %456 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %455, i32 0, i32 3
  %457 = load i32, i32* %456, align 4
  %458 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %459 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %458, i32 0, i32 1
  %460 = load i64, i64* %459, align 8
  %461 = call i32 (i8*, i32, i32, i32, i64, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %451, i32 %454, i32 %457, i64 %460)
  br label %475

462:                                              ; preds = %443
  %463 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %464 = call i32 @ahc_name(%struct.ahc_softc* %463)
  %465 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %466 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %465, i32 0, i32 2
  %467 = load i32, i32* %466, align 8
  %468 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %469 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %468, i32 0, i32 3
  %470 = load i32, i32* %469, align 4
  %471 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %472 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %471, i32 0, i32 1
  %473 = load i64, i64* %472, align 8
  %474 = call i32 (i8*, i32, i32, i32, i64, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %464, i32 %467, i32 %470, i64 %473)
  br label %475

475:                                              ; preds = %462, %449
  %476 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %477 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %476, i32 0, i32 4
  store i64 0, i64* %477, align 8
  %478 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %479 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %478, i32 0, i32 2
  store i32 0, i32* %479, align 4
  %480 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %481 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %482 = load i32, i32* %20, align 4
  %483 = load i32, i32* %21, align 4
  %484 = load i32, i32* %22, align 4
  %485 = load i32, i32* %23, align 4
  %486 = call i32 @ahc_construct_ppr(%struct.ahc_softc* %480, %struct.ahc_devinfo* %481, i32 %482, i32 %483, i32 %484, i32 %485)
  %487 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %488 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %487, i32 0, i32 4
  store i64 0, i64* %488, align 8
  %489 = load i32, i32* @TRUE, align 4
  store i32 %489, i32* %9, align 4
  br label %490

490:                                              ; preds = %475, %442
  %491 = load i32, i32* @bootverbose, align 4
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %518

493:                                              ; preds = %490
  %494 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %495 = call i32 @ahc_name(%struct.ahc_softc* %494)
  %496 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %497 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %496, i32 0, i32 2
  %498 = load i32, i32* %497, align 8
  %499 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %500 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %499, i32 0, i32 3
  %501 = load i32, i32* %500, align 4
  %502 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %503 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %502, i32 0, i32 1
  %504 = load i64, i64* %503, align 8
  %505 = load i32, i32* %24, align 4
  %506 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %507 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %506, i32 0, i32 0
  %508 = load i32*, i32** %507, align 8
  %509 = getelementptr inbounds i32, i32* %508, i64 3
  %510 = load i32, i32* %509, align 4
  %511 = load i32, i32* %25, align 4
  %512 = load i32, i32* %26, align 4
  %513 = load i32, i32* %22, align 4
  %514 = load i32, i32* %20, align 4
  %515 = load i32, i32* %21, align 4
  %516 = load i32, i32* %23, align 4
  %517 = call i32 (i8*, i32, i32, i32, i64, ...) @printk(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.7, i64 0, i64 0), i32 %495, i32 %498, i32 %501, i64 %504, i32 %505, i32 %510, i32 %511, i32 %512, i32 %513, i32 %514, i32 %515, i32 %516)
  br label %518

518:                                              ; preds = %493, %490
  %519 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %520 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %521 = load i32, i32* %22, align 4
  %522 = load i32, i32* @AHC_TRANS_ACTIVE, align 4
  %523 = load i32, i32* @AHC_TRANS_GOAL, align 4
  %524 = or i32 %522, %523
  %525 = load i32, i32* @TRUE, align 4
  %526 = call i32 @ahc_set_width(%struct.ahc_softc* %519, %struct.ahc_devinfo* %520, i32 %521, i32 %524, i32 %525)
  %527 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %528 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %4, align 8
  %529 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %19, align 8
  %530 = load i32, i32* %20, align 4
  %531 = load i32, i32* %21, align 4
  %532 = load i32, i32* %23, align 4
  %533 = load i32, i32* @AHC_TRANS_ACTIVE, align 4
  %534 = load i32, i32* @AHC_TRANS_GOAL, align 4
  %535 = or i32 %533, %534
  %536 = load i32, i32* @TRUE, align 4
  %537 = call i32 @ahc_set_syncrate(%struct.ahc_softc* %527, %struct.ahc_devinfo* %528, %struct.ahc_syncrate* %529, i32 %530, i32 %531, i32 %532, i32 %535, i32 %536)
  %538 = load i32, i32* @MSGLOOP_MSGCOMPLETE, align 4
  store i32 %538, i32* %8, align 4
  br label %541

539:                                              ; preds = %63
  %540 = load i32, i32* @TRUE, align 4
  store i32 %540, i32* %7, align 4
  br label %541

541:                                              ; preds = %539, %518, %362, %353, %343, %216, %207, %196, %86, %77
  br label %545

542:                                              ; preds = %2
  br label %543

543:                                              ; preds = %2, %542
  %544 = load i32, i32* @TRUE, align 4
  store i32 %544, i32* %7, align 4
  br label %545

545:                                              ; preds = %543, %541, %62, %55, %49
  %546 = load i32, i32* %7, align 4
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %559

548:                                              ; preds = %545
  %549 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %550 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %549, i32 0, i32 4
  store i64 0, i64* %550, align 8
  %551 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %552 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %551, i32 0, i32 2
  store i32 1, i32* %552, align 4
  %553 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %554 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %553, i32 0, i32 3
  %555 = load i32*, i32** %554, align 8
  %556 = getelementptr inbounds i32, i32* %555, i64 0
  store i32 132, i32* %556, align 4
  %557 = load i32, i32* @MSGLOOP_MSGCOMPLETE, align 4
  store i32 %557, i32* %8, align 4
  %558 = load i32, i32* @TRUE, align 4
  store i32 %558, i32* %9, align 4
  br label %559

559:                                              ; preds = %548, %545
  %560 = load i32, i32* %8, align 4
  %561 = load i32, i32* @MSGLOOP_IN_PROG, align 4
  %562 = icmp ne i32 %560, %561
  br i1 %562, label %563, label %569

563:                                              ; preds = %559
  %564 = load i32, i32* %9, align 4
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %569, label %566

566:                                              ; preds = %563
  %567 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %568 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %567, i32 0, i32 2
  store i32 0, i32* %568, align 4
  br label %569

569:                                              ; preds = %566, %563, %559
  %570 = load i32, i32* %8, align 4
  ret i32 %570
}

declare dso_local %struct.ahc_initiator_tinfo* @ahc_fetch_transinfo(%struct.ahc_softc*, i32, i64, i32, %struct.ahc_tmode_tstate**) #1

declare dso_local i32 @ahc_handle_msg_reject(%struct.ahc_softc*, %struct.ahc_devinfo*) #1

declare dso_local %struct.ahc_syncrate* @ahc_devlimited_syncrate(%struct.ahc_softc*, %struct.ahc_initiator_tinfo*, i32*, i32*, i32) #1

declare dso_local i32 @ahc_validate_offset(%struct.ahc_softc*, %struct.ahc_initiator_tinfo*, %struct.ahc_syncrate*, i32*, i32, i32) #1

declare dso_local i32 @printk(i8*, i32, i32, i32, i64, ...) #1

declare dso_local i32 @ahc_name(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_set_syncrate(%struct.ahc_softc*, %struct.ahc_devinfo*, %struct.ahc_syncrate*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ahc_sent_msg(%struct.ahc_softc*, i32, i32, i32) #1

declare dso_local i32 @ahc_construct_sdtr(%struct.ahc_softc*, %struct.ahc_devinfo*, i32, i32) #1

declare dso_local i32 @ahc_validate_width(%struct.ahc_softc*, %struct.ahc_initiator_tinfo*, i32*, i32) #1

declare dso_local i32 @ahc_construct_wdtr(%struct.ahc_softc*, %struct.ahc_devinfo*, i32) #1

declare dso_local i32 @ahc_update_neg_request(%struct.ahc_softc*, %struct.ahc_devinfo*, %struct.ahc_tmode_tstate*, %struct.ahc_initiator_tinfo*, i32) #1

declare dso_local i32 @ahc_set_width(%struct.ahc_softc*, %struct.ahc_devinfo*, i32, i32, i32) #1

declare dso_local i32 @ahc_build_transfer_msg(%struct.ahc_softc*, %struct.ahc_devinfo*) #1

declare dso_local i32 @ahc_construct_ppr(%struct.ahc_softc*, %struct.ahc_devinfo*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
