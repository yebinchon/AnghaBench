; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_handle_msg_reject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_handle_msg_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i64, i64 }
%struct.ahd_devinfo = type { i32, i32, i32, i32 }
%struct.scb = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ahd_initiator_tinfo = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64, i32, i32, i64 }
%struct.ahd_tmode_tstate = type { i32 }

@LAST_MSG = common dso_local global i32 0, align 4
@AHDMSG_EXT = common dso_local global i32 0, align 4
@MSG_EXT_PPR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AHD_SYNCRATE_PACED = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"(%s:%c:%d:%d): PPR Rejected. Trying simple U160 PPR\0A\00", align 1
@AHD_SYNCRATE_DT = common dso_local global i64 0, align 8
@MSG_EXT_PPR_IU_REQ = common dso_local global i32 0, align 4
@MSG_EXT_PPR_QAS_REQ = common dso_local global i32 0, align 4
@MSG_EXT_PPR_DT_REQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"(%s:%c:%d:%d): PPR Rejected. Trying WDTR/SDTR\0A\00", align 1
@MSG_EXT_WDTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"(%s:%c:%d:%d): refuses WIDE negotiation.  Using 8bit transfers\0A\00", align 1
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i32 0, align 4
@AHD_TRANS_ACTIVE = common dso_local global i32 0, align 4
@AHD_TRANS_GOAL = common dso_local global i32 0, align 4
@MSG_EXT_SDTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [78 x i8] c"(%s:%c:%d:%d): refuses synchronous negotiation. Using asynchronous transfers\0A\00", align 1
@MSG_SIMPLE_TASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [68 x i8] c"(%s:%c:%d:%d): refuses tagged commands.  Performing non-tagged I/O\0A\00", align 1
@AHD_QUEUE_NONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [85 x i8] c"(%s:%c:%d:%d): refuses %s tagged commands.  Performing simple queue tagged I/O only\0A\00", align 1
@MSG_ORDERED_TASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"ordered\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"head of queue\00", align 1
@AHD_QUEUE_BASIC = common dso_local global i32 0, align 4
@SCB_CONTROL = common dso_local global i32 0, align 4
@MSG_OUT = common dso_local global i32 0, align 4
@MSG_IDENTIFYFLAG = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i32 0, align 4
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@SEARCH_COMPLETE = common dso_local global i32 0, align 4
@AHDMSG_1B = common dso_local global i32 0, align 4
@MSG_FLAG_EXPECT_PPR_BUSFREE = common dso_local global i32 0, align 4
@MSG_FLAG_IU_REQ_CHANGED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"%s:%c:%d: Message reject for %x -- ignored\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahd_softc*, %struct.ahd_devinfo*)* @ahd_handle_msg_reject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahd_handle_msg_reject(%struct.ahd_softc* %0, %struct.ahd_devinfo* %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca %struct.ahd_devinfo*, align 8
  %5 = alloca %struct.scb*, align 8
  %6 = alloca %struct.ahd_initiator_tinfo*, align 8
  %7 = alloca %struct.ahd_tmode_tstate*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store %struct.ahd_devinfo* %1, %struct.ahd_devinfo** %4, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %14 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %15, i32 %16)
  store %struct.scb* %17, %struct.scb** %5, align 8
  %18 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %19 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %20 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %23 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %26 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc* %18, i32 %21, i32 %24, i32 %27, %struct.ahd_tmode_tstate** %7)
  store %struct.ahd_initiator_tinfo* %28, %struct.ahd_initiator_tinfo** %6, align 8
  %29 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %30 = load i32, i32* @LAST_MSG, align 4
  %31 = call i32 @ahd_inb(%struct.ahd_softc* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %33 = load i32, i32* @AHDMSG_EXT, align 4
  %34 = load i32, i32* @MSG_EXT_PPR, align 4
  %35 = load i32, i32* @FALSE, align 4
  %36 = call i64 @ahd_sent_msg(%struct.ahd_softc* %32, i32 %33, i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %119

38:                                               ; preds = %2
  %39 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %40 = load i32, i32* @AHDMSG_EXT, align 4
  %41 = load i32, i32* @MSG_EXT_PPR, align 4
  %42 = load i32, i32* @TRUE, align 4
  %43 = call i64 @ahd_sent_msg(%struct.ahd_softc* %39, i32 %40, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %83

45:                                               ; preds = %38
  %46 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %47 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AHD_SYNCRATE_PACED, align 8
  %51 = icmp sle i64 %49, %50
  br i1 %51, label %52, label %83

52:                                               ; preds = %45
  %53 = load i64, i64* @bootverbose, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %57 = call i32 @ahd_name(%struct.ahd_softc* %56)
  %58 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %59 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %62 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %65 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, i32, i32, i32, i32, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %60, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %55, %52
  %69 = load i64, i64* @AHD_SYNCRATE_DT, align 8
  %70 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %71 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i64 %69, i64* %72, align 8
  %73 = load i32, i32* @MSG_EXT_PPR_IU_REQ, align 4
  %74 = load i32, i32* @MSG_EXT_PPR_QAS_REQ, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %79 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, %77
  store i32 %82, i32* %80, align 8
  br label %109

83:                                               ; preds = %45, %38
  %84 = load i64, i64* @bootverbose, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %83
  %87 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %88 = call i32 @ahd_name(%struct.ahd_softc* %87)
  %89 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %90 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %93 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %96 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, i32, i32, i32, i32, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %91, i32 %94, i32 %97)
  br label %99

99:                                               ; preds = %86, %83
  %100 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %101 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i32 0, i32* %102, align 8
  %103 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %104 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i32 2, i32* %105, align 8
  %106 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %107 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  store i32 2, i32* %108, align 4
  br label %109

109:                                              ; preds = %99, %68
  %110 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %111 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %110, i32 0, i32 1
  store i64 0, i64* %111, align 8
  %112 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %113 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %112, i32 0, i32 2
  store i64 0, i64* %113, align 8
  %114 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %115 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %116 = call i32 @ahd_build_transfer_msg(%struct.ahd_softc* %114, %struct.ahd_devinfo* %115)
  %117 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %118 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %117, i32 0, i32 1
  store i64 0, i64* %118, align 8
  store i32 1, i32* %10, align 4
  br label %354

119:                                              ; preds = %2
  %120 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %121 = load i32, i32* @AHDMSG_EXT, align 4
  %122 = load i32, i32* @MSG_EXT_WDTR, align 4
  %123 = load i32, i32* @FALSE, align 4
  %124 = call i64 @ahd_sent_msg(%struct.ahd_softc* %120, i32 %121, i32 %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %167

126:                                              ; preds = %119
  %127 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %128 = call i32 @ahd_name(%struct.ahd_softc* %127)
  %129 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %130 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %133 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %136 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i8*, i32, i32, i32, i32, ...) @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %128, i32 %131, i32 %134, i32 %137)
  %139 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %140 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %141 = load i32, i32* @MSG_EXT_WDTR_BUS_8_BIT, align 4
  %142 = load i32, i32* @AHD_TRANS_ACTIVE, align 4
  %143 = load i32, i32* @AHD_TRANS_GOAL, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @TRUE, align 4
  %146 = call i32 @ahd_set_width(%struct.ahd_softc* %139, %struct.ahd_devinfo* %140, i32 %141, i32 %144, i32 %145)
  %147 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %148 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %6, align 8
  %152 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %150, %154
  br i1 %155, label %156, label %166

156:                                              ; preds = %126
  %157 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %158 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %157, i32 0, i32 1
  store i64 0, i64* %158, align 8
  %159 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %160 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %159, i32 0, i32 2
  store i64 0, i64* %160, align 8
  %161 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %162 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %163 = call i32 @ahd_build_transfer_msg(%struct.ahd_softc* %161, %struct.ahd_devinfo* %162)
  %164 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %165 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %164, i32 0, i32 1
  store i64 0, i64* %165, align 8
  store i32 1, i32* %10, align 4
  br label %166

166:                                              ; preds = %156, %126
  br label %353

167:                                              ; preds = %119
  %168 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %169 = load i32, i32* @AHDMSG_EXT, align 4
  %170 = load i32, i32* @MSG_EXT_SDTR, align 4
  %171 = load i32, i32* @FALSE, align 4
  %172 = call i64 @ahd_sent_msg(%struct.ahd_softc* %168, i32 %169, i32 %170, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %194

174:                                              ; preds = %167
  %175 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %176 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %177 = load i32, i32* @AHD_TRANS_ACTIVE, align 4
  %178 = load i32, i32* @AHD_TRANS_GOAL, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @TRUE, align 4
  %181 = call i32 @ahd_set_syncrate(%struct.ahd_softc* %175, %struct.ahd_devinfo* %176, i32 0, i32 0, i32 0, i32 %179, i32 %180)
  %182 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %183 = call i32 @ahd_name(%struct.ahd_softc* %182)
  %184 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %185 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %188 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %191 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (i8*, i32, i32, i32, i32, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.3, i64 0, i64 0), i32 %183, i32 %186, i32 %189, i32 %192)
  br label %352

194:                                              ; preds = %167
  %195 = load %struct.scb*, %struct.scb** %5, align 8
  %196 = getelementptr inbounds %struct.scb, %struct.scb* %195, i32 0, i32 0
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @MSG_SIMPLE_TASK, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %312

203:                                              ; preds = %194
  %204 = load %struct.scb*, %struct.scb** %5, align 8
  %205 = getelementptr inbounds %struct.scb, %struct.scb* %204, i32 0, i32 0
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @MSG_SIMPLE_TASK, align 4
  %210 = and i32 %208, %209
  store i32 %210, i32* %11, align 4
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* @MSG_SIMPLE_TASK, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %234

214:                                              ; preds = %203
  %215 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %216 = call i32 @ahd_name(%struct.ahd_softc* %215)
  %217 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %218 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %221 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %224 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = call i32 (i8*, i32, i32, i32, i32, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i32 %216, i32 %219, i32 %222, i32 %225)
  %227 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %228 = load %struct.scb*, %struct.scb** %5, align 8
  %229 = getelementptr inbounds %struct.scb, %struct.scb* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %232 = load i32, i32* @AHD_QUEUE_NONE, align 4
  %233 = call i32 @ahd_set_tags(%struct.ahd_softc* %227, i32 %230, %struct.ahd_devinfo* %231, i32 %232)
  store i32 -36, i32* %12, align 4
  br label %259

234:                                              ; preds = %203
  %235 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %236 = call i32 @ahd_name(%struct.ahd_softc* %235)
  %237 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %238 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %241 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %244 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %11, align 4
  %247 = load i32, i32* @MSG_ORDERED_TASK, align 4
  %248 = icmp eq i32 %246, %247
  %249 = zext i1 %248 to i64
  %250 = select i1 %248, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0)
  %251 = call i32 (i8*, i32, i32, i32, i32, ...) @printk(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.5, i64 0, i64 0), i32 %236, i32 %239, i32 %242, i32 %245, i8* %250)
  %252 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %253 = load %struct.scb*, %struct.scb** %5, align 8
  %254 = getelementptr inbounds %struct.scb, %struct.scb* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %257 = load i32, i32* @AHD_QUEUE_BASIC, align 4
  %258 = call i32 @ahd_set_tags(%struct.ahd_softc* %252, i32 %255, %struct.ahd_devinfo* %256, i32 %257)
  store i32 -4, i32* %12, align 4
  br label %259

