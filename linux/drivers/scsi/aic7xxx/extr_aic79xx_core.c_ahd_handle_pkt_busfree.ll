; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_handle_pkt_busfree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_handle_pkt_busfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i64 }
%struct.scb = type { i64 }

@AHD_MODE_UNKNOWN_MSK = common dso_local global i32 0, align 4
@AHD_MODE_CFG_MSK = common dso_local global i32 0, align 4
@LQOSTAT1 = common dso_local global i32 0, align 4
@LQOBUSFREE = common dso_local global i64 0, align 8
@AHD_MODE_SCSI = common dso_local global i64 0, align 8
@CURRSCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"SCB not valid during LQOBUSFREE\00", align 1
@CLRLQOINT1 = common dso_local global i32 0, align 4
@CLRLQOBUSFREE = common dso_local global i64 0, align 8
@AHD_CLRLQO_AUTOCLR_BUG = common dso_local global i32 0, align 4
@SCSISEQ0 = common dso_local global i32 0, align 4
@ENSELO = common dso_local global i64 0, align 8
@CLRSINT0 = common dso_local global i32 0, align 4
@CLRSELDO = common dso_local global i64 0, align 8
@LQCTL2 = common dso_local global i32 0, align 4
@LQOTOIDLE = common dso_local global i64 0, align 8
@WAITING_TID_HEAD = common dso_local global i32 0, align 4
@WAITING_TID_TAIL = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i64 0, align 8
@SCB_NEXT2 = common dso_local global i32 0, align 4
@AHD_MAX_LQ_CRC_ERRORS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Probable outgoing LQ CRC error.  Retrying command\0A\00", align 1
@CAM_UNCOR_PARITY = common dso_local global i32 0, align 4
@PERRDIAG = common dso_local global i32 0, align 4
@PARITYERR = common dso_local global i64 0, align 8
@CLRSINT1 = common dso_local global i32 0, align 4
@CLRSCSIPERR = common dso_local global i64 0, align 8
@CLRBUSFREE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Unexpected PKT busfree condition\0A\00", align 1
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@CAM_UNEXP_BUSFREE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"%s: Unexpected PKT busfree condition\0A\00", align 1
@AHD_SHOW_MASKED_ERRORS = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahd_softc*, i64)* @ahd_handle_pkt_busfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahd_handle_pkt_busfree(%struct.ahd_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahd_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.scb*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.scb*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %16 = load i32, i32* @AHD_MODE_UNKNOWN_MSK, align 4
  %17 = load i32, i32* @AHD_MODE_CFG_MSK, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* @AHD_MODE_UNKNOWN_MSK, align 4
  %21 = load i32, i32* @AHD_MODE_CFG_MSK, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = call i32 @AHD_ASSERT_MODES(%struct.ahd_softc* %15, i32 %19, i32 %23)
  %25 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %26 = load i32, i32* @LQOSTAT1, align 4
  %27 = call i64 @ahd_inb(%struct.ahd_softc* %25, i32 %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @LQOBUSFREE, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %160

32:                                               ; preds = %2
  %33 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %34 = load i64, i64* @AHD_MODE_SCSI, align 8
  %35 = load i64, i64* @AHD_MODE_SCSI, align 8
  %36 = call i32 @ahd_set_modes(%struct.ahd_softc* %33, i64 %34, i64 %35)
  %37 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %38 = load i32, i32* @CURRSCB, align 4
  %39 = call i64 @ahd_inw(%struct.ahd_softc* %37, i32 %38)
  store i64 %39, i64* %8, align 8
  %40 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %40, i64 %41)
  store %struct.scb* %42, %struct.scb** %7, align 8
  %43 = load %struct.scb*, %struct.scb** %7, align 8
  %44 = icmp eq %struct.scb* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %32
  %48 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %49 = load i32, i32* @CLRLQOINT1, align 4
  %50 = load i64, i64* @CLRLQOBUSFREE, align 8
  %51 = call i32 @ahd_outb(%struct.ahd_softc* %48, i32 %49, i64 %50)
  %52 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %53 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @AHD_CLRLQO_AUTOCLR_BUG, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %47
  %59 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %60 = load i32, i32* @CLRLQOINT1, align 4
  %61 = call i32 @ahd_outb(%struct.ahd_softc* %59, i32 %60, i64 0)
  br label %62

62:                                               ; preds = %58, %47
  %63 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %64 = load i32, i32* @SCSISEQ0, align 4
  %65 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %66 = load i32, i32* @SCSISEQ0, align 4
  %67 = call i64 @ahd_inb(%struct.ahd_softc* %65, i32 %66)
  %68 = load i64, i64* @ENSELO, align 8
  %69 = xor i64 %68, -1
  %70 = and i64 %67, %69
  %71 = call i32 @ahd_outb(%struct.ahd_softc* %63, i32 %64, i64 %70)
  %72 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %73 = call i32 @ahd_flush_device_writes(%struct.ahd_softc* %72)
  %74 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %75 = load i32, i32* @CLRSINT0, align 4
  %76 = load i64, i64* @CLRSELDO, align 8
  %77 = call i32 @ahd_outb(%struct.ahd_softc* %74, i32 %75, i64 %76)
  %78 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %79 = load i32, i32* @LQCTL2, align 4
  %80 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %81 = load i32, i32* @LQCTL2, align 4
  %82 = call i64 @ahd_inb(%struct.ahd_softc* %80, i32 %81)
  %83 = load i64, i64* @LQOTOIDLE, align 8
  %84 = or i64 %82, %83
  %85 = call i32 @ahd_outb(%struct.ahd_softc* %78, i32 %79, i64 %84)
  %86 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %87 = load i32, i32* @WAITING_TID_HEAD, align 4
  %88 = call i64 @ahd_inw(%struct.ahd_softc* %86, i32 %87)
  store i64 %88, i64* %10, align 8
  %89 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %90 = call i64 @ahd_get_scbptr(%struct.ahd_softc* %89)
  store i64 %90, i64* %9, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* %8, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %126

94:                                               ; preds = %62
  %95 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %96 = load i32, i32* @WAITING_TID_HEAD, align 4
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @ahd_outw(%struct.ahd_softc* %95, i32 %96, i64 %97)
  %99 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %100 = load i32, i32* @WAITING_TID_TAIL, align 4
  %101 = call i64 @ahd_inw(%struct.ahd_softc* %99, i32 %100)
  store i64 %101, i64* %11, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* %10, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %94
  %106 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %107 = load i32, i32* @WAITING_TID_TAIL, align 4
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @ahd_outw(%struct.ahd_softc* %106, i32 %107, i64 %108)
  %110 = load i64, i64* @SCB_LIST_NULL, align 8
  store i64 %110, i64* %12, align 8
  br label %118

111:                                              ; preds = %94
  %112 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %113 = load i64, i64* %10, align 8
  %114 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %112, i64 %113)
  %115 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %116 = load i32, i32* @SCB_NEXT2, align 4
  %117 = call i64 @ahd_inw_scbram(%struct.ahd_softc* %115, i32 %116)
  store i64 %117, i64* %12, align 8
  br label %118

