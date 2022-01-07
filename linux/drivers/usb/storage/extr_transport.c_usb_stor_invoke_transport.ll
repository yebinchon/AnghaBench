; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_transport.c_usb_stor_invoke_transport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_transport.c_usb_stor_invoke_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i64, i32*, i32, i32*, i64 }
%struct.us_data = type { i32 (%struct.scsi_cmnd.0*, %struct.us_data*)*, i64, i32, i64, i32, i32 (%struct.us_data*)*, i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd.0 = type opaque
%struct.scsi_eh_save = type { i32 }
%struct.scsi_sense_hdr = type { i32, i64, i64, i32 }

@US_FLIDX_TIMED_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"-- command was aborted\0A\00", align 1
@DID_ABORT = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"-- transport indicates error, resetting\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_NO_SENSE = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i8* null, align 8
@SAM_STAT_GOOD = common dso_local global i8* null, align 8
@USB_PR_CB = common dso_local global i64 0, align 8
@USB_PR_DPCM_USB = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"-- CB transport device requiring auto-sense\0A\00", align 1
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"-- transport indicates command failure\0A\00", align 1
@ATA_16 = common dso_local global i32 0, align 4
@ATA_12 = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@US_FL_SANE_SENSE = common dso_local global i32 0, align 4
@US_FL_BAD_SENSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"-- SAT supported, increasing auto-sense\0A\00", align 1
@REQUEST_SENSE = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i32 0, align 4
@MODE_SENSE = common dso_local global i32 0, align 4
@LOG_SENSE = common dso_local global i32 0, align 4
@MODE_SENSE_10 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"-- unexpectedly short transfer\0A\00", align 1
@US_SENSE_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Issuing auto-REQUEST_SENSE\0A\00", align 1
@USB_SC_RBC = common dso_local global i64 0, align 8
@USB_SC_SCSI = common dso_local global i64 0, align 8
@USB_SC_CYP_ATACB = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"-- auto-sense aborted\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"-- auto-sense failure, retry small sense\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"-- auto-sense failure\0A\00", align 1
@US_FL_SCM_MULT_TARG = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"-- SANE_SENSE support enabled\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"-- Sense data truncated to %i from %i\0A\00", align 1
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"-- Result from auto-sense is %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"-- code: 0x%x, key: 0x%x, ASC: 0x%x, ASCQ: 0x%x\0A\00", align 1
@HARDWARE_ERROR = common dso_local global i8* null, align 8
@US_FL_INITIAL_READ10 = common dso_local global i32 0, align 4
@READ_10 = common dso_local global i32 0, align 4
@US_FLIDX_READ10_WORKED = common dso_local global i32 0, align 4
@US_FLIDX_REDO_READ10 = common dso_local global i32 0, align 4
@DID_IMM_RETRY = common dso_local global i32 0, align 4
@US_FLIDX_RESETTING = common dso_local global i32 0, align 4
@US_FLIDX_ABORTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_stor_invoke_transport(%struct.scsi_cmnd* %0, %struct.us_data* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_eh_save, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scsi_sense_hdr, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store %struct.us_data* %1, %struct.us_data** %4, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %14 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %13, i32 0)
  %15 = load %struct.us_data*, %struct.us_data** %4, align 8
  %16 = getelementptr inbounds %struct.us_data, %struct.us_data* %15, i32 0, i32 0
  %17 = load i32 (%struct.scsi_cmnd.0*, %struct.us_data*)*, i32 (%struct.scsi_cmnd.0*, %struct.us_data*)** %16, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %19 = bitcast %struct.scsi_cmnd* %18 to %struct.scsi_cmnd.0*
  %20 = load %struct.us_data*, %struct.us_data** %4, align 8
  %21 = call i32 %17(%struct.scsi_cmnd.0* %19, %struct.us_data* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @US_FLIDX_TIMED_OUT, align 4
  %23 = load %struct.us_data*, %struct.us_data** %4, align 8
  %24 = getelementptr inbounds %struct.us_data, %struct.us_data* %23, i32 0, i32 4
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.us_data*, %struct.us_data** %4, align 8
  %29 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @DID_ABORT, align 4
  %31 = shl i32 %30, 16
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %589

34:                                               ; preds = %2
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load %struct.us_data*, %struct.us_data** %4, align 8
  %40 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @DID_ERROR, align 4
  %42 = shl i32 %41, 16
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %44 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %589

45:                                               ; preds = %34
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @USB_STOR_TRANSPORT_NO_SENSE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i8*, i8** @SAM_STAT_CHECK_CONDITION, align 8
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %53 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.us_data*, %struct.us_data** %4, align 8
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %56 = call i32 @last_sector_hacks(%struct.us_data* %54, %struct.scsi_cmnd* %55)
  br label %636

57:                                               ; preds = %45
  %58 = load i8*, i8** @SAM_STAT_GOOD, align 8
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  store i32 0, i32* %5, align 4
  %62 = load %struct.us_data*, %struct.us_data** %4, align 8
  %63 = getelementptr inbounds %struct.us_data, %struct.us_data* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @USB_PR_CB, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %57
  %68 = load %struct.us_data*, %struct.us_data** %4, align 8
  %69 = getelementptr inbounds %struct.us_data, %struct.us_data* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @USB_PR_DPCM_USB, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %67, %57
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %75 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load %struct.us_data*, %struct.us_data** %4, align 8
  %81 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %80, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %82

82:                                               ; preds = %79, %73, %67
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load %struct.us_data*, %struct.us_data** %4, align 8
  %88 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %87, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %89

89:                                               ; preds = %86, %82
  %90 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %91 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ATA_16, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %105, label %97

97:                                               ; preds = %89
  %98 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %99 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @ATA_12, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %132

105:                                              ; preds = %97, %89
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %132

109:                                              ; preds = %105
  %110 = load %struct.us_data*, %struct.us_data** %4, align 8
  %111 = getelementptr inbounds %struct.us_data, %struct.us_data* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @US_FL_SANE_SENSE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %132, label %116

116:                                              ; preds = %109
  %117 = load %struct.us_data*, %struct.us_data** %4, align 8
  %118 = getelementptr inbounds %struct.us_data, %struct.us_data* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @US_FL_BAD_SENSE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %132, label %123

123:                                              ; preds = %116
  %124 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %125 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 32
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  br label %132

132:                                              ; preds = %123, %116, %109, %105, %97
  %133 = phi i1 [ false, %116 ], [ false, %109 ], [ false, %105 ], [ false, %97 ], [ %131, %123 ]
  %134 = zext i1 %133 to i32
  %135 = call i64 @unlikely(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %132
  %138 = load %struct.us_data*, %struct.us_data** %4, align 8
  %139 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %138, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %140 = load i32, i32* @US_FL_SANE_SENSE, align 4
  %141 = load %struct.us_data*, %struct.us_data** %4, align 8
  %142 = getelementptr inbounds %struct.us_data, %struct.us_data* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %137, %132
  %146 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %147 = call i64 @scsi_get_resid(%struct.scsi_cmnd* %146)
  %148 = icmp sgt i64 %147, 0
  br i1 %148, label %149, label %192

149:                                              ; preds = %145
  %150 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %151 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @REQUEST_SENSE, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %192, label %157

157:                                              ; preds = %149
  %158 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %159 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @INQUIRY, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %192, label %165

165:                                              ; preds = %157
  %166 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %167 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @MODE_SENSE, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %192, label %173

173:                                              ; preds = %165
  %174 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %175 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @LOG_SENSE, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %192, label %181

181:                                              ; preds = %173
  %182 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %183 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @MODE_SENSE_10, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %192, label %189

189:                                              ; preds = %181
  %190 = load %struct.us_data*, %struct.us_data** %4, align 8
  %191 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %190, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %192

192:                                              ; preds = %189, %181, %173, %165, %157, %149, %145
  %193 = load i32, i32* %5, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %486

195:                                              ; preds = %192
  %196 = load i32, i32* @US_SENSE_SIZE, align 4
  store i32 %196, i32* %9, align 4
  %197 = load %struct.us_data*, %struct.us_data** %4, align 8
  %198 = getelementptr inbounds %struct.us_data, %struct.us_data* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @US_FL_SANE_SENSE, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %195
  store i32 -1, i32* %9, align 4
  br label %204

204:                                              ; preds = %203, %195
  br label %205

205:                                              ; preds = %284, %204
  %206 = load %struct.us_data*, %struct.us_data** %4, align 8
  %207 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %206, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %208 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %209 = load i32, i32* %9, align 4
  %210 = call i32 @scsi_eh_prep_cmnd(%struct.scsi_cmnd* %208, %struct.scsi_eh_save* %8, i32* null, i32 0, i32 %209)
  %211 = load %struct.us_data*, %struct.us_data** %4, align 8
  %212 = getelementptr inbounds %struct.us_data, %struct.us_data* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @USB_SC_RBC, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %228, label %216

216:                                              ; preds = %205
  %217 = load %struct.us_data*, %struct.us_data** %4, align 8
  %218 = getelementptr inbounds %struct.us_data, %struct.us_data* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @USB_SC_SCSI, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %228, label %222

222:                                              ; preds = %216
  %223 = load %struct.us_data*, %struct.us_data** %4, align 8
  %224 = getelementptr inbounds %struct.us_data, %struct.us_data* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @USB_SC_CYP_ATACB, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %231

228:                                              ; preds = %222, %216, %205
  %229 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %230 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %229, i32 0, i32 3
  store i32 6, i32* %230, align 8
  br label %234

231:                                              ; preds = %222
  %232 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %233 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %232, i32 0, i32 3
  store i32 12, i32* %233, align 8
  br label %234

234:                                              ; preds = %231, %228
  %235 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %236 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %235, i32 0)
  %237 = load %struct.us_data*, %struct.us_data** %4, align 8
  %238 = getelementptr inbounds %struct.us_data, %struct.us_data* %237, i32 0, i32 0
  %239 = load i32 (%struct.scsi_cmnd.0*, %struct.us_data*)*, i32 (%struct.scsi_cmnd.0*, %struct.us_data*)** %238, align 8
  %240 = load %struct.us_data*, %struct.us_data** %4, align 8
  %241 = getelementptr inbounds %struct.us_data, %struct.us_data* %240, i32 0, i32 7
  %242 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %241, align 8
  %243 = bitcast %struct.scsi_cmnd* %242 to %struct.scsi_cmnd.0*
  %244 = load %struct.us_data*, %struct.us_data** %4, align 8
  %245 = call i32 %239(%struct.scsi_cmnd.0* %243, %struct.us_data* %244)
  store i32 %245, i32* %7, align 4
  %246 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %247 = call i32 @scsi_eh_restore_cmnd(%struct.scsi_cmnd* %246, %struct.scsi_eh_save* %8)
  %248 = load i32, i32* @US_FLIDX_TIMED_OUT, align 4
  %249 = load %struct.us_data*, %struct.us_data** %4, align 8
  %250 = getelementptr inbounds %struct.us_data, %struct.us_data* %249, i32 0, i32 4
  %251 = call i64 @test_bit(i32 %248, i32* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %276

253:                                              ; preds = %234
  %254 = load %struct.us_data*, %struct.us_data** %4, align 8
  %255 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %254, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %256 = load i32, i32* @DID_ABORT, align 4
  %257 = shl i32 %256, 16
  %258 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %259 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %258, i32 0, i32 0
  store i32 %257, i32* %259, align 8
  %260 = load i32, i32* %9, align 4
  %261 = load i32, i32* @US_SENSE_SIZE, align 4
  %262 = icmp ne i32 %260, %261
  br i1 %262, label %263, label %275

263:                                              ; preds = %253
  %264 = load i32, i32* @US_FL_SANE_SENSE, align 4
  %265 = xor i32 %264, -1
  %266 = load %struct.us_data*, %struct.us_data** %4, align 8
  %267 = getelementptr inbounds %struct.us_data, %struct.us_data* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = and i32 %268, %265
  store i32 %269, i32* %267, align 8
  %270 = load i32, i32* @US_FL_BAD_SENSE, align 4
  %271 = load %struct.us_data*, %struct.us_data** %4, align 8
  %272 = getelementptr inbounds %struct.us_data, %struct.us_data* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = or i32 %273, %270
  store i32 %274, i32* %272, align 8
  br label %275

275:                                              ; preds = %263, %253
  br label %589

276:                                              ; preds = %234
  %277 = load i32, i32* %7, align 4
  %278 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %299

280:                                              ; preds = %276
  %281 = load i32, i32* %9, align 4
  %282 = load i32, i32* @US_SENSE_SIZE, align 4
  %283 = icmp ne i32 %281, %282
  br i1 %283, label %284, label %299

284:                                              ; preds = %280
  %285 = load %struct.us_data*, %struct.us_data** %4, align 8
  %286 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %285, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %287 = load i32, i32* @US_SENSE_SIZE, align 4
  store i32 %287, i32* %9, align 4
  %288 = load i32, i32* @US_FL_SANE_SENSE, align 4
  %289 = xor i32 %288, -1
  %290 = load %struct.us_data*, %struct.us_data** %4, align 8
  %291 = getelementptr inbounds %struct.us_data, %struct.us_data* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = and i32 %292, %289
  store i32 %293, i32* %291, align 8
  %294 = load i32, i32* @US_FL_BAD_SENSE, align 4
  %295 = load %struct.us_data*, %struct.us_data** %4, align 8
  %296 = getelementptr inbounds %struct.us_data, %struct.us_data* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = or i32 %297, %294
  store i32 %298, i32* %296, align 8
  br label %205

299:                                              ; preds = %280, %276
  %300 = load i32, i32* %7, align 4
  %301 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %302 = icmp ne i32 %300, %301
  br i1 %302, label %303, label %318

303:                                              ; preds = %299
  %304 = load %struct.us_data*, %struct.us_data** %4, align 8
  %305 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %304, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %306 = load i32, i32* @DID_ERROR, align 4
  %307 = shl i32 %306, 16
  %308 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %309 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %308, i32 0, i32 0
  store i32 %307, i32* %309, align 8
  %310 = load %struct.us_data*, %struct.us_data** %4, align 8
  %311 = getelementptr inbounds %struct.us_data, %struct.us_data* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @US_FL_SCM_MULT_TARG, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %317, label %316

316:                                              ; preds = %303
  br label %589

317:                                              ; preds = %303
  br label %636

318:                                              ; preds = %299
  %319 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %320 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %319, i32 0, i32 4
  %321 = load i32*, i32** %320, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 7
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* @US_SENSE_SIZE, align 4
  %325 = sub nsw i32 %324, 8
  %326 = icmp sgt i32 %323, %325
  br i1 %326, label %327, label %372

327:                                              ; preds = %318
  %328 = load %struct.us_data*, %struct.us_data** %4, align 8
  %329 = getelementptr inbounds %struct.us_data, %struct.us_data* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @US_FL_SANE_SENSE, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %372, label %334

334:                                              ; preds = %327
  %335 = load %struct.us_data*, %struct.us_data** %4, align 8
  %336 = getelementptr inbounds %struct.us_data, %struct.us_data* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @US_FL_BAD_SENSE, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %372, label %341

341:                                              ; preds = %334
  %342 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %343 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %342, i32 0, i32 4
  %344 = load i32*, i32** %343, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 0
  %346 = load i32, i32* %345, align 4
  %347 = and i32 %346, 124
  %348 = icmp eq i32 %347, 112
  br i1 %348, label %349, label %372

349:                                              ; preds = %341
  %350 = load %struct.us_data*, %struct.us_data** %4, align 8
  %351 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %350, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %352 = load i32, i32* @US_FL_SANE_SENSE, align 4
  %353 = load %struct.us_data*, %struct.us_data** %4, align 8
  %354 = getelementptr inbounds %struct.us_data, %struct.us_data* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = or i32 %355, %352
  store i32 %356, i32* %354, align 8
  %357 = load %struct.us_data*, %struct.us_data** %4, align 8
  %358 = load i32, i32* @US_SENSE_SIZE, align 4
  %359 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %360 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %359, i32 0, i32 4
  %361 = load i32*, i32** %360, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 7
  %363 = load i32, i32* %362, align 4
  %364 = add nsw i32 %363, 8
  %365 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %357, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i32 %358, i32 %364)
  %366 = load i32, i32* @US_SENSE_SIZE, align 4
  %367 = sub nsw i32 %366, 8
  %368 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %369 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %368, i32 0, i32 4
  %370 = load i32*, i32** %369, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 7
  store i32 %367, i32* %371, align 4
  br label %372

372:                                              ; preds = %349, %341, %334, %327, %318
  %373 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %374 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %373, i32 0, i32 4
  %375 = load i32*, i32** %374, align 8
  %376 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %377 = call i32 @scsi_normalize_sense(i32* %375, i32 %376, %struct.scsi_sense_hdr* %10)
  %378 = load %struct.us_data*, %struct.us_data** %4, align 8
  %379 = load i32, i32* %7, align 4
  %380 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %378, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %379)
  %381 = load %struct.us_data*, %struct.us_data** %4, align 8
  %382 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 3
  %385 = load i32, i32* %384, align 8
  %386 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 1
  %387 = load i64, i64* %386, align 8
  %388 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 2
  %389 = load i64, i64* %388, align 8
  %390 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %381, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0), i32 %383, i32 %385, i64 %387, i64 %389)
  %391 = load i8*, i8** @SAM_STAT_CHECK_CONDITION, align 8
  %392 = ptrtoint i8* %391 to i32
  %393 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %394 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %393, i32 0, i32 0
  store i32 %392, i32* %394, align 8
  %395 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %396 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %395, i32 0, i32 4
  %397 = load i32*, i32** %396, align 8
  %398 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %399 = call i32* @scsi_sense_desc_find(i32* %397, i32 %398, i32 4)
  store i32* %399, i32** %11, align 8
  %400 = load i32*, i32** %11, align 8
  %401 = icmp ne i32* %400, null
  br i1 %401, label %402, label %406

