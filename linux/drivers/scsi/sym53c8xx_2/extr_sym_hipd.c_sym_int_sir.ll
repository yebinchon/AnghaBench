; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_int_sir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_int_sir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32*, i32, i32*, %struct.sym_tcb* }
%struct.sym_tcb = type { i32 }
%struct.sym_ccb = type { i32, i32, i32, i32 }

@nc_dsps = common dso_local global i32 0, align 4
@nc_dsa = common dso_local global i32 0, align 4
@nc_sdid = common dso_local global i32 0, align 4
@DEBUG_FLAGS = common dso_local global i32 0, align 4
@DEBUG_TINY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"I#%d\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"No MSG OUT phase after selection with ATN\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"No MSG IN phase after reselection\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"No IDENTIFY after reselection\0A\00", align 1
@M_RESET = common dso_local global i32 0, align 4
@M_ABORT = common dso_local global i32 0, align 4
@M_ABORT_TAG = common dso_local global i32 0, align 4
@M_NOOP = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"message %x sent on bad reselection\0A\00", align 1
@M_PARITY = common dso_local global i32 0, align 4
@M_ID_ERROR = common dso_local global i32 0, align 4
@XE_PARITY_ERR = common dso_local global i32 0, align 4
@HF_PRT = common dso_local global i32 0, align 4
@HF_EXT_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"M_REJECT to send for \00", align 1
@XE_SWIDE_OVRUN = common dso_local global i32 0, align 4
@XE_SODL_UNRUN = common dso_local global i32 0, align 4
@XE_EXTRA_DATA = common dso_local global i32 0, align 4
@nc_scratcha = common dso_local global i32 0, align 4
@XE_BAD_PHASE = common dso_local global i32 0, align 4
@DEBUG_POINTER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"extended msg \00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"1 or 2 byte \00", align 1
@HF_SENSE = common dso_local global i32 0, align 4
@clrack = common dso_local global i32 0, align 4
@HS_PRT = common dso_local global i32 0, align 4
@HS_NEGOTIATE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"M_REJECT received (%x:%x).\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"WEIRD message received\00", align 1
@msg_weird = common dso_local global i32 0, align 4
@HS_BUSY = common dso_local global i32 0, align 4
@msg_bad = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_hcb*)* @sym_int_sir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_int_sir(%struct.sym_hcb* %0) #0 {
  %2 = alloca %struct.sym_hcb*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sym_ccb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sym_tcb*, align 8
  %8 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %2, align 8
  %9 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %10 = load i32, i32* @nc_dsps, align 4
  %11 = call i32 @INB(%struct.sym_hcb* %9, i32 %10)
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %3, align 8
  %13 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %14 = load i32, i32* @nc_dsa, align 4
  %15 = call i32 @INL(%struct.sym_hcb* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.sym_ccb* @sym_ccb_from_dsa(%struct.sym_hcb* %16, i32 %17)
  store %struct.sym_ccb* %18, %struct.sym_ccb** %5, align 8
  %19 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %20 = load i32, i32* @nc_sdid, align 4
  %21 = call i32 @INB(%struct.sym_hcb* %19, i32 %20)
  %22 = and i32 %21, 15
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %6, align 8
  %24 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %25 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %24, i32 0, i32 3
  %26 = load %struct.sym_tcb*, %struct.sym_tcb** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %26, i64 %27
  store %struct.sym_tcb* %28, %struct.sym_tcb** %7, align 8
  %29 = load i32, i32* @DEBUG_FLAGS, align 4
  %30 = load i32, i32* @DEBUG_TINY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %34)
  br label %36

36:                                               ; preds = %33, %1
  %37 = load i64, i64* %3, align 8
  switch i64 %37, label %382 [
    i64 147, label %38
    i64 132, label %42
    i64 128, label %42
    i64 150, label %42
    i64 131, label %46
    i64 133, label %51
    i64 134, label %56
    i64 135, label %61
    i64 137, label %67
    i64 136, label %73
    i64 138, label %79
    i64 144, label %100
    i64 148, label %147
    i64 139, label %156
    i64 129, label %166
    i64 130, label %180
    i64 146, label %194
    i64 149, label %215
    i64 143, label %229
    i64 142, label %361
    i64 141, label %372
    i64 140, label %377
  ]

