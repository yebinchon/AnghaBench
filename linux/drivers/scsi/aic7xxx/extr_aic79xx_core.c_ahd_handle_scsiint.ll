; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_handle_scsiint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_handle_scsiint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32 }
%struct.scb = type { i32 }
%struct.ahd_devinfo = type { i32 }

@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@SSTAT3 = common dso_local global i32 0, align 4
@NTRAMPERR = common dso_local global i32 0, align 4
@OSRAMPERR = common dso_local global i32 0, align 4
@SSTAT0 = common dso_local global i32 0, align 4
@IOERR = common dso_local global i32 0, align 4
@OVERRUN = common dso_local global i32 0, align 4
@SELDI = common dso_local global i32 0, align 4
@SELDO = common dso_local global i32 0, align 4
@SSTAT1 = common dso_local global i32 0, align 4
@SELTO = common dso_local global i32 0, align 4
@SCSIRSTI = common dso_local global i32 0, align 4
@BUSFREE = common dso_local global i32 0, align 4
@SCSIPERR = common dso_local global i32 0, align 4
@LQISTAT1 = common dso_local global i32 0, align 4
@LQOSTAT0 = common dso_local global i32 0, align 4
@SSTAT2 = common dso_local global i32 0, align 4
@BUSFREETIME = common dso_local global i32 0, align 4
@AHD_BUS_RESET_ACTIVE = common dso_local global i32 0, align 4
@CLRSINT1 = common dso_local global i32 0, align 4
@CLRSCSIRSTI = common dso_local global i32 0, align 4
@AHD_MODE_CFG = common dso_local global i32 0, align 4
@SIMODE0 = common dso_local global i32 0, align 4
@SEQ_FLAGS = common dso_local global i32 0, align 4
@NOT_IDENTIFIED = common dso_local global i32 0, align 4
@SBLKCTL = common dso_local global i32 0, align 4
@ENAB40 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%s: Transceiver State Has Changed to %s mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"LVD\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"SE\00", align 1
@CLRSINT0 = common dso_local global i32 0, align 4
@CLRIOERR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"%s: SCSI offset overrun detected.  Resetting bus.\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"%s: Someone reset channel A\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"%s: lqostat0 == 0x%x!\0A\00", align 1
@CLRLQOINT0 = common dso_local global i32 0, align 4
@AHD_CLRLQO_AUTOCLR_BUG = common dso_local global i32 0, align 4
@CLRLQOINT1 = common dso_local global i32 0, align 4
@SCSISEQ0 = common dso_local global i32 0, align 4
@CLRSELTIMEO = common dso_local global i32 0, align 4
@CLRBUSFREE = common dso_local global i32 0, align 4
@CLRSCSIPERR = common dso_local global i32 0, align 4
@CLRSELINGO = common dso_local global i32 0, align 4
@WAITING_TID_HEAD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [64 x i8] c"%s: ahd_intr - referenced scb not valid during SELTO scb(0x%x)\0A\00", align 1
@CAM_SEL_TIMEOUT = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"Selection Timeout\00", align 1
@CLRINT = common dso_local global i32 0, align 4
@CLRSCSIINT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [43 x i8] c"%s: SCSI Cell parity error SSTAT3 == 0x%x\0A\00", align 1
@CLRSINT3 = common dso_local global i32 0, align 4
@LQIPHASE_LQ = common dso_local global i32 0, align 4
@LQIPHASE_NLQ = common dso_local global i32 0, align 4
@LQICRCI_NLQ = common dso_local global i32 0, align 4
@CLRLQIINT1 = common dso_local global i32 0, align 4
@CLRLQICRCI_NLQ = common dso_local global i32 0, align 4
@LQOBUSFREE = common dso_local global i32 0, align 4
@LQOSTAT1 = common dso_local global i32 0, align 4
@AHD_MODE_DFF0 = common dso_local global i32 0, align 4
@AHD_MODE_DFF1 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [55 x i8] c"%s: Invalid SCB %d in DFF%d during unexpected busfree\0A\00", align 1
@SCB_PACKETIZED = common dso_local global i32 0, align 4
@LASTPHASE = common dso_local global i32 0, align 4
@P_BUSFREE = common dso_local global i32 0, align 4
@ENSELO = common dso_local global i32 0, align 4
@AHD_BUSFREEREV_BUG = common dso_local global i32 0, align 4
@SIMODE1 = common dso_local global i32 0, align 4
@ENBUSFREE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [53 x i8] c"%s: Missing case in ahd_handle_scsiint. status = %x\0A\00", align 1
@AHD_SHOW_MISC = common dso_local global i32 0, align 4
@AHD_SHOW_SELTO = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, i32)* @ahd_handle_scsiint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_handle_scsiint(%struct.ahd_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ahd_devinfo, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %21 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %22 = call i32 @ahd_update_modes(%struct.ahd_softc* %21)
  %23 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %24 = load i32, i32* @AHD_MODE_SCSI, align 4
  %25 = load i32, i32* @AHD_MODE_SCSI, align 4
  %26 = call i32 @ahd_set_modes(%struct.ahd_softc* %23, i32 %24, i32 %25)
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %28 = load i32, i32* @SSTAT3, align 4
  %29 = call i32 @ahd_inb(%struct.ahd_softc* %27, i32 %28)
  %30 = load i32, i32* @NTRAMPERR, align 4
  %31 = load i32, i32* @OSRAMPERR, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %35 = load i32, i32* @SSTAT0, align 4
  %36 = call i32 @ahd_inb(%struct.ahd_softc* %34, i32 %35)
  %37 = load i32, i32* @IOERR, align 4
  %38 = load i32, i32* @OVERRUN, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @SELDI, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @SELDO, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %36, %43
  store i32 %44, i32* %6, align 4
  %45 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %46 = load i32, i32* @SSTAT1, align 4
  %47 = call i32 @ahd_inb(%struct.ahd_softc* %45, i32 %46)
  %48 = load i32, i32* @SELTO, align 4
  %49 = load i32, i32* @SCSIRSTI, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @BUSFREE, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @SCSIPERR, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %47, %54
  store i32 %55, i32* %8, align 4
  %56 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %57 = load i32, i32* @LQISTAT1, align 4
  %58 = call i32 @ahd_inb(%struct.ahd_softc* %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %60 = load i32, i32* @LQOSTAT0, align 4
  %61 = call i32 @ahd_inb(%struct.ahd_softc* %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %63 = load i32, i32* @SSTAT2, align 4
  %64 = call i32 @ahd_inb(%struct.ahd_softc* %62, i32 %63)
  %65 = load i32, i32* @BUSFREETIME, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @SCSIRSTI, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %2
  %72 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %73 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @AHD_BUS_RESET_ACTIVE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %80 = load i32, i32* @CLRSINT1, align 4
  %81 = load i32, i32* @CLRSCSIRSTI, align 4
  %82 = call i32 @ahd_outb(%struct.ahd_softc* %79, i32 %80, i32 %81)
  br label %516

83:                                               ; preds = %71, %2
  %84 = load i32, i32* @AHD_BUS_RESET_ACTIVE, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %87 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @SELDI, align 4
  %92 = load i32, i32* @SELDO, align 4
  %93 = or i32 %91, %92
  %94 = and i32 %90, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %119

96:                                               ; preds = %83
  %97 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %98 = load i32, i32* @AHD_MODE_CFG, align 4
  %99 = load i32, i32* @AHD_MODE_CFG, align 4
  %100 = call i32 @ahd_set_modes(%struct.ahd_softc* %97, i32 %98, i32 %99)
  %101 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %102 = load i32, i32* @SIMODE0, align 4
  %103 = call i32 @ahd_inb(%struct.ahd_softc* %101, i32 %102)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* @IOERR, align 4
  %106 = load i32, i32* @OVERRUN, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @SELDI, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @SELDO, align 4
  %111 = or i32 %109, %110
  %112 = and i32 %104, %111
  %113 = load i32, i32* %6, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %6, align 4
  %115 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %116 = load i32, i32* @AHD_MODE_SCSI, align 4
  %117 = load i32, i32* @AHD_MODE_SCSI, align 4
  %118 = call i32 @ahd_set_modes(%struct.ahd_softc* %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %96, %83
  %120 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %121 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %120)
  store i32 %121, i32* %11, align 4
  %122 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %123 = load i32, i32* %11, align 4
  %124 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %122, i32 %123)
  store %struct.scb* %124, %struct.scb** %5, align 8
  %125 = load %struct.scb*, %struct.scb** %5, align 8
  %126 = icmp ne %struct.scb* %125, null
  br i1 %126, label %127, label %135

127:                                              ; preds = %119
  %128 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %129 = load i32, i32* @SEQ_FLAGS, align 4
  %130 = call i32 @ahd_inb(%struct.ahd_softc* %128, i32 %129)
  %131 = load i32, i32* @NOT_IDENTIFIED, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  store %struct.scb* null, %struct.scb** %5, align 8
  br label %135

135:                                              ; preds = %134, %127, %119
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @IOERR, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %166

140:                                              ; preds = %135
  %141 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %142 = load i32, i32* @SBLKCTL, align 4
  %143 = call i32 @ahd_inb(%struct.ahd_softc* %141, i32 %142)
  %144 = load i32, i32* @ENAB40, align 4
  %145 = and i32 %143, %144
  store i32 %145, i32* %14, align 4
  %146 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %147 = call i32 @ahd_name(%struct.ahd_softc* %146)
  %148 = load i32, i32* %14, align 4
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %152 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %147, i8* %151)
  %153 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %154 = load i32, i32* @CLRSINT0, align 4
  %155 = load i32, i32* @CLRIOERR, align 4
  %156 = call i32 @ahd_outb(%struct.ahd_softc* %153, i32 %154, i32 %155)
  %157 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %158 = load i32, i32* @TRUE, align 4
  %159 = call i32 @ahd_reset_channel(%struct.ahd_softc* %157, i8 signext 65, i32 %158)
  %160 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %161 = call i32 @ahd_pause(%struct.ahd_softc* %160)
  %162 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %163 = call i32 @ahd_setup_iocell_workaround(%struct.ahd_softc* %162)
  %164 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %165 = call i32 @ahd_unpause(%struct.ahd_softc* %164)
  br label %516

166:                                              ; preds = %135
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* @OVERRUN, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %166
  %172 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %173 = call i32 @ahd_name(%struct.ahd_softc* %172)
  %174 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %173)
  %175 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %176 = load i32, i32* @TRUE, align 4
  %177 = call i32 @ahd_reset_channel(%struct.ahd_softc* %175, i8 signext 65, i32 %176)
  br label %515