402:                                              ; preds = %372
  %403 = load i32*, i32** %11, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 3
  %405 = load i32, i32* %404, align 4
  br label %412

406:                                              ; preds = %372
  %407 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %408 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %407, i32 0, i32 4
  %409 = load i32*, i32** %408, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 2
  %411 = load i32, i32* %410, align 4
  br label %412

412:                                              ; preds = %406, %402
  %413 = phi i32 [ %405, %402 ], [ %411, %406 ]
  %414 = and i32 %413, 160
  store i32 %414, i32* %12, align 4
  %415 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 3
  %416 = load i32, i32* %415, align 8
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %485

418:                                              ; preds = %412
  %419 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 1
  %420 = load i64, i64* %419, align 8
  %421 = icmp eq i64 %420, 0
  br i1 %421, label %422, label %485

422:                                              ; preds = %418
  %423 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 2
  %424 = load i64, i64* %423, align 8
  %425 = icmp eq i64 %424, 0
  br i1 %425, label %426, label %485

426:                                              ; preds = %422
  %427 = load i32, i32* %12, align 4
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %485

429:                                              ; preds = %426
  %430 = load i32, i32* %6, align 4
  %431 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %432 = icmp eq i32 %430, %431
  br i1 %432, label %433, label %442

433:                                              ; preds = %429
  %434 = load i8*, i8** @SAM_STAT_GOOD, align 8
  %435 = ptrtoint i8* %434 to i32
  %436 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %437 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %436, i32 0, i32 0
  store i32 %435, i32* %437, align 8
  %438 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %439 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %438, i32 0, i32 4
  %440 = load i32*, i32** %439, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 0
  store i32 0, i32* %441, align 4
  br label %484