118:                                              ; preds = %111, %105
  %119 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %120 = load i64, i64* %8, align 8
  %121 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %119, i64 %120)
  %122 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %123 = load i32, i32* @SCB_NEXT2, align 4
  %124 = load i64, i64* %12, align 8
  %125 = call i32 @ahd_outw(%struct.ahd_softc* %122, i32 %123, i64 %124)
  br label %126

126:                                              ; preds = %118, %62
  %127 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %128 = load i64, i64* %9, align 8
  %129 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %127, i64 %128)
  %130 = load %struct.scb*, %struct.scb** %7, align 8
  %131 = getelementptr inbounds %struct.scb, %struct.scb* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @AHD_MAX_LQ_CRC_ERRORS, align 8
  %134 = icmp slt i64 %132, %133
  br i1 %134, label %135, label %150

135:                                              ; preds = %126
  %136 = load %struct.scb*, %struct.scb** %7, align 8
  %137 = call i64 @SCB_IS_SILENT(%struct.scb* %136)
  %138 = load i64, i64* @FALSE, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %142 = load %struct.scb*, %struct.scb** %7, align 8
  %143 = call i32 @ahd_print_path(%struct.ahd_softc* %141, %struct.scb* %142)
  %144 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %145

145:                                              ; preds = %140, %135
  %146 = load %struct.scb*, %struct.scb** %7, align 8
  %147 = getelementptr inbounds %struct.scb, %struct.scb* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %147, align 8
  br label %159

150:                                              ; preds = %126
  %151 = load %struct.scb*, %struct.scb** %7, align 8
  %152 = load i32, i32* @CAM_UNCOR_PARITY, align 4
  %153 = call i32 @ahd_set_transaction_status(%struct.scb* %151, i32 %152)
  %154 = load %struct.scb*, %struct.scb** %7, align 8
  %155 = call i32 @ahd_freeze_scb(%struct.scb* %154)
  %156 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %157 = load %struct.scb*, %struct.scb** %7, align 8
  %158 = call i32 @ahd_freeze_devq(%struct.ahd_softc* %156, %struct.scb* %157)
  br label %159