178:                                              ; preds = %166
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* @SCSIRSTI, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %178
  %184 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %185 = call i32 @ahd_name(%struct.ahd_softc* %184)
  %186 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %185)
  %187 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %188 = load i32, i32* @FALSE, align 4
  %189 = call i32 @ahd_reset_channel(%struct.ahd_softc* %187, i8 signext 65, i32 %188)
  br label %514

190:                                              ; preds = %178
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* @SCSIPERR, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %197 = call i32 @ahd_clear_critical_section(%struct.ahd_softc* %196)
  %198 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %199 = call i32 @ahd_handle_transmission_error(%struct.ahd_softc* %198)
  br label %513

200:                                              ; preds = %190
  %201 = load i32, i32* %10, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %223

203:                                              ; preds = %200
  %204 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %205 = call i32 @ahd_name(%struct.ahd_softc* %204)
  %206 = load i32, i32* %10, align 4
  %207 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %205, i32 %206)
  %208 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %209 = load i32, i32* @CLRLQOINT0, align 4
  %210 = load i32, i32* %10, align 4
  %211 = call i32 @ahd_outb(%struct.ahd_softc* %208, i32 %209, i32 %210)
  %212 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %213 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @AHD_CLRLQO_AUTOCLR_BUG, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %203
  %219 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %220 = load i32, i32* @CLRLQOINT1, align 4
  %221 = call i32 @ahd_outb(%struct.ahd_softc* %219, i32 %220, i32 0)
  br label %222