442:                                              ; preds = %429
  %443 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %444 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %443, i32 0, i32 2
  %445 = load i32*, i32** %444, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 0
  %447 = load i32, i32* %446, align 4
  %448 = load i32, i32* @ATA_16, align 4
  %449 = icmp eq i32 %447, %448
  br i1 %449, label %458, label %450

450:                                              ; preds = %442
  %451 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %452 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %451, i32 0, i32 2
  %453 = load i32*, i32** %452, align 8
  %454 = getelementptr inbounds i32, i32* %453, i64 0
  %455 = load i32, i32* %454, align 4
  %456 = load i32, i32* @ATA_12, align 4
  %457 = icmp eq i32 %455, %456
  br i1 %457, label %458, label %459

458:                                              ; preds = %450, %442
  br label %483

459:                                              ; preds = %450
  %460 = load i32, i32* @DID_ERROR, align 4
  %461 = shl i32 %460, 16
  %462 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %463 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %462, i32 0, i32 0
  store i32 %461, i32* %463, align 8
  %464 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = and i32 %465, 114
  %467 = icmp eq i32 %466, 114
  br i1 %467, label %468, label %475

468:                                              ; preds = %459
  %469 = load i8*, i8** @HARDWARE_ERROR, align 8
  %470 = ptrtoint i8* %469 to i32
  %471 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %472 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %471, i32 0, i32 4
  %473 = load i32*, i32** %472, align 8
  %474 = getelementptr inbounds i32, i32* %473, i64 1
  store i32 %470, i32* %474, align 4
  br label %482