259:                                              ; preds = %234, %214
  %260 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %261 = load i32, i32* @SCB_CONTROL, align 4
  %262 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %263 = load i32, i32* @SCB_CONTROL, align 4
  %264 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %262, i32 %263)
  %265 = load i32, i32* %12, align 4
  %266 = and i32 %264, %265
  %267 = call i32 @ahd_outb(%struct.ahd_softc* %260, i32 %261, i32 %266)
  %268 = load i32, i32* %12, align 4
  %269 = load %struct.scb*, %struct.scb** %5, align 8
  %270 = getelementptr inbounds %struct.scb, %struct.scb* %269, i32 0, i32 0
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = and i32 %273, %268
  store i32 %274, i32* %272, align 4
  %275 = load %struct.scb*, %struct.scb** %5, align 8
  %276 = load i32, i32* @FALSE, align 4
  %277 = load i32, i32* @MSG_SIMPLE_TASK, align 4
  %278 = call i32 @ahd_set_transaction_tag(%struct.scb* %275, i32 %276, i32 %277)
  %279 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %280 = load i32, i32* @MSG_OUT, align 4
  %281 = load i32, i32* @MSG_IDENTIFYFLAG, align 4
  %282 = call i32 @ahd_outb(%struct.ahd_softc* %279, i32 %280, i32 %281)
  %283 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %284 = call i32 @ahd_assert_atn(%struct.ahd_softc* %283)
  %285 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %286 = load %struct.scb*, %struct.scb** %5, align 8
  %287 = getelementptr inbounds %struct.scb, %struct.scb* %286, i32 0, i32 0
  %288 = load %struct.TYPE_6__*, %struct.TYPE_6__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %292 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @BUILD_TCL(i32 %290, i32 %293)
  %295 = load %struct.scb*, %struct.scb** %5, align 8
  %296 = call i32 @SCB_GET_TAG(%struct.scb* %295)
  %297 = call i32 @ahd_busy_tcl(%struct.ahd_softc* %285, i32 %294, i32 %296)
  %298 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %299 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %300 = load %struct.scb*, %struct.scb** %5, align 8
  %301 = call i32 @SCB_GET_TARGET(%struct.ahd_softc* %299, %struct.scb* %300)
  %302 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %303 = load %struct.scb*, %struct.scb** %5, align 8
  %304 = call i32 @SCB_GET_CHANNEL(%struct.ahd_softc* %302, %struct.scb* %303)
  %305 = load %struct.scb*, %struct.scb** %5, align 8
  %306 = call i32 @SCB_GET_LUN(%struct.scb* %305)
  %307 = load i32, i32* @SCB_LIST_NULL, align 4
  %308 = load i32, i32* @ROLE_INITIATOR, align 4
  %309 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %310 = load i32, i32* @SEARCH_COMPLETE, align 4
  %311 = call i32 @ahd_search_qinfifo(%struct.ahd_softc* %298, i32 %301, i32 %304, i32 %306, i32 %307, i32 %308, i32 %309, i32 %310)
  br label %351