159:                                              ; preds = %150, %145
  store i32 0, i32* %3, align 4
  br label %210

160:                                              ; preds = %2
  %161 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %162 = load i32, i32* @PERRDIAG, align 4
  %163 = call i64 @ahd_inb(%struct.ahd_softc* %161, i32 %162)
  %164 = load i64, i64* @PARITYERR, align 8
  %165 = and i64 %163, %164
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %160
  %168 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %169 = load i32, i32* @CLRSINT1, align 4
  %170 = load i64, i64* @CLRSCSIPERR, align 8
  %171 = load i64, i64* @CLRBUSFREE, align 8
  %172 = or i64 %170, %171
  %173 = call i32 @ahd_outb(%struct.ahd_softc* %168, i32 %169, i64 %172)
  store i32 0, i32* %3, align 4
  br label %210

174:                                              ; preds = %160
  br label %175

175:                                              ; preds = %174
  %176 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %177 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @AHD_MODE_SCSI, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %204

181:                                              ; preds = %175
  %182 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %183 = call i64 @ahd_get_scbptr(%struct.ahd_softc* %182)
  store i64 %183, i64* %13, align 8
  %184 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %185 = load i64, i64* %13, align 8
  %186 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %184, i64 %185)
  store %struct.scb* %186, %struct.scb** %14, align 8
  %187 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %188 = load %struct.scb*, %struct.scb** %14, align 8
  %189 = call i32 @ahd_print_path(%struct.ahd_softc* %187, %struct.scb* %188)
  %190 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %191 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %192 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %191)
  %193 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %194 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %195 = load %struct.scb*, %struct.scb** %14, align 8
  %196 = call i32 @SCB_GET_TARGET(%struct.ahd_softc* %194, %struct.scb* %195)
  %197 = load %struct.scb*, %struct.scb** %14, align 8
  %198 = call i32 @SCB_GET_LUN(%struct.scb* %197)
  %199 = load %struct.scb*, %struct.scb** %14, align 8
  %200 = call i32 @SCB_GET_TAG(%struct.scb* %199)
  %201 = load i32, i32* @ROLE_INITIATOR, align 4
  %202 = load i32, i32* @CAM_UNEXP_BUSFREE, align 4
  %203 = call i32 @ahd_abort_scbs(%struct.ahd_softc* %193, i32 %196, i8 signext 65, i32 %198, i32 %200, i32 %201, i32 %202)
  store i32 1, i32* %3, align 4
  br label %210

204:                                              ; preds = %175
  %205 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %206 = call i32 @ahd_name(%struct.ahd_softc* %205)
  %207 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %206)
  %208 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %209 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %208)
  store i32 1, i32* %3, align 4
  br label %210

210:                                              ; preds = %204, %181, %167, %159
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @AHD_ASSERT_MODES(%struct.ahd_softc*, i32, i32) #1

declare dso_local i64 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i64, i64) #1

declare dso_local i64 @ahd_inw(%struct.ahd_softc*, i32) #1

declare dso_local %struct.scb* @ahd_lookup_scb(%struct.ahd_softc*, i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i64) #1

declare dso_local i32 @ahd_flush_device_writes(%struct.ahd_softc*) #1

declare dso_local i64 @ahd_get_scbptr(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_outw(%struct.ahd_softc*, i32, i64) #1

declare dso_local i32 @ahd_set_scbptr(%struct.ahd_softc*, i64) #1

declare dso_local i64 @ahd_inw_scbram(%struct.ahd_softc*, i32) #1

declare dso_local i64 @SCB_IS_SILENT(%struct.scb*) #1

declare dso_local i32 @ahd_print_path(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @ahd_set_transaction_status(%struct.scb*, i32) #1

declare dso_local i32 @ahd_freeze_scb(%struct.scb*) #1

declare dso_local i32 @ahd_freeze_devq(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_dump_card_state(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_abort_scbs(%struct.ahd_softc*, i32, i8 signext, i32, i32, i32, i32) #1

declare dso_local i32 @SCB_GET_TARGET(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @SCB_GET_LUN(%struct.scb*) #1

declare dso_local i32 @SCB_GET_TAG(%struct.scb*) #1

declare dso_local i32 @ahd_name(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