475:                                              ; preds = %459
  %476 = load i8*, i8** @HARDWARE_ERROR, align 8
  %477 = ptrtoint i8* %476 to i32
  %478 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %479 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %478, i32 0, i32 4
  %480 = load i32*, i32** %479, align 8
  %481 = getelementptr inbounds i32, i32* %480, i64 2
  store i32 %477, i32* %481, align 4
  br label %482

482:                                              ; preds = %475, %468
  br label %483

483:                                              ; preds = %482, %458
  br label %484

484:                                              ; preds = %483, %433
  br label %485

485:                                              ; preds = %484, %426, %422, %418, %412
  br label %486

486:                                              ; preds = %485, %192
  %487 = load %struct.us_data*, %struct.us_data** %4, align 8
  %488 = getelementptr inbounds %struct.us_data, %struct.us_data* %487, i32 0, i32 2
  %489 = load i32, i32* %488, align 8
  %490 = load i32, i32* @US_FL_INITIAL_READ10, align 4
  %491 = and i32 %489, %490
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %501

493:                                              ; preds = %486
  %494 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %495 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %494, i32 0, i32 2
  %496 = load i32*, i32** %495, align 8
  %497 = getelementptr inbounds i32, i32* %496, i64 0
  %498 = load i32, i32* %497, align 4
  %499 = load i32, i32* @READ_10, align 4
  %500 = icmp eq i32 %498, %499
  br label %501