222:                                              ; preds = %218, %203
  br label %512

223:                                              ; preds = %200
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* @SELTO, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %286

228:                                              ; preds = %223
  %229 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %230 = load i32, i32* @SCSISEQ0, align 4
  %231 = call i32 @ahd_outb(%struct.ahd_softc* %229, i32 %230, i32 0)
  %232 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %233 = call i32 @ahd_clear_critical_section(%struct.ahd_softc* %232)
  %234 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %235 = call i32 @ahd_clear_msg_state(%struct.ahd_softc* %234)
  %236 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %237 = load i32, i32* @CLRSINT1, align 4
  %238 = load i32, i32* @CLRSELTIMEO, align 4
  %239 = load i32, i32* @CLRBUSFREE, align 4
  %240 = or i32 %238, %239
  %241 = load i32, i32* @CLRSCSIPERR, align 4
  %242 = or i32 %240, %241
  %243 = call i32 @ahd_outb(%struct.ahd_softc* %236, i32 %237, i32 %242)
  %244 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %245 = load i32, i32* @CLRSINT0, align 4
  %246 = load i32, i32* @CLRSELINGO, align 4
  %247 = call i32 @ahd_outb(%struct.ahd_softc* %244, i32 %245, i32 %246)
  %248 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %249 = load i32, i32* @WAITING_TID_HEAD, align 4
  %250 = call i32 @ahd_inw(%struct.ahd_softc* %248, i32 %249)
  store i32 %250, i32* %11, align 4
  %251 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %252 = load i32, i32* %11, align 4
  %253 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %251, i32 %252)
  store %struct.scb* %253, %struct.scb** %5, align 8
  %254 = load %struct.scb*, %struct.scb** %5, align 8
  %255 = icmp eq %struct.scb* %254, null
  br i1 %255, label %256, label %263

