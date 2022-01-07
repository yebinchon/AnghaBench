; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_abort_scbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_abort_scbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.scb = type { i32 }

@SCBPTR = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i64 0, align 8
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@SEARCH_COMPLETE = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@AHC_SCB_BTT = common dso_local global i32 0, align 4
@AHC_NUM_LUNS = common dso_local global i32 0, align 4
@ROLE_TARGET = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SCB_TAG = common dso_local global i32 0, align 4
@pending_links = common dso_local global i32 0, align 4
@CAM_REQ_INPROG = common dso_local global i64 0, align 8
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@SCB_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Inactive SCB on pending list\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahc_softc*, i32, i8, i32, i64, i32, i32)* @ahc_abort_scbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_abort_scbs(%struct.ahc_softc* %0, i32 %1, i8 signext %2, i32 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ahc_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.scb*, align 8
  %16 = alloca %struct.scb*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8 %2, i8* %10, align 1
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %28 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %29 = call i32 @ahc_freeze_untagged_queues(%struct.ahc_softc* %28)
  %30 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %31 = load i32, i32* @SCBPTR, align 4
  %32 = call i64 @ahc_inb(%struct.ahc_softc* %30, i32 %31)
  store i64 %32, i64* %17, align 8
  %33 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i8, i8* %10, align 1
  %36 = load i32, i32* %11, align 4
  %37 = load i64, i64* @SCB_LIST_NULL, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %40 = load i32, i32* @SEARCH_COMPLETE, align 4
  %41 = call i32 @ahc_search_qinfifo(%struct.ahc_softc* %33, i32 %34, i8 signext %35, i32 %36, i64 %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %23, align 4
  store i32 0, i32* %18, align 4
  store i32 16, i32* %20, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %7
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %18, align 4
  %47 = load i8, i8* %10, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 66
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %18, align 4
  %52 = add nsw i32 %51, 8
  store i32 %52, i32* %18, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* %18, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %20, align 4
  br label %56

56:                                               ; preds = %53, %7
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  store i32 0, i32* %21, align 4
  store i32 1, i32* %22, align 4
  %61 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %62 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @AHC_SCB_BTT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @AHC_NUM_LUNS, align 4
  store i32 %68, i32* %22, align 4
  br label %69

69:                                               ; preds = %67, %60
  br label %74

70:                                               ; preds = %56
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %21, align 4
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %22, align 4
  br label %74

74:                                               ; preds = %70, %69
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @ROLE_TARGET, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %137

78:                                               ; preds = %74
  br label %79

79:                                               ; preds = %124, %78
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* %20, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %127

83:                                               ; preds = %79
  %84 = load i32, i32* %21, align 4
  store i32 %84, i32* %19, align 4
  br label %85

85:                                               ; preds = %120, %83
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %22, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %123

89:                                               ; preds = %85
  %90 = load i32, i32* %18, align 4
  %91 = shl i32 %90, 4
  %92 = load i32, i32* %19, align 4
  %93 = call i64 @BUILD_TCL(i32 %91, i32 %92)
  store i64 %93, i64* %25, align 8
  %94 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %95 = load i64, i64* %25, align 8
  %96 = call i64 @ahc_index_busy_tcl(%struct.ahc_softc* %94, i64 %95)
  store i64 %96, i64* %24, align 8
  %97 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %98 = load i64, i64* %24, align 8
  %99 = call %struct.scb* @ahc_lookup_scb(%struct.ahc_softc* %97, i64 %98)
  store %struct.scb* %99, %struct.scb** %15, align 8
  %100 = load %struct.scb*, %struct.scb** %15, align 8
  %101 = icmp eq %struct.scb* %100, null
  br i1 %101, label %112, label %102

102:                                              ; preds = %89
  %103 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %104 = load %struct.scb*, %struct.scb** %15, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i8, i8* %10, align 1
  %107 = load i32, i32* %11, align 4
  %108 = load i64, i64* %12, align 8
  %109 = load i32, i32* %13, align 4
  %110 = call i64 @ahc_match_scb(%struct.ahc_softc* %103, %struct.scb* %104, i32 %105, i8 signext %106, i32 %107, i64 %108, i32 %109)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %102, %89
  br label %120

113:                                              ; preds = %102
  %114 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %115 = load i32, i32* %18, align 4
  %116 = shl i32 %115, 4
  %117 = load i32, i32* %19, align 4
  %118 = call i64 @BUILD_TCL(i32 %116, i32 %117)
  %119 = call i32 @ahc_unbusy_tcl(%struct.ahc_softc* %114, i64 %118)
  br label %120

120:                                              ; preds = %113, %112
  %121 = load i32, i32* %19, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %19, align 4
  br label %85

123:                                              ; preds = %85
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %18, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %18, align 4
  br label %79

127:                                              ; preds = %79
  %128 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %129 = load i32, i32* %9, align 4
  %130 = load i8, i8* %10, align 1
  %131 = load i32, i32* %11, align 4
  %132 = load i64, i64* %12, align 8
  %133 = load i32, i32* @FALSE, align 4
  %134 = load i32, i32* @TRUE, align 4
  %135 = load i32, i32* @FALSE, align 4
  %136 = call i32 @ahc_search_disc_list(%struct.ahc_softc* %128, i32 %129, i8 signext %130, i32 %131, i64 %132, i32 %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %127, %74
  store i32 0, i32* %18, align 4
  br label %138

138:                                              ; preds = %181, %137
  %139 = load i32, i32* %18, align 4
  %140 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %141 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %140, i32 0, i32 2
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp slt i32 %139, %144
  br i1 %145, label %146, label %184

146:                                              ; preds = %138
  %147 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %148 = load i32, i32* @SCBPTR, align 4
  %149 = load i32, i32* %18, align 4
  %150 = sext i32 %149 to i64
  %151 = call i32 @ahc_outb(%struct.ahc_softc* %147, i32 %148, i64 %150)
  %152 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %153 = load i32, i32* @SCB_TAG, align 4
  %154 = call i64 @ahc_inb(%struct.ahc_softc* %152, i32 %153)
  store i64 %154, i64* %26, align 8
  %155 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %156 = load i64, i64* %26, align 8
  %157 = call %struct.scb* @ahc_lookup_scb(%struct.ahc_softc* %155, i64 %156)
  store %struct.scb* %157, %struct.scb** %15, align 8
  %158 = load %struct.scb*, %struct.scb** %15, align 8
  %159 = icmp eq %struct.scb* %158, null
  br i1 %159, label %160, label %164

160:                                              ; preds = %146
  %161 = load i64, i64* %26, align 8
  %162 = load i64, i64* @SCB_LIST_NULL, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %177, label %164

164:                                              ; preds = %160, %146
  %165 = load %struct.scb*, %struct.scb** %15, align 8
  %166 = icmp ne %struct.scb* %165, null
  br i1 %166, label %167, label %180

167:                                              ; preds = %164
  %168 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %169 = load %struct.scb*, %struct.scb** %15, align 8
  %170 = load i32, i32* %9, align 4
  %171 = load i8, i8* %10, align 1
  %172 = load i32, i32* %11, align 4
  %173 = load i64, i64* %12, align 8
  %174 = load i32, i32* %13, align 4
  %175 = call i64 @ahc_match_scb(%struct.ahc_softc* %168, %struct.scb* %169, i32 %170, i8 signext %171, i32 %172, i64 %173, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %167, %160
  %178 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %179 = call i32 @ahc_add_curscb_to_free_list(%struct.ahc_softc* %178)
  br label %180

180:                                              ; preds = %177, %167, %164
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %18, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %18, align 4
  br label %138

184:                                              ; preds = %138
  %185 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %186 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %185, i32 0, i32 1
  %187 = call %struct.scb* @LIST_FIRST(i32* %186)
  store %struct.scb* %187, %struct.scb** %16, align 8
  br label %188

188:                                              ; preds = %238, %184
  %189 = load %struct.scb*, %struct.scb** %16, align 8
  %190 = icmp ne %struct.scb* %189, null
  br i1 %190, label %191, label %239

191:                                              ; preds = %188
  %192 = load %struct.scb*, %struct.scb** %16, align 8
  store %struct.scb* %192, %struct.scb** %15, align 8
  %193 = load %struct.scb*, %struct.scb** %15, align 8
  %194 = load i32, i32* @pending_links, align 4
  %195 = call %struct.scb* @LIST_NEXT(%struct.scb* %193, i32 %194)
  store %struct.scb* %195, %struct.scb** %16, align 8
  %196 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %197 = load %struct.scb*, %struct.scb** %15, align 8
  %198 = load i32, i32* %9, align 4
  %199 = load i8, i8* %10, align 1
  %200 = load i32, i32* %11, align 4
  %201 = load i64, i64* %12, align 8
  %202 = load i32, i32* %13, align 4
  %203 = call i64 @ahc_match_scb(%struct.ahc_softc* %196, %struct.scb* %197, i32 %198, i8 signext %199, i32 %200, i64 %201, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %238

205:                                              ; preds = %191
  %206 = load %struct.scb*, %struct.scb** %15, align 8
  %207 = call i64 @ahc_get_transaction_status(%struct.scb* %206)
  store i64 %207, i64* %27, align 8
  %208 = load i64, i64* %27, align 8
  %209 = load i64, i64* @CAM_REQ_INPROG, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %205
  %212 = load %struct.scb*, %struct.scb** %15, align 8
  %213 = load i32, i32* %14, align 4
  %214 = call i32 @ahc_set_transaction_status(%struct.scb* %212, i32 %213)
  br label %215

215:                                              ; preds = %211, %205
  %216 = load %struct.scb*, %struct.scb** %15, align 8
  %217 = call i64 @ahc_get_transaction_status(%struct.scb* %216)
  %218 = load i64, i64* @CAM_REQ_CMP, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %215
  %221 = load %struct.scb*, %struct.scb** %15, align 8
  %222 = call i32 @ahc_freeze_scb(%struct.scb* %221)
  br label %223

223:                                              ; preds = %220, %215
  %224 = load %struct.scb*, %struct.scb** %15, align 8
  %225 = getelementptr inbounds %struct.scb, %struct.scb* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @SCB_ACTIVE, align 4
  %228 = and i32 %226, %227
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %223
  %231 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %232

232:                                              ; preds = %230, %223
  %233 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %234 = load %struct.scb*, %struct.scb** %15, align 8
  %235 = call i32 @ahc_done(%struct.ahc_softc* %233, %struct.scb* %234)
  %236 = load i32, i32* %23, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %23, align 4
  br label %238

238:                                              ; preds = %232, %191
  br label %188

239:                                              ; preds = %188
  %240 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %241 = load i32, i32* @SCBPTR, align 4
  %242 = load i64, i64* %17, align 8
  %243 = call i32 @ahc_outb(%struct.ahc_softc* %240, i32 %241, i64 %242)
  %244 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %245 = load i32, i32* %9, align 4
  %246 = load i8, i8* %10, align 1
  %247 = load i32, i32* %11, align 4
  %248 = load i64, i64* %12, align 8
  %249 = load i32, i32* %13, align 4
  %250 = load i32, i32* %14, align 4
  %251 = call i32 @ahc_platform_abort_scbs(%struct.ahc_softc* %244, i32 %245, i8 signext %246, i32 %247, i64 %248, i32 %249, i32 %250)
  %252 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %253 = call i32 @ahc_release_untagged_queues(%struct.ahc_softc* %252)
  %254 = load i32, i32* %23, align 4
  ret i32 %254
}

declare dso_local i32 @ahc_freeze_untagged_queues(%struct.ahc_softc*) #1

declare dso_local i64 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_search_qinfifo(%struct.ahc_softc*, i32, i8 signext, i32, i64, i32, i32, i32) #1

declare dso_local i64 @BUILD_TCL(i32, i32) #1

declare dso_local i64 @ahc_index_busy_tcl(%struct.ahc_softc*, i64) #1

declare dso_local %struct.scb* @ahc_lookup_scb(%struct.ahc_softc*, i64) #1

declare dso_local i64 @ahc_match_scb(%struct.ahc_softc*, %struct.scb*, i32, i8 signext, i32, i64, i32) #1

declare dso_local i32 @ahc_unbusy_tcl(%struct.ahc_softc*, i64) #1

declare dso_local i32 @ahc_search_disc_list(%struct.ahc_softc*, i32, i8 signext, i32, i64, i32, i32, i32) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i64) #1

declare dso_local i32 @ahc_add_curscb_to_free_list(%struct.ahc_softc*) #1

declare dso_local %struct.scb* @LIST_FIRST(i32*) #1

declare dso_local %struct.scb* @LIST_NEXT(%struct.scb*, i32) #1

declare dso_local i64 @ahc_get_transaction_status(%struct.scb*) #1

declare dso_local i32 @ahc_set_transaction_status(%struct.scb*, i32) #1

declare dso_local i32 @ahc_freeze_scb(%struct.scb*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @ahc_done(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @ahc_platform_abort_scbs(%struct.ahc_softc*, i32, i8 signext, i32, i64, i32, i32) #1

declare dso_local i32 @ahc_release_untagged_queues(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