501:                                              ; preds = %493, %486
  %502 = phi i1 [ false, %486 ], [ %500, %493 ]
  %503 = zext i1 %502 to i32
  %504 = call i64 @unlikely(i32 %503)
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %555

506:                                              ; preds = %501
  %507 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %508 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  %510 = sext i32 %509 to i64
  %511 = inttoptr i64 %510 to i8*
  %512 = load i8*, i8** @SAM_STAT_GOOD, align 8
  %513 = icmp eq i8* %511, %512
  br i1 %513, label %514, label %519

514:                                              ; preds = %506
  %515 = load i32, i32* @US_FLIDX_READ10_WORKED, align 4
  %516 = load %struct.us_data*, %struct.us_data** %4, align 8
  %517 = getelementptr inbounds %struct.us_data, %struct.us_data* %516, i32 0, i32 4
  %518 = call i32 @set_bit(i32 %515, i32* %517)
  br label %535

519:                                              ; preds = %506
  %520 = load i32, i32* @US_FLIDX_READ10_WORKED, align 4
  %521 = load %struct.us_data*, %struct.us_data** %4, align 8
  %522 = getelementptr inbounds %struct.us_data, %struct.us_data* %521, i32 0, i32 4
  %523 = call i64 @test_bit(i32 %520, i32* %522)
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %525, label %534