312:                                              ; preds = %194
  %313 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %314 = load i32, i32* @AHDMSG_1B, align 4
  %315 = load i32, i32* @MSG_IDENTIFYFLAG, align 4
  %316 = load i32, i32* @TRUE, align 4
  %317 = call i64 @ahd_sent_msg(%struct.ahd_softc* %313, i32 %314, i32 %315, i32 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %339

319:                                              ; preds = %312
  %320 = load i32, i32* @MSG_FLAG_EXPECT_PPR_BUSFREE, align 4
  %321 = load i32, i32* @MSG_FLAG_IU_REQ_CHANGED, align 4
  %322 = or i32 %320, %321
  %323 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %324 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = or i32 %325, %322
  store i32 %326, i32* %324, align 8
  %327 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %328 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %329 = call i32 @ahd_force_renegotiation(%struct.ahd_softc* %327, %struct.ahd_devinfo* %328)
  %330 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %331 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %330, i32 0, i32 1
  store i64 0, i64* %331, align 8
  %332 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %333 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %332, i32 0, i32 2
  store i64 0, i64* %333, align 8
  %334 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %335 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %336 = call i32 @ahd_build_transfer_msg(%struct.ahd_softc* %334, %struct.ahd_devinfo* %335)
  %337 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %338 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %337, i32 0, i32 1
  store i64 0, i64* %338, align 8
  store i32 1, i32* %10, align 4
  br label %350

339:                                              ; preds = %312
  %340 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %341 = call i32 @ahd_name(%struct.ahd_softc* %340)
  %342 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %343 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %346 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* %9, align 4
  %349 = call i32 (i8*, i32, i32, i32, i32, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %341, i32 %344, i32 %347, i32 %348)
  br label %350

350:                                              ; preds = %339, %319
  br label %351

351:                                              ; preds = %350, %259
  br label %352

352:                                              ; preds = %351, %174
  br label %353

353:                                              ; preds = %352, %166
  br label %354

354:                                              ; preds = %353, %109
  %355 = load i32, i32* %10, align 4
  ret i32 %355
}

