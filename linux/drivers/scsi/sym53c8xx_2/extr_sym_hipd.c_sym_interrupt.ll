; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.sym_data = type { %struct.pci_dev*, %struct.sym_hcb* }
%struct.pci_dev = type { i32 }
%struct.sym_hcb = type { i32, i32 }

@nc_istat = common dso_local global i32 0, align 4
@INTF = common dso_local global i32 0, align 4
@SIGP = common dso_local global i32 0, align 4
@DEBUG_FLAGS = common dso_local global i32 0, align 4
@DEBUG_TINY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"F \00", align 1
@SIP = common dso_local global i32 0, align 4
@DIP = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@nc_sist = common dso_local global i32 0, align 4
@nc_dstat = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"<%d|%x:%x|%x:%x>\00", align 1
@nc_scr0 = common dso_local global i32 0, align 4
@nc_dsp = common dso_local global i32 0, align 4
@nc_dbc = common dso_local global i32 0, align 4
@STO = common dso_local global i32 0, align 4
@GEN = common dso_local global i32 0, align 4
@HTH = common dso_local global i32 0, align 4
@SGE = common dso_local global i32 0, align 4
@UDC = common dso_local global i32 0, align 4
@SBMC = common dso_local global i32 0, align 4
@RST = common dso_local global i32 0, align 4
@MDPE = common dso_local global i32 0, align 4
@BF = common dso_local global i32 0, align 4
@ABRT = common dso_local global i32 0, align 4
@IID = common dso_local global i32 0, align 4
@PAR = common dso_local global i32 0, align 4
@MA = common dso_local global i32 0, align 4
@SIR = common dso_local global i32 0, align 4
@SSI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"%s: SCSI BUS reset detected.\0A\00", align 1
@nc_ctest3 = common dso_local global i32 0, align 4
@CLF = common dso_local global i32 0, align 4
@nc_stest3 = common dso_local global i32 0, align 4
@TE = common dso_local global i32 0, align 4
@CSF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [67 x i8] c"%s: unknown interrupt(s) ignored, ISTAT=0x%x DSTAT=0x%x SIST=0x%x\0A\00", align 1
@CABRT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sym_interrupt(%struct.Scsi_Host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.sym_data*, align 8
  %5 = alloca %struct.sym_hcb*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %12 = call %struct.sym_data* @shost_priv(%struct.Scsi_Host* %11)
  store %struct.sym_data* %12, %struct.sym_data** %4, align 8
  %13 = load %struct.sym_data*, %struct.sym_data** %4, align 8
  %14 = getelementptr inbounds %struct.sym_data, %struct.sym_data* %13, i32 0, i32 1
  %15 = load %struct.sym_hcb*, %struct.sym_hcb** %14, align 8
  store %struct.sym_hcb* %15, %struct.sym_hcb** %5, align 8
  %16 = load %struct.sym_data*, %struct.sym_data** %4, align 8
  %17 = getelementptr inbounds %struct.sym_data, %struct.sym_data* %16, i32 0, i32 0
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %6, align 8
  %19 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %20 = load i32, i32* @nc_istat, align 4
  %21 = call i32 @INB(%struct.sym_hcb* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @INTF, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %1
  %27 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %28 = load i32, i32* @nc_istat, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @SIGP, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @INTF, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %35 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %33, %36
  %38 = call i32 @OUTB(%struct.sym_hcb* %27, i32 %28, i32 %37)
  %39 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %40 = load i32, i32* @nc_istat, align 4
  %41 = call i32 @INB(%struct.sym_hcb* %39, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* @DEBUG_FLAGS, align 4
  %45 = load i32, i32* @DEBUG_TINY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %26
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %26
  %51 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %52 = call i32 @sym_wakeup_done(%struct.sym_hcb* %51)
  br label %53

53:                                               ; preds = %50, %1
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @SIP, align 4
  %56 = load i32, i32* @DIP, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @INTF, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @IRQ_HANDLED, align 4
  br label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @IRQ_NONE, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %2, align 4
  br label %326

71:                                               ; preds = %53
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %120, %71
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @SIP, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %80 = load i32, i32* @nc_sist, align 4
  %81 = call i32 @INW(%struct.sym_hcb* %79, i32 %80)
  %82 = load i32, i32* %10, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %78, %73
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @DIP, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %91 = load i32, i32* @nc_dstat, align 4
  %92 = call i32 @INB(%struct.sym_hcb* %90, i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %89, %84
  %96 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %97 = load i32, i32* @nc_istat, align 4
  %98 = call i32 @INB(%struct.sym_hcb* %96, i32 %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %7, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp eq i32 %102, 65535
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = load i32, i32* %9, align 4
  %106 = icmp eq i32 %105, 255
  br label %107

107:                                              ; preds = %104, %95
  %108 = phi i1 [ false, %95 ], [ %106, %104 ]
  %109 = zext i1 %108 to i32
  %110 = call i64 @unlikely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %114 = call i64 @pci_channel_offline(%struct.pci_dev* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i32, i32* @IRQ_NONE, align 4
  store i32 %117, i32* %2, align 4
  br label %326

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %118, %107
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @SIP, align 4
  %123 = load i32, i32* @DIP, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %121, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %73, label %127

127:                                              ; preds = %120
  %128 = load i32, i32* @DEBUG_FLAGS, align 4
  %129 = load i32, i32* @DEBUG_TINY, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %127
  %133 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %134 = load i32, i32* @nc_scr0, align 4
  %135 = call i32 @INB(%struct.sym_hcb* %133, i32 %134)
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %139 = load i32, i32* @nc_dsp, align 4
  %140 = call i64 @INL(%struct.sym_hcb* %138, i32 %139)
  %141 = trunc i64 %140 to i32
  %142 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %143 = load i32, i32* @nc_dbc, align 4
  %144 = call i64 @INL(%struct.sym_hcb* %142, i32 %143)
  %145 = trunc i64 %144 to i32
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %135, i32 %136, i32 %137, i32 %141, i32 %145)
  br label %147

147:                                              ; preds = %132, %127
  %148 = call i32 (...) @MEMORY_READ_BARRIER()
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* @STO, align 4
  %151 = load i32, i32* @GEN, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @HTH, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @SGE, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @UDC, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @SBMC, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @RST, align 4
  %162 = or i32 %160, %161
  %163 = and i32 %149, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %214, label %165

165:                                              ; preds = %147
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* @MDPE, align 4
  %168 = load i32, i32* @BF, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @ABRT, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @IID, align 4
  %173 = or i32 %171, %172
  %174 = and i32 %166, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %214, label %176

176:                                              ; preds = %165
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* @PAR, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %183 = load i32, i32* %10, align 4
  %184 = call i32 @sym_int_par(%struct.sym_hcb* %182, i32 %183)
  br label %212

185:                                              ; preds = %176
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* @MA, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %192 = call i32 @sym_int_ma(%struct.sym_hcb* %191)
  br label %211

193:                                              ; preds = %185
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* @SIR, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %193
  %199 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %200 = call i32 @sym_int_sir(%struct.sym_hcb* %199)
  br label %210

201:                                              ; preds = %193
  %202 = load i32, i32* %9, align 4
  %203 = load i32, i32* @SSI, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = call i32 (...) @OUTONB_STD()
  br label %209

208:                                              ; preds = %201
  br label %318

209:                                              ; preds = %206
  br label %210

210:                                              ; preds = %209, %198
  br label %211

211:                                              ; preds = %210, %190
  br label %212

212:                                              ; preds = %211, %181
  %213 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %213, i32* %2, align 4
  br label %326

214:                                              ; preds = %165, %147
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* @RST, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %214
  %220 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %221 = call i8* @sym_name(%struct.sym_hcb* %220)
  %222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %221)
  %223 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %224 = call i32 @sym_start_up(%struct.Scsi_Host* %223, i32 1)
  %225 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %225, i32* %2, align 4
  br label %326

226:                                              ; preds = %214
  %227 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %228 = load i32, i32* @nc_ctest3, align 4
  %229 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %230 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @CLF, align 4
  %233 = or i32 %231, %232
  %234 = call i32 @OUTB(%struct.sym_hcb* %227, i32 %228, i32 %233)
  %235 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %236 = load i32, i32* @nc_stest3, align 4
  %237 = load i32, i32* @TE, align 4
  %238 = load i32, i32* @CSF, align 4
  %239 = or i32 %237, %238
  %240 = call i32 @OUTB(%struct.sym_hcb* %235, i32 %236, i32 %239)
  %241 = load i32, i32* %10, align 4
  %242 = load i32, i32* @GEN, align 4
  %243 = load i32, i32* @HTH, align 4
  %244 = or i32 %242, %243
  %245 = load i32, i32* @SGE, align 4
  %246 = or i32 %244, %245
  %247 = and i32 %241, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %289, label %249

249:                                              ; preds = %226
  %250 = load i32, i32* %9, align 4
  %251 = load i32, i32* @MDPE, align 4
  %252 = load i32, i32* @BF, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* @ABRT, align 4
  %255 = or i32 %253, %254
  %256 = load i32, i32* @IID, align 4
  %257 = or i32 %255, %256
  %258 = and i32 %250, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %289, label %260

260:                                              ; preds = %249
  %261 = load i32, i32* %10, align 4
  %262 = load i32, i32* @SBMC, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %260
  %266 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %267 = call i32 @sym_int_sbmc(%struct.Scsi_Host* %266)
  br label %287

268:                                              ; preds = %260
  %269 = load i32, i32* %10, align 4
  %270 = load i32, i32* @STO, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %268
  %274 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %275 = call i32 @sym_int_sto(%struct.sym_hcb* %274)
  br label %286

276:                                              ; preds = %268
  %277 = load i32, i32* %10, align 4
  %278 = load i32, i32* @UDC, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %276
  %282 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %283 = call i32 @sym_int_udc(%struct.sym_hcb* %282)
  br label %285

284:                                              ; preds = %276
  br label %318

285:                                              ; preds = %281
  br label %286

286:                                              ; preds = %285, %273
  br label %287

287:                                              ; preds = %286, %265
  %288 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %288, i32* %2, align 4
  br label %326

289:                                              ; preds = %249, %226
  %290 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %291 = load i32, i32* %10, align 4
  %292 = load i32, i32* %9, align 4
  %293 = call i32 @sym_log_hard_error(%struct.Scsi_Host* %290, i32 %291, i32 %292)
  %294 = load i32, i32* %10, align 4
  %295 = load i32, i32* @GEN, align 4
  %296 = load i32, i32* @HTH, align 4
  %297 = or i32 %295, %296
  %298 = load i32, i32* @SGE, align 4
  %299 = or i32 %297, %298
  %300 = and i32 %294, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %313, label %302

302:                                              ; preds = %289
  %303 = load i32, i32* %9, align 4
  %304 = load i32, i32* @MDPE, align 4
  %305 = load i32, i32* @BF, align 4
  %306 = or i32 %304, %305
  %307 = load i32, i32* @ABRT, align 4
  %308 = or i32 %306, %307
  %309 = load i32, i32* @IID, align 4
  %310 = or i32 %308, %309
  %311 = and i32 %303, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %302, %289
  %314 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %315 = call i32 @sym_start_reset(%struct.sym_hcb* %314)
  %316 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %316, i32* %2, align 4
  br label %326

317:                                              ; preds = %302
  br label %318

318:                                              ; preds = %317, %284, %208
  %319 = load %struct.sym_hcb*, %struct.sym_hcb** %5, align 8
  %320 = call i8* @sym_name(%struct.sym_hcb* %319)
  %321 = load i32, i32* %7, align 4
  %322 = load i32, i32* %9, align 4
  %323 = load i32, i32* %10, align 4
  %324 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i8* %320, i32 %321, i32 %322, i32 %323)
  %325 = load i32, i32* @IRQ_NONE, align 4
  store i32 %325, i32* %2, align 4
  br label %326

326:                                              ; preds = %318, %313, %287, %219, %212, %116, %69
  %327 = load i32, i32* %2, align 4
  ret i32 %327
}

declare dso_local %struct.sym_data* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @INB(%struct.sym_hcb*, i32) #1

declare dso_local i32 @OUTB(%struct.sym_hcb*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sym_wakeup_done(%struct.sym_hcb*) #1

declare dso_local i32 @INW(%struct.sym_hcb*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @pci_channel_offline(%struct.pci_dev*) #1

declare dso_local i64 @INL(%struct.sym_hcb*, i32) #1

declare dso_local i32 @MEMORY_READ_BARRIER(...) #1

declare dso_local i32 @sym_int_par(%struct.sym_hcb*, i32) #1

declare dso_local i32 @sym_int_ma(%struct.sym_hcb*) #1

declare dso_local i32 @sym_int_sir(%struct.sym_hcb*) #1

declare dso_local i32 @OUTONB_STD(...) #1

declare dso_local i8* @sym_name(%struct.sym_hcb*) #1

declare dso_local i32 @sym_start_up(%struct.Scsi_Host*, i32) #1

declare dso_local i32 @sym_int_sbmc(%struct.Scsi_Host*) #1

declare dso_local i32 @sym_int_sto(%struct.sym_hcb*) #1

declare dso_local i32 @sym_int_udc(%struct.sym_hcb*) #1

declare dso_local i32 @sym_log_hard_error(%struct.Scsi_Host*, i32, i32) #1

declare dso_local i32 @sym_start_reset(%struct.sym_hcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