525:                                              ; preds = %519
  %526 = load i32, i32* @US_FLIDX_READ10_WORKED, align 4
  %527 = load %struct.us_data*, %struct.us_data** %4, align 8
  %528 = getelementptr inbounds %struct.us_data, %struct.us_data* %527, i32 0, i32 4
  %529 = call i32 @clear_bit(i32 %526, i32* %528)
  %530 = load i32, i32* @US_FLIDX_REDO_READ10, align 4
  %531 = load %struct.us_data*, %struct.us_data** %4, align 8
  %532 = getelementptr inbounds %struct.us_data, %struct.us_data* %531, i32 0, i32 4
  %533 = call i32 @set_bit(i32 %530, i32* %532)
  br label %534

534:                                              ; preds = %525, %519
  br label %535

535:                                              ; preds = %534, %514
  %536 = load i32, i32* @US_FLIDX_REDO_READ10, align 4
  %537 = load %struct.us_data*, %struct.us_data** %4, align 8
  %538 = getelementptr inbounds %struct.us_data, %struct.us_data* %537, i32 0, i32 4
  %539 = call i64 @test_bit(i32 %536, i32* %538)
  %540 = icmp ne i64 %539, 0
  br i1 %540, label %541, label %554

541:                                              ; preds = %535
  %542 = load i32, i32* @US_FLIDX_REDO_READ10, align 4
  %543 = load %struct.us_data*, %struct.us_data** %4, align 8
  %544 = getelementptr inbounds %struct.us_data, %struct.us_data* %543, i32 0, i32 4
  %545 = call i32 @clear_bit(i32 %542, i32* %544)
  %546 = load i32, i32* @DID_IMM_RETRY, align 4
  %547 = shl i32 %546, 16
  %548 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %549 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %548, i32 0, i32 0
  store i32 %547, i32* %549, align 8
  %550 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %551 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %550, i32 0, i32 4
  %552 = load i32*, i32** %551, align 8
  %553 = getelementptr inbounds i32, i32* %552, i64 0
  store i32 0, i32* %553, align 4
  br label %554