declare dso_local i32 @ahd_get_scbptr(%struct.ahd_softc*) #1

declare dso_local %struct.scb* @ahd_lookup_scb(%struct.ahd_softc*, i32) #1

declare dso_local %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc*, i32, i32, i32, %struct.ahd_tmode_tstate**) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i64 @ahd_sent_msg(%struct.ahd_softc*, i32, i32, i32) #1

declare dso_local i32 @printk(i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_build_transfer_msg(%struct.ahd_softc*, %struct.ahd_devinfo*) #1

declare dso_local i32 @ahd_set_width(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i32) #1

declare dso_local i32 @ahd_set_syncrate(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ahd_set_tags(%struct.ahd_softc*, i32, %struct.ahd_devinfo*, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inb_scbram(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_set_transaction_tag(%struct.scb*, i32, i32) #1

declare dso_local i32 @ahd_assert_atn(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_busy_tcl(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @BUILD_TCL(i32, i32) #1

declare dso_local i32 @SCB_GET_TAG(%struct.scb*) #1

declare dso_local i32 @ahd_search_qinfifo(%struct.ahd_softc*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SCB_GET_TARGET(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @SCB_GET_CHANNEL(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @SCB_GET_LUN(%struct.scb*) #1

declare dso_local i32 @ahd_force_renegotiation(%struct.ahd_softc*, %struct.ahd_devinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