256:                                              ; preds = %228
  %257 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %258 = call i32 @ahd_name(%struct.ahd_softc* %257)
  %259 = load i32, i32* %11, align 4
  %260 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), i32 %258, i32 %259)
  %261 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %262 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %261)
  br label %277

263:                                              ; preds = %228
  %264 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %265 = load %struct.scb*, %struct.scb** %5, align 8
  %266 = call i32 @ahd_scb_devinfo(%struct.ahd_softc* %264, %struct.ahd_devinfo* %15, %struct.scb* %265)
  %267 = load %struct.scb*, %struct.scb** %5, align 8
  %268 = load i32, i32* @CAM_SEL_TIMEOUT, align 4
  %269 = call i32 @ahd_set_transaction_status(%struct.scb* %267, i32 %268)
  %270 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %271 = load %struct.scb*, %struct.scb** %5, align 8
  %272 = call i32 @ahd_freeze_devq(%struct.ahd_softc* %270, %struct.scb* %271)
  %273 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %274 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %275 = load i32, i32* @CAM_SEL_TIMEOUT, align 4
  %276 = call i32 @ahd_handle_devreset(%struct.ahd_softc* %273, %struct.ahd_devinfo* %15, i32 %274, i32 %275, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 1)
  br label %277

277:                                              ; preds = %263, %256
  %278 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %279 = load i32, i32* @CLRINT, align 4
  %280 = load i32, i32* @CLRSCSIINT, align 4
  %281 = call i32 @ahd_outb(%struct.ahd_softc* %278, i32 %279, i32 %280)
  %282 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %283 = call i32 @ahd_iocell_first_selection(%struct.ahd_softc* %282)
  %284 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %285 = call i32 @ahd_unpause(%struct.ahd_softc* %284)
  br label %511

286:                                              ; preds = %223
  %287 = load i32, i32* %6, align 4
  %288 = load i32, i32* @SELDI, align 4
  %289 = load i32, i32* @SELDO, align 4
  %290 = or i32 %288, %289
  %291 = and i32 %287, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %286
  %294 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %295 = call i32 @ahd_iocell_first_selection(%struct.ahd_softc* %294)
  %296 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %297 = call i32 @ahd_unpause(%struct.ahd_softc* %296)
  br label %510

298:                                              ; preds = %286
  %299 = load i32, i32* %7, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %310