554:                                              ; preds = %541, %535
  br label %555

555:                                              ; preds = %554, %501
  %556 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %557 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %556, i32 0, i32 0
  %558 = load i32, i32* %557, align 8
  %559 = sext i32 %558 to i64
  %560 = inttoptr i64 %559 to i8*
  %561 = load i8*, i8** @SAM_STAT_GOOD, align 8
  %562 = icmp eq i8* %560, %561
  br i1 %562, label %570, label %563

563:                                              ; preds = %555
  %564 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %565 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %564, i32 0, i32 4
  %566 = load i32*, i32** %565, align 8
  %567 = getelementptr inbounds i32, i32* %566, i64 2
  %568 = load i32, i32* %567, align 4
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %585

570:                                              ; preds = %563, %555
  %571 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %572 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %571)
  %573 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %574 = call i64 @scsi_get_resid(%struct.scsi_cmnd* %573)
  %575 = sub nsw i64 %572, %574
  %576 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %577 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %576, i32 0, i32 5
  %578 = load i64, i64* %577, align 8
  %579 = icmp slt i64 %575, %578
  br i1 %579, label %580, label %585

580:                                              ; preds = %570
  %581 = load i32, i32* @DID_ERROR, align 4
  %582 = shl i32 %581, 16
  %583 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %584 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %583, i32 0, i32 0
  store i32 %582, i32* %584, align 8
  br label %585

585:                                              ; preds = %580, %570, %563
  %586 = load %struct.us_data*, %struct.us_data** %4, align 8
  %587 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %588 = call i32 @last_sector_hacks(%struct.us_data* %586, %struct.scsi_cmnd* %587)
  br label %636