38:                                               ; preds = %36
  %39 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %40 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %41 = call i32 @sym_complete_error(%struct.sym_hcb* %39, %struct.sym_ccb* %40)
  br label %398

42:                                               ; preds = %36, %36, %36
  %43 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @sym_sir_task_recovery(%struct.sym_hcb* %43, i64 %44)
  br label %398

46:                                               ; preds = %36
  %47 = load i32, i32* @KERN_WARNING, align 4
  %48 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %49 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %50 = call i32 (i32, %struct.sym_tcb*, %struct.sym_ccb*, i8*, ...) @sym_printk(i32 %47, %struct.sym_tcb* %48, %struct.sym_ccb* %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %397

51:                                               ; preds = %36
  %52 = load i32, i32* @KERN_WARNING, align 4
  %53 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %54 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %55 = call i32 (i32, %struct.sym_tcb*, %struct.sym_ccb*, i8*, ...) @sym_printk(i32 %52, %struct.sym_tcb* %53, %struct.sym_ccb* %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %397

56:                                               ; preds = %36
  %57 = load i32, i32* @KERN_WARNING, align 4
  %58 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %59 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %60 = call i32 (i32, %struct.sym_tcb*, %struct.sym_ccb*, i8*, ...) @sym_printk(i32 %57, %struct.sym_tcb* %58, %struct.sym_ccb* %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %397

61:                                               ; preds = %36
  %62 = load i32, i32* @M_RESET, align 4
  %63 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %64 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %62, i32* %66, align 4
  br label %383

67:                                               ; preds = %36
  %68 = load i32, i32* @M_ABORT, align 4
  %69 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %70 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 %68, i32* %72, align 4
  br label %383

73:                                               ; preds = %36
  %74 = load i32, i32* @M_ABORT_TAG, align 4
  %75 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %76 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %74, i32* %78, align 4
  br label %383

79:                                               ; preds = %36
  %80 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %81 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %86 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load i8*, i8** @M_NOOP, align 8
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %90 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 %88, i32* %92, align 4
  %93 = load i32, i32* @KERN_WARNING, align 4
  %94 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %95 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %96 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %97 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (i32, %struct.sym_tcb*, %struct.sym_ccb*, i8*, ...) @sym_printk(i32 %93, %struct.sym_tcb* %94, %struct.sym_ccb* %95, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  br label %383

100:                                              ; preds = %36
  %101 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %102 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %107 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  %108 = load i8*, i8** @M_NOOP, align 8
  %109 = ptrtoint i8* %108 to i32
  %110 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %111 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 %109, i32* %113, align 4
  %114 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %115 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @M_PARITY, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %125, label %119

119:                                              ; preds = %100
  %120 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %121 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @M_ID_ERROR, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %146

125:                                              ; preds = %119, %100
  %126 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %127 = icmp ne %struct.sym_ccb* %126, null
  br i1 %127, label %128, label %145

128:                                              ; preds = %125
  %129 = load i32, i32* @XE_PARITY_ERR, align 4
  %130 = xor i32 %129, -1
  %131 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %132 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %136 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %128
  %140 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %141 = load i32, i32* @HF_PRT, align 4
  %142 = load i32, i32* @HF_EXT_ERR, align 4
  %143 = call i32 @OUTOFFB(%struct.sym_hcb* %140, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %139, %128
  br label %145

145:                                              ; preds = %144, %125
  br label %146

146:                                              ; preds = %145, %119
  br label %383

147:                                              ; preds = %36
  %148 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %149 = icmp ne %struct.sym_ccb* %148, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %147
  br label %383

151:                                              ; preds = %147
  %152 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %153 = load i64, i64* %3, align 8
  %154 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %155 = call i32 @sym_sir_bad_scsi_status(%struct.sym_hcb* %152, i64 %153, %struct.sym_ccb* %154)
  br label %398

156:                                              ; preds = %36
  %157 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %158 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %159 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @sym_print_msg(%struct.sym_ccb* %157, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32* %160)
  %162 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %163 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  store i32 155, i32* %165, align 4
  br label %383

166:                                              ; preds = %36
  %167 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %168 = icmp ne %struct.sym_ccb* %167, null
  br i1 %168, label %169, label %179

169:                                              ; preds = %166
  %170 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %171 = load i32, i32* @HF_PRT, align 4
  %172 = load i32, i32* @HF_EXT_ERR, align 4
  %173 = call i32 @OUTONB(%struct.sym_hcb* %170, i32 %171, i32 %172)
  %174 = load i32, i32* @XE_SWIDE_OVRUN, align 4
  %175 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %176 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %169, %166
  br label %383

180:                                              ; preds = %36
  %181 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %182 = icmp ne %struct.sym_ccb* %181, null
  br i1 %182, label %183, label %193

183:                                              ; preds = %180
  %184 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %185 = load i32, i32* @HF_PRT, align 4
  %186 = load i32, i32* @HF_EXT_ERR, align 4
  %187 = call i32 @OUTONB(%struct.sym_hcb* %184, i32 %185, i32 %186)
  %188 = load i32, i32* @XE_SODL_UNRUN, align 4
  %189 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %190 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %183, %180
  br label %383

194:                                              ; preds = %36
  %195 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %196 = icmp ne %struct.sym_ccb* %195, null
  br i1 %196, label %197, label %214

197:                                              ; preds = %194
  %198 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %199 = load i32, i32* @HF_PRT, align 4
  %200 = load i32, i32* @HF_EXT_ERR, align 4
  %201 = call i32 @OUTONB(%struct.sym_hcb* %198, i32 %199, i32 %200)
  %202 = load i32, i32* @XE_EXTRA_DATA, align 4
  %203 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %204 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 4
  %207 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %208 = load i32, i32* @nc_scratcha, align 4
  %209 = call i32 @INL(%struct.sym_hcb* %207, i32 %208)
  %210 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %211 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, %209
  store i32 %213, i32* %211, align 4
  br label %214

214:                                              ; preds = %197, %194
  br label %383

215:                                              ; preds = %36
  %216 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %217 = icmp ne %struct.sym_ccb* %216, null
  br i1 %217, label %218, label %228

218:                                              ; preds = %215
  %219 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %220 = load i32, i32* @HF_PRT, align 4
  %221 = load i32, i32* @HF_EXT_ERR, align 4
  %222 = call i32 @OUTONB(%struct.sym_hcb* %219, i32 %220, i32 %221)
  %223 = load i32, i32* @XE_BAD_PHASE, align 4
  %224 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %225 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = or i32 %226, %223
  store i32 %227, i32* %225, align 4
  br label %228

228:                                              ; preds = %218, %215
  br label %383

229:                                              ; preds = %36
  %230 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %231 = icmp ne %struct.sym_ccb* %230, null
  br i1 %231, label %233, label %232

232:                                              ; preds = %229
  br label %397

233:                                              ; preds = %229
  %234 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %235 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %234, i32 0, i32 2
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  %238 = load i32, i32* %237, align 4
  switch i32 %238, label %360 [
    i32 157, label %239
    i32 156, label %304
    i32 155, label %334
  ]

239:                                              ; preds = %233
  %240 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %241 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %240, i32 0, i32 2
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 2
  %244 = load i32, i32* %243, align 4
  switch i32 %244, label %303 [
    i32 154, label %245
    i32 152, label %288
    i32 153, label %293
    i32 151, label %298
  ]

245:                                              ; preds = %239
  %246 = load i32, i32* @DEBUG_FLAGS, align 4
  %247 = load i32, i32* @DEBUG_POINTER, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %245
  %251 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %252 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %253 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %252, i32 0, i32 2
  %254 = load i32*, i32** %253, align 8
  %255 = call i32 @sym_print_msg(%struct.sym_ccb* %251, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32* %254)
  br label %256

256:                                              ; preds = %250, %245
  %257 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %258 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %257, i32 0, i32 2
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 3
  %261 = load i32, i32* %260, align 4
  %262 = shl i32 %261, 24
  %263 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %264 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %263, i32 0, i32 2
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 4
  %267 = load i32, i32* %266, align 4
  %268 = shl i32 %267, 16
  %269 = add nsw i32 %262, %268
  %270 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %271 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %270, i32 0, i32 2
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 5
  %274 = load i32, i32* %273, align 4
  %275 = shl i32 %274, 8
  %276 = add nsw i32 %269, %275
  %277 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %278 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %277, i32 0, i32 2
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 6
  %281 = load i32, i32* %280, align 4
  %282 = add nsw i32 %276, %281
  store i32 %282, i32* %8, align 4
  %283 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %284 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %285 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %286 = load i32, i32* %8, align 4
  %287 = call i32 @sym_modify_dp(%struct.sym_hcb* %283, %struct.sym_tcb* %284, %struct.sym_ccb* %285, i32 %286)
  br label %398

288:                                              ; preds = %239
  %289 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %290 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %291 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %292 = call i32 @sym_sync_nego(%struct.sym_hcb* %289, %struct.sym_tcb* %290, %struct.sym_ccb* %291)
  br label %398

293:                                              ; preds = %239
  %294 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %295 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %296 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %297 = call i32 @sym_ppr_nego(%struct.sym_hcb* %294, %struct.sym_tcb* %295, %struct.sym_ccb* %296)
  br label %398

298:                                              ; preds = %239
  %299 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %300 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %301 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %302 = call i32 @sym_wide_nego(%struct.sym_hcb* %299, %struct.sym_tcb* %300, %struct.sym_ccb* %301)
  br label %398

303:                                              ; preds = %239
  br label %385

304:                                              ; preds = %233
  %305 = load i32, i32* @DEBUG_FLAGS, align 4
  %306 = load i32, i32* @DEBUG_POINTER, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %315

309:                                              ; preds = %304
  %310 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %311 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %312 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %311, i32 0, i32 2
  %313 = load i32*, i32** %312, align 8
  %314 = call i32 @sym_print_msg(%struct.sym_ccb* %310, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32* %313)
  br label %315

315:                                              ; preds = %309, %304
  %316 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %317 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @HF_SENSE, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %328

322:                                              ; preds = %315
  %323 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %324 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %325 = load i32, i32* @clrack, align 4
  %326 = call i32 @SCRIPTA_BA(%struct.sym_hcb* %324, i32 %325)
  %327 = call i32 @OUTL_DSP(%struct.sym_hcb* %323, i32 %326)
  br label %333

328:                                              ; preds = %315
  %329 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %330 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %331 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %332 = call i32 @sym_modify_dp(%struct.sym_hcb* %329, %struct.sym_tcb* %330, %struct.sym_ccb* %331, i32 -1)
  br label %333

333:                                              ; preds = %328, %322
  br label %398

334:                                              ; preds = %233
  %335 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %336 = load i32, i32* @HS_PRT, align 4
  %337 = call i32 @INB(%struct.sym_hcb* %335, i32 %336)
  %338 = load i32, i32* @HS_NEGOTIATE, align 4
  %339 = icmp eq i32 %337, %338
  br i1 %339, label %340, label %345

340:                                              ; preds = %334
  %341 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %342 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %343 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %344 = call i32 @sym_nego_rejected(%struct.sym_hcb* %341, %struct.sym_tcb* %342, %struct.sym_ccb* %343)
  br label %359

345:                                              ; preds = %334
  %346 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %347 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %350 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 8
  %352 = call i32 @scr_to_cpu(i32 %351)
  %353 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %354 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %353, i32 0, i32 0
  %355 = load i32*, i32** %354, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 0
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @sym_print_addr(i32 %348, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %352, i32 %357)
  br label %359

359:                                              ; preds = %345, %340
  br label %391

360:                                              ; preds = %233
  br label %385

361:                                              ; preds = %36
  %362 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %363 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %364 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %363, i32 0, i32 2
  %365 = load i32*, i32** %364, align 8
  %366 = call i32 @sym_print_msg(%struct.sym_ccb* %362, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32* %365)
  %367 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %368 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %369 = load i32, i32* @msg_weird, align 4
  %370 = call i32 @SCRIPTB_BA(%struct.sym_hcb* %368, i32 %369)
  %371 = call i32 @OUTL_DSP(%struct.sym_hcb* %367, i32 %370)
  br label %398

372:                                              ; preds = %36
  %373 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %374 = load i32, i32* @HS_PRT, align 4
  %375 = load i32, i32* @HS_BUSY, align 4
  %376 = call i32 @OUTB(%struct.sym_hcb* %373, i32 %374, i32 %375)
  br label %377

377:                                              ; preds = %36, %372
  %378 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %379 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %380 = load %struct.sym_ccb*, %struct.sym_ccb** %5, align 8
  %381 = call i32 @sym_nego_default(%struct.sym_hcb* %378, %struct.sym_tcb* %379, %struct.sym_ccb* %380)
  br label %383

382:                                              ; preds = %36
  br label %383

383:                                              ; preds = %382, %377, %228, %214, %193, %179, %156, %150, %146, %79, %73, %67, %61
  %384 = call i32 (...) @OUTONB_STD()
  br label %398

385:                                              ; preds = %360, %303
  %386 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %387 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %388 = load i32, i32* @msg_bad, align 4
  %389 = call i32 @SCRIPTB_BA(%struct.sym_hcb* %387, i32 %388)
  %390 = call i32 @OUTL_DSP(%struct.sym_hcb* %386, i32 %389)
  br label %398

391:                                              ; preds = %359
  %392 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %393 = load %struct.sym_hcb*, %struct.sym_hcb** %2, align 8
  %394 = load i32, i32* @clrack, align 4
  %395 = call i32 @SCRIPTA_BA(%struct.sym_hcb* %393, i32 %394)
  %396 = call i32 @OUTL_DSP(%struct.sym_hcb* %392, i32 %395)
  br label %398

397:                                              ; preds = %232, %56, %51, %46
  br label %398

398:                                              ; preds = %397, %391, %385, %383, %361, %333, %298, %293, %288, %256, %151, %42, %38
  ret void
}

declare dso_local i32 @INB(%struct.sym_hcb*, i32) #1

declare dso_local i32 @INL(%struct.sym_hcb*, i32) #1

declare dso_local %struct.sym_ccb* @sym_ccb_from_dsa(%struct.sym_hcb*, i32) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @sym_complete_error(%struct.sym_hcb*, %struct.sym_ccb*) #1

declare dso_local i32 @sym_sir_task_recovery(%struct.sym_hcb*, i64) #1

declare dso_local i32 @sym_printk(i32, %struct.sym_tcb*, %struct.sym_ccb*, i8*, ...) #1

declare dso_local i32 @OUTOFFB(%struct.sym_hcb*, i32, i32) #1

declare dso_local i32 @sym_sir_bad_scsi_status(%struct.sym_hcb*, i64, %struct.sym_ccb*) #1

declare dso_local i32 @sym_print_msg(%struct.sym_ccb*, i8*, i32*) #1

declare dso_local i32 @OUTONB(%struct.sym_hcb*, i32, i32) #1

declare dso_local i32 @sym_modify_dp(%struct.sym_hcb*, %struct.sym_tcb*, %struct.sym_ccb*, i32) #1

declare dso_local i32 @sym_sync_nego(%struct.sym_hcb*, %struct.sym_tcb*, %struct.sym_ccb*) #1

declare dso_local i32 @sym_ppr_nego(%struct.sym_hcb*, %struct.sym_tcb*, %struct.sym_ccb*) #1

declare dso_local i32 @sym_wide_nego(%struct.sym_hcb*, %struct.sym_tcb*, %struct.sym_ccb*) #1

declare dso_local i32 @OUTL_DSP(%struct.sym_hcb*, i32) #1

declare dso_local i32 @SCRIPTA_BA(%struct.sym_hcb*, i32) #1

declare dso_local i32 @sym_nego_rejected(%struct.sym_hcb*, %struct.sym_tcb*, %struct.sym_ccb*) #1

declare dso_local i32 @sym_print_addr(i32, i8*, i32, i32) #1

declare dso_local i32 @scr_to_cpu(i32) #1

declare dso_local i32 @SCRIPTB_BA(%struct.sym_hcb*, i32) #1

declare dso_local i32 @OUTB(%struct.sym_hcb*, i32, i32) #1

declare dso_local i32 @sym_nego_default(%struct.sym_hcb*, %struct.sym_tcb*, %struct.sym_ccb*) #1

declare dso_local i32 @OUTONB_STD(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