301:                                              ; preds = %298
  %302 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %303 = call i32 @ahd_name(%struct.ahd_softc* %302)
  %304 = load i32, i32* %7, align 4
  %305 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %303, i32 %304)
  %306 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %307 = load i32, i32* @CLRSINT3, align 4
  %308 = load i32, i32* %7, align 4
  %309 = call i32 @ahd_outb(%struct.ahd_softc* %306, i32 %307, i32 %308)
  br label %509

310:                                              ; preds = %298
  %311 = load i32, i32* %9, align 4
  %312 = load i32, i32* @LQIPHASE_LQ, align 4
  %313 = load i32, i32* @LQIPHASE_NLQ, align 4
  %314 = or i32 %312, %313
  %315 = and i32 %311, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %323

317:                                              ; preds = %310
  %318 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %319 = call i32 @ahd_clear_critical_section(%struct.ahd_softc* %318)
  %320 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %321 = load i32, i32* %9, align 4
  %322 = call i32 @ahd_handle_lqiphase_error(%struct.ahd_softc* %320, i32 %321)
  br label %508

323:                                              ; preds = %310
  %324 = load i32, i32* %9, align 4
  %325 = load i32, i32* @LQICRCI_NLQ, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %333

328:                                              ; preds = %323
  %329 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %330 = load i32, i32* @CLRLQIINT1, align 4
  %331 = load i32, i32* @CLRLQICRCI_NLQ, align 4
  %332 = call i32 @ahd_outb(%struct.ahd_softc* %329, i32 %330, i32 %331)
  br label %507

333:                                              ; preds = %323
  %334 = load i32, i32* %8, align 4
  %335 = load i32, i32* @BUSFREE, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %343, label %338

338:                                              ; preds = %333
  %339 = load i32, i32* %9, align 4
  %340 = load i32, i32* @LQOBUSFREE, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %495

343:                                              ; preds = %338, %333
  %344 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %345 = load i32, i32* @SCSISEQ0, align 4
  %346 = call i32 @ahd_outb(%struct.ahd_softc* %344, i32 %345, i32 0)
  %347 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %348 = call i32 @ahd_clear_critical_section(%struct.ahd_softc* %347)
  %349 = load i32, i32* @AHD_MODE_SCSI, align 4
  store i32 %349, i32* %20, align 4
  %350 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %351 = load i32, i32* @SSTAT2, align 4
  %352 = call i32 @ahd_inb(%struct.ahd_softc* %350, i32 %351)
  %353 = load i32, i32* @BUSFREETIME, align 4
  %354 = and i32 %352, %353
  store i32 %354, i32* %12, align 4
  %355 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %356 = load i32, i32* @LQOSTAT1, align 4
  %357 = call i32 @ahd_inb(%struct.ahd_softc* %355, i32 %356)
  store i32 %357, i32* %16, align 4
  %358 = load i32, i32* %12, align 4
  switch i32 %358, label %395 [
    i32 130, label %359
    i32 129, label %359
    i32 128, label %394
  ]

359:                                              ; preds = %343, %343
  %360 = load i32, i32* %12, align 4
  %361 = icmp eq i32 %360, 130
  br i1 %361, label %362, label %364

362:                                              ; preds = %359
  %363 = load i32, i32* @AHD_MODE_DFF0, align 4
  br label %366

364:                                              ; preds = %359
  %365 = load i32, i32* @AHD_MODE_DFF1, align 4
  br label %366

366:                                              ; preds = %364, %362
  %367 = phi i32 [ %363, %362 ], [ %365, %364 ]
  store i32 %367, i32* %20, align 4
  %368 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %369 = load i32, i32* %20, align 4
  %370 = load i32, i32* %20, align 4
  %371 = call i32 @ahd_set_modes(%struct.ahd_softc* %368, i32 %369, i32 %370)
  %372 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %373 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %372)
  store i32 %373, i32* %11, align 4
  %374 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %375 = load i32, i32* %11, align 4
  %376 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %374, i32 %375)
  store %struct.scb* %376, %struct.scb** %5, align 8
  %377 = load %struct.scb*, %struct.scb** %5, align 8
  %378 = icmp eq %struct.scb* %377, null
  br i1 %378, label %379, label %385