589:                                              ; preds = %316, %275, %38, %27
  %590 = load %struct.us_data*, %struct.us_data** %4, align 8
  %591 = call i32 @us_to_host(%struct.us_data* %590)
  %592 = call i32 @scsi_lock(i32 %591)
  %593 = load i32, i32* @US_FLIDX_RESETTING, align 4
  %594 = load %struct.us_data*, %struct.us_data** %4, align 8
  %595 = getelementptr inbounds %struct.us_data, %struct.us_data* %594, i32 0, i32 4
  %596 = call i32 @set_bit(i32 %593, i32* %595)
  %597 = load i32, i32* @US_FLIDX_ABORTING, align 4
  %598 = load %struct.us_data*, %struct.us_data** %4, align 8
  %599 = getelementptr inbounds %struct.us_data, %struct.us_data* %598, i32 0, i32 4
  %600 = call i32 @clear_bit(i32 %597, i32* %599)
  %601 = load %struct.us_data*, %struct.us_data** %4, align 8
  %602 = call i32 @us_to_host(%struct.us_data* %601)
  %603 = call i32 @scsi_unlock(i32 %602)
  %604 = load %struct.us_data*, %struct.us_data** %4, align 8
  %605 = getelementptr inbounds %struct.us_data, %struct.us_data* %604, i32 0, i32 6
  %606 = call i32 @mutex_unlock(i32* %605)
  %607 = load %struct.us_data*, %struct.us_data** %4, align 8
  %608 = call i32 @usb_stor_port_reset(%struct.us_data* %607)
  store i32 %608, i32* %6, align 4
  %609 = load %struct.us_data*, %struct.us_data** %4, align 8
  %610 = getelementptr inbounds %struct.us_data, %struct.us_data* %609, i32 0, i32 6
  %611 = call i32 @mutex_lock(i32* %610)
  %612 = load i32, i32* %6, align 4
  %613 = icmp slt i32 %612, 0
  br i1 %613, label %614, label %628

614:                                              ; preds = %589
  %615 = load %struct.us_data*, %struct.us_data** %4, align 8
  %616 = call i32 @us_to_host(%struct.us_data* %615)
  %617 = call i32 @scsi_lock(i32 %616)
  %618 = load %struct.us_data*, %struct.us_data** %4, align 8
  %619 = call i32 @usb_stor_report_device_reset(%struct.us_data* %618)
  %620 = load %struct.us_data*, %struct.us_data** %4, align 8
  %621 = call i32 @us_to_host(%struct.us_data* %620)
  %622 = call i32 @scsi_unlock(i32 %621)
  %623 = load %struct.us_data*, %struct.us_data** %4, align 8
  %624 = getelementptr inbounds %struct.us_data, %struct.us_data* %623, i32 0, i32 5
  %625 = load i32 (%struct.us_data*)*, i32 (%struct.us_data*)** %624, align 8
  %626 = load %struct.us_data*, %struct.us_data** %4, align 8
  %627 = call i32 %625(%struct.us_data* %626)
  br label %628

628:                                              ; preds = %614, %589
  %629 = load i32, i32* @US_FLIDX_RESETTING, align 4
  %630 = load %struct.us_data*, %struct.us_data** %4, align 8
  %631 = getelementptr inbounds %struct.us_data, %struct.us_data* %630, i32 0, i32 4
  %632 = call i32 @clear_bit(i32 %629, i32* %631)
  %633 = load %struct.us_data*, %struct.us_data** %4, align 8
  %634 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %635 = call i32 @last_sector_hacks(%struct.us_data* %633, %struct.scsi_cmnd* %634)
  br label %636

636:                                              ; preds = %628, %585, %317, %49
  ret void
}

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

declare dso_local i32 @last_sector_hacks(%struct.us_data*, %struct.scsi_cmnd*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @scsi_get_resid(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_eh_prep_cmnd(%struct.scsi_cmnd*, %struct.scsi_eh_save*, i32*, i32, i32) #1

declare dso_local i32 @scsi_eh_restore_cmnd(%struct.scsi_cmnd*, %struct.scsi_eh_save*) #1

declare dso_local i32 @scsi_normalize_sense(i32*, i32, %struct.scsi_sense_hdr*) #1

declare dso_local i32* @scsi_sense_desc_find(i32*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_lock(i32) #1

declare dso_local i32 @us_to_host(%struct.us_data*) #1

declare dso_local i32 @scsi_unlock(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_stor_port_reset(%struct.us_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_stor_report_device_reset(%struct.us_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