379:                                              ; preds = %366
  %380 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %381 = call i32 @ahd_name(%struct.ahd_softc* %380)
  %382 = load i32, i32* %11, align 4
  %383 = load i32, i32* %20, align 4
  %384 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i32 %381, i32 %382, i32 %383)
  store i32 0, i32* %19, align 4
  br label %393

385:                                              ; preds = %366
  %386 = load %struct.scb*, %struct.scb** %5, align 8
  %387 = getelementptr inbounds %struct.scb, %struct.scb* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* @SCB_PACKETIZED, align 4
  %390 = and i32 %388, %389
  %391 = icmp ne i32 %390, 0
  %392 = zext i1 %391 to i32
  store i32 %392, i32* %19, align 4
  br label %393

393:                                              ; preds = %385, %379
  store i32 1, i32* %18, align 4
  br label %432

394:                                              ; preds = %343
  store i32 0, i32* %18, align 4
  store i32 1, i32* %19, align 4
  br label %432

395:                                              ; preds = %343
  store i32 0, i32* %18, align 4
  %396 = load i32, i32* %16, align 4
  %397 = load i32, i32* @LQOBUSFREE, align 4
  %398 = and i32 %396, %397
  %399 = icmp ne i32 %398, 0
  %400 = zext i1 %399 to i32
  store i32 %400, i32* %19, align 4
  %401 = load i32, i32* %19, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %431, label %403

403:                                              ; preds = %395
  %404 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %405 = load i32, i32* @LASTPHASE, align 4
  %406 = call i32 @ahd_inb(%struct.ahd_softc* %404, i32 %405)
  %407 = load i32, i32* @P_BUSFREE, align 4
  %408 = icmp eq i32 %406, %407
  br i1 %408, label %409, label %431

409:                                              ; preds = %403
  %410 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %411 = load i32, i32* @SSTAT0, align 4
  %412 = call i32 @ahd_inb(%struct.ahd_softc* %410, i32 %411)
  %413 = load i32, i32* @SELDI, align 4
  %414 = and i32 %412, %413
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %431

416:                                              ; preds = %409
  %417 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %418 = load i32, i32* @SSTAT0, align 4
  %419 = call i32 @ahd_inb(%struct.ahd_softc* %417, i32 %418)
  %420 = load i32, i32* @SELDO, align 4
  %421 = and i32 %419, %420
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %430, label %423

423:                                              ; preds = %416
  %424 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %425 = load i32, i32* @SCSISEQ0, align 4
  %426 = call i32 @ahd_inb(%struct.ahd_softc* %424, i32 %425)
  %427 = load i32, i32* @ENSELO, align 4
  %428 = and i32 %426, %427
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %431

430:                                              ; preds = %423, %416
  store i32 1, i32* %19, align 4
  br label %431

431:                                              ; preds = %430, %423, %409, %403, %395
  br label %432

432:                                              ; preds = %431, %394, %393
  %433 = load i32, i32* %19, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %445

435:                                              ; preds = %432
  %436 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %437 = load i32, i32* @LASTPHASE, align 4
  %438 = call i32 @ahd_inb(%struct.ahd_softc* %436, i32 %437)
  %439 = load i32, i32* @P_BUSFREE, align 4
  %440 = icmp eq i32 %438, %439
  br i1 %440, label %441, label %445

441:                                              ; preds = %435
  %442 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %443 = load i32, i32* %12, align 4
  %444 = call i32 @ahd_handle_pkt_busfree(%struct.ahd_softc* %442, i32 %443)
  store i32 %444, i32* %17, align 4
  br label %448

445:                                              ; preds = %435, %432
  store i32 0, i32* %19, align 4
  %446 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %447 = call i32 @ahd_handle_nonpkt_busfree(%struct.ahd_softc* %446)
  store i32 %447, i32* %17, align 4
  br label %448

448:                                              ; preds = %445, %441
  %449 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %450 = load i32, i32* @CLRSINT1, align 4
  %451 = load i32, i32* @CLRBUSFREE, align 4
  %452 = call i32 @ahd_outb(%struct.ahd_softc* %449, i32 %450, i32 %451)
  %453 = load i32, i32* %19, align 4
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %472

455:                                              ; preds = %448
  %456 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %457 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %456, i32 0, i32 1
  %458 = load i32, i32* %457, align 4
  %459 = load i32, i32* @AHD_BUSFREEREV_BUG, align 4
  %460 = and i32 %458, %459
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %472

462:                                              ; preds = %455
  %463 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %464 = load i32, i32* @SIMODE1, align 4
  %465 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %466 = load i32, i32* @SIMODE1, align 4
  %467 = call i32 @ahd_inb(%struct.ahd_softc* %465, i32 %466)
  %468 = load i32, i32* @ENBUSFREE, align 4
  %469 = xor i32 %468, -1
  %470 = and i32 %467, %469
  %471 = call i32 @ahd_outb(%struct.ahd_softc* %463, i32 %464, i32 %470)
  br label %472

472:                                              ; preds = %462, %455, %448
  %473 = load i32, i32* %18, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %479

475:                                              ; preds = %472
  %476 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %477 = load i32, i32* %20, align 4
  %478 = call i32 @ahd_clear_fifo(%struct.ahd_softc* %476, i32 %477)
  br label %479

479:                                              ; preds = %475, %472
  %480 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %481 = call i32 @ahd_clear_msg_state(%struct.ahd_softc* %480)
  %482 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %483 = load i32, i32* @CLRINT, align 4
  %484 = load i32, i32* @CLRSCSIINT, align 4
  %485 = call i32 @ahd_outb(%struct.ahd_softc* %482, i32 %483, i32 %484)
  %486 = load i32, i32* %17, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %491

488:                                              ; preds = %479
  %489 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %490 = call i32 @ahd_restart(%struct.ahd_softc* %489)
  br label %494

491:                                              ; preds = %479
  %492 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %493 = call i32 @ahd_unpause(%struct.ahd_softc* %492)
  br label %494

494:                                              ; preds = %491, %488
  br label %506

495:                                              ; preds = %338
  %496 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %497 = call i32 @ahd_name(%struct.ahd_softc* %496)
  %498 = load i32, i32* %8, align 4
  %499 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i32 %497, i32 %498)
  %500 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %501 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %500)
  %502 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %503 = call i32 @ahd_clear_intstat(%struct.ahd_softc* %502)
  %504 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %505 = call i32 @ahd_unpause(%struct.ahd_softc* %504)
  br label %506

506:                                              ; preds = %495, %494
  br label %507

507:                                              ; preds = %506, %328
  br label %508

508:                                              ; preds = %507, %317
  br label %509

509:                                              ; preds = %508, %301
  br label %510

510:                                              ; preds = %509, %293
  br label %511

511:                                              ; preds = %510, %277
  br label %512

512:                                              ; preds = %511, %222
  br label %513

513:                                              ; preds = %512, %195
  br label %514

514:                                              ; preds = %513, %183
  br label %515

515:                                              ; preds = %514, %171
  br label %516

516:                                              ; preds = %78, %515, %140
  ret void
}

declare dso_local i32 @ahd_update_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_get_scbptr(%struct.ahd_softc*) #1

declare dso_local %struct.scb* @ahd_lookup_scb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_reset_channel(%struct.ahd_softc*, i8 signext, i32) #1

declare dso_local i32 @ahd_pause(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_setup_iocell_workaround(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_unpause(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_clear_critical_section(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_handle_transmission_error(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_clear_msg_state(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_inw(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_dump_card_state(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_scb_devinfo(%struct.ahd_softc*, %struct.ahd_devinfo*, %struct.scb*) #1

declare dso_local i32 @ahd_set_transaction_status(%struct.scb*, i32) #1

declare dso_local i32 @ahd_freeze_devq(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_handle_devreset(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i8*, i32) #1

declare dso_local i32 @ahd_iocell_first_selection(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_handle_lqiphase_error(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_handle_pkt_busfree(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_handle_nonpkt_busfree(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_clear_fifo(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_restart(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_clear_intstat(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
