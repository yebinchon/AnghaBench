; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_sp_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_sp_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_13__*, %struct.lpfc_dmabuf*, i32, %struct.lpfc_dmabuf*, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__*, i32, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { i32, i32, %struct.lpfc_vport*, %struct.lpfc_nodelist*, %struct.lpfc_dmabuf*, i64, %struct.TYPE_11__ }
%struct.lpfc_vport = type { i32 }
%struct.lpfc_nodelist = type { i32 }
%struct.TYPE_11__ = type { %struct.lpfc_dmabuf }
%struct.lpfc_dmabuf = type { i64, %struct.TYPE_12__, i64, i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@MSIX = common dso_local global i64 0, align 8
@LS_IGNORE_ERATT = common dso_local global i32 0, align 4
@HA_ERATT = common dso_local global i32 0, align 4
@HBA_ERATT_HANDLED = common dso_local global i32 0, align 4
@DEFER_ERATT = common dso_local global i32 0, align 4
@HC_MBINT_ENA = common dso_local global i32 0, align 4
@HC_R2INT_ENA = common dso_local global i32 0, align 4
@HC_LAINT_ENA = common dso_local global i32 0, align 4
@HC_ERINT_ENA = common dso_local global i32 0, align 4
@HA_MBATT = common dso_local global i32 0, align 4
@HA_R2_CLR_MSK = common dso_local global i32 0, align 4
@HA_LATT = common dso_local global i32 0, align 4
@LPFC_PROCESS_LA = common dso_local global i32 0, align 4
@HA_RXMASK = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"ISR slow ring:   ctl:x%x stat:x%x isrcnt:x%x\00", align 1
@HC_R0INT_ENA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"ISR Disable ring:pwork:x%x hawork:x%x wait:x%x\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"ISR slow ring:   pwork:x%x hawork:x%x wait:x%x\00", align 1
@HS_FFER1 = common dso_local global i32 0, align 4
@HS_FFER2 = common dso_local global i32 0, align 4
@HS_FFER3 = common dso_local global i32 0, align 4
@HS_FFER4 = common dso_local global i32 0, align 4
@HS_FFER5 = common dso_local global i32 0, align 4
@HS_FFER6 = common dso_local global i32 0, align 4
@HS_FFER7 = common dso_local global i32 0, align 4
@HS_FFER8 = common dso_local global i32 0, align 4
@OWN_HOST = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"(%d):0304 Stray Mailbox Interrupt mbxCommand x%x mbxStatus x%x\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@MAILBOX_CMD_SIZE = common dso_local global i32 0, align 4
@LPFC_MBX_IMED_UNREG = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_MBOX_VPORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"MBOX dflt rpi: : status:x%x rpi:x%x\00", align 1
@lpfc_mbx_cmpl_dflt_rpi = common dso_local global i64 0, align 8
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_BUSY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"0350 rc should havebeen MBX_BUSY\0A\00", align 1
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@WORKER_MBOX_TMO = common dso_local global i32 0, align 4
@MBX_SUCCESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"0349 rc should be MBX_SUCCESS\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli_sp_intr_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.lpfc_dmabuf*, align 8
  %14 = alloca %struct.lpfc_dmabuf*, align 8
  %15 = alloca %struct.lpfc_vport*, align 8
  %16 = alloca %struct.lpfc_nodelist*, align 8
  %17 = alloca %struct.lpfc_dmabuf*, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.lpfc_hba*
  store %struct.lpfc_hba* %21, %struct.lpfc_hba** %6, align 8
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %23 = icmp ne %struct.lpfc_hba* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @IRQ_NONE, align 4
  store i32 %29, i32* %3, align 4
  br label %647

30:                                               ; preds = %2
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MSIX, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %147

36:                                               ; preds = %30
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %38 = call i64 @lpfc_intr_state_check(%struct.lpfc_hba* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @IRQ_NONE, align 4
  store i32 %41, i32* %3, align 4
  br label %647

42:                                               ; preds = %36
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 7
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %48 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %47, i32 0, i32 15
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @lpfc_readl(i32 %49, i32* %7)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %641

53:                                               ; preds = %42
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %55 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @LS_IGNORE_ERATT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load i32, i32* @HA_ERATT, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %60, %53
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @HA_ERATT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %65
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %72 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @HBA_ERATT_HANDLED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load i32, i32* @HA_ERATT, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %7, align 4
  br label %88

82:                                               ; preds = %70
  %83 = load i32, i32* @HBA_ERATT_HANDLED, align 4
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %85 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %77
  br label %89

89:                                               ; preds = %88, %65
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %91 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @DEFER_ERATT, align 4
  %94 = and i32 %92, %93
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %89
  %98 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %99 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %98, i32 0, i32 7
  %100 = load i64, i64* %11, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* %99, i64 %100)
  %102 = load i32, i32* @IRQ_NONE, align 4
  store i32 %102, i32* %3, align 4
  br label %647

103:                                              ; preds = %89
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %105 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %104, i32 0, i32 13
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @lpfc_readl(i32 %106, i32* %8)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %641

110:                                              ; preds = %103
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @HC_MBINT_ENA, align 4
  %113 = load i32, i32* @HC_R2INT_ENA, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @HC_LAINT_ENA, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @HC_ERINT_ENA, align 4
  %118 = or i32 %116, %117
  %119 = xor i32 %118, -1
  %120 = and i32 %111, %119
  %121 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %122 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %121, i32 0, i32 13
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @writel(i32 %120, i32 %123)
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @HA_MBATT, align 4
  %127 = load i32, i32* @HA_R2_CLR_MSK, align 4
  %128 = or i32 %126, %127
  %129 = and i32 %125, %128
  %130 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %131 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %130, i32 0, i32 15
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @writel(i32 %129, i32 %132)
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %136 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %135, i32 0, i32 13
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @writel(i32 %134, i32 %137)
  %139 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %140 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %139, i32 0, i32 15
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @readl(i32 %141)
  %143 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %144 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %143, i32 0, i32 7
  %145 = load i64, i64* %11, align 8
  %146 = call i32 @spin_unlock_irqrestore(i32* %144, i64 %145)
  br label %151

147:                                              ; preds = %30
  %148 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %149 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %147, %110
  %152 = load i32, i32* %7, align 4
  %153 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %154 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %152, %155
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %639

159:                                              ; preds = %151
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @HA_LATT, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %214

164:                                              ; preds = %159
  %165 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %166 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %165, i32 0, i32 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @LPFC_PROCESS_LA, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %208

172:                                              ; preds = %164
  %173 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %174 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %173, i32 0, i32 7
  %175 = load i64, i64* %11, align 8
  %176 = call i32 @spin_lock_irqsave(i32* %174, i64 %175)
  %177 = load i32, i32* @LPFC_PROCESS_LA, align 4
  %178 = xor i32 %177, -1
  %179 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %180 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %179, i32 0, i32 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = and i32 %182, %178
  store i32 %183, i32* %181, align 8
  %184 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %185 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %184, i32 0, i32 13
  %186 = load i32, i32* %185, align 8
  %187 = call i64 @lpfc_readl(i32 %186, i32* %12)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %172
  br label %641

190:                                              ; preds = %172
  %191 = load i32, i32* @HC_LAINT_ENA, align 4
  %192 = xor i32 %191, -1
  %193 = load i32, i32* %12, align 4
  %194 = and i32 %193, %192
  store i32 %194, i32* %12, align 4
  %195 = load i32, i32* %12, align 4
  %196 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %197 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %196, i32 0, i32 13
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @writel(i32 %195, i32 %198)
  %200 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %201 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %200, i32 0, i32 13
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @readl(i32 %202)
  %204 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %205 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %204, i32 0, i32 7
  %206 = load i64, i64* %11, align 8
  %207 = call i32 @spin_unlock_irqrestore(i32* %205, i64 %206)
  br label %213

208:                                              ; preds = %164
  %209 = load i32, i32* @HA_LATT, align 4
  %210 = xor i32 %209, -1
  %211 = load i32, i32* %9, align 4
  %212 = and i32 %211, %210
  store i32 %212, i32* %9, align 4
  br label %213

213:                                              ; preds = %208, %190
  br label %214

214:                                              ; preds = %213, %159
  %215 = load i32, i32* %9, align 4
  %216 = load i32, i32* @HA_ERATT, align 4
  %217 = load i32, i32* @HA_MBATT, align 4
  %218 = or i32 %216, %217
  %219 = load i32, i32* @HA_LATT, align 4
  %220 = or i32 %218, %219
  %221 = xor i32 %220, -1
  %222 = and i32 %215, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %314

224:                                              ; preds = %214
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* @HA_RXMASK, align 4
  %227 = load i32, i32* @LPFC_ELS_RING, align 4
  %228 = mul nsw i32 4, %227
  %229 = shl i32 %226, %228
  %230 = and i32 %225, %229
  %231 = sext i32 %230 to i64
  store i64 %231, i64* %10, align 8
  %232 = load i32, i32* @LPFC_ELS_RING, align 4
  %233 = mul nsw i32 4, %232
  %234 = load i64, i64* %10, align 8
  %235 = zext i32 %233 to i64
  %236 = lshr i64 %234, %235
  store i64 %236, i64* %10, align 8
  %237 = load i64, i64* %10, align 8
  %238 = load i32, i32* @HA_RXMASK, align 4
  %239 = sext i32 %238 to i64
  %240 = and i64 %237, %239
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %313

242:                                              ; preds = %224
  %243 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %244 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %243, i32 0, i32 7
  %245 = load i64, i64* %11, align 8
  %246 = call i32 @spin_lock_irqsave(i32* %244, i64 %245)
  %247 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %248 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %247, i32 0, i32 13
  %249 = load i32, i32* %248, align 8
  %250 = call i64 @lpfc_readl(i32 %249, i32* %12)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %242
  br label %641

253:                                              ; preds = %242
  %254 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %255 = load i32, i32* %12, align 4
  %256 = load i64, i64* %10, align 8
  %257 = trunc i64 %256 to i32
  %258 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %259 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %258, i32 0, i32 8
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = trunc i64 %262 to i32
  %264 = call i32 @lpfc_debugfs_slow_ring_trc(%struct.lpfc_hba* %254, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %255, i32 %257, i32 %263)
  %265 = load i32, i32* %12, align 4
  %266 = load i32, i32* @HC_R0INT_ENA, align 4
  %267 = load i32, i32* @LPFC_ELS_RING, align 4
  %268 = shl i32 %266, %267
  %269 = and i32 %265, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %297

271:                                              ; preds = %253
  %272 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %273 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %274 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* %9, align 4
  %277 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %278 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %277, i32 0, i32 14
  %279 = ptrtoint i32* %278 to i64
  %280 = trunc i64 %279 to i32
  %281 = call i32 @lpfc_debugfs_slow_ring_trc(%struct.lpfc_hba* %272, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %275, i32 %276, i32 %280)
  %282 = load i32, i32* @HC_R0INT_ENA, align 4
  %283 = load i32, i32* @LPFC_ELS_RING, align 4
  %284 = shl i32 %282, %283
  %285 = xor i32 %284, -1
  %286 = load i32, i32* %12, align 4
  %287 = and i32 %286, %285
  store i32 %287, i32* %12, align 4
  %288 = load i32, i32* %12, align 4
  %289 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %290 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %289, i32 0, i32 13
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @writel(i32 %288, i32 %291)
  %293 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %294 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %293, i32 0, i32 13
  %295 = load i32, i32* %294, align 8
  %296 = call i32 @readl(i32 %295)
  br label %308

297:                                              ; preds = %253
  %298 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %299 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %300 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %299, i32 0, i32 5
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* %9, align 4
  %303 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %304 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %303, i32 0, i32 14
  %305 = ptrtoint i32* %304 to i64
  %306 = trunc i64 %305 to i32
  %307 = call i32 @lpfc_debugfs_slow_ring_trc(%struct.lpfc_hba* %298, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %301, i32 %302, i32 %306)
  br label %308

308:                                              ; preds = %297, %271
  %309 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %310 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %309, i32 0, i32 7
  %311 = load i64, i64* %11, align 8
  %312 = call i32 @spin_unlock_irqrestore(i32* %310, i64 %311)
  br label %313

313:                                              ; preds = %308, %224
  br label %314

314:                                              ; preds = %313, %214
  %315 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %316 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %315, i32 0, i32 7
  %317 = load i64, i64* %11, align 8
  %318 = call i32 @spin_lock_irqsave(i32* %316, i64 %317)
  %319 = load i32, i32* %9, align 4
  %320 = load i32, i32* @HA_ERATT, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %369

323:                                              ; preds = %314
  %324 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %325 = call i64 @lpfc_sli_read_hs(%struct.lpfc_hba* %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %323
  br label %641

328:                                              ; preds = %323
  %329 = load i32, i32* @HS_FFER1, align 4
  %330 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %331 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %330, i32 0, i32 6
  %332 = load i32, i32* %331, align 4
  %333 = and i32 %329, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %368

335:                                              ; preds = %328
  %336 = load i32, i32* @HS_FFER2, align 4
  %337 = load i32, i32* @HS_FFER3, align 4
  %338 = or i32 %336, %337
  %339 = load i32, i32* @HS_FFER4, align 4
  %340 = or i32 %338, %339
  %341 = load i32, i32* @HS_FFER5, align 4
  %342 = or i32 %340, %341
  %343 = load i32, i32* @HS_FFER6, align 4
  %344 = or i32 %342, %343
  %345 = load i32, i32* @HS_FFER7, align 4
  %346 = or i32 %344, %345
  %347 = load i32, i32* @HS_FFER8, align 4
  %348 = or i32 %346, %347
  %349 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %350 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %349, i32 0, i32 6
  %351 = load i32, i32* %350, align 4
  %352 = and i32 %348, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %368

354:                                              ; preds = %335
  %355 = load i32, i32* @DEFER_ERATT, align 4
  %356 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %357 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 4
  %359 = or i32 %358, %355
  store i32 %359, i32* %357, align 4
  %360 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %361 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %360, i32 0, i32 13
  %362 = load i32, i32* %361, align 8
  %363 = call i32 @writel(i32 0, i32 %362)
  %364 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %365 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %364, i32 0, i32 13
  %366 = load i32, i32* %365, align 8
  %367 = call i32 @readl(i32 %366)
  br label %368

368:                                              ; preds = %354, %335, %328
  br label %369

369:                                              ; preds = %368, %314
  %370 = load i32, i32* %9, align 4
  %371 = load i32, i32* @HA_MBATT, align 4
  %372 = and i32 %370, %371
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %585

374:                                              ; preds = %369
  %375 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %376 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %375, i32 0, i32 8
  %377 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %376, i32 0, i32 1
  %378 = load %struct.TYPE_15__*, %struct.TYPE_15__** %377, align 8
  %379 = icmp ne %struct.TYPE_15__* %378, null
  br i1 %379, label %380, label %585

380:                                              ; preds = %374
  %381 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %382 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %381, i32 0, i32 8
  %383 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %382, i32 0, i32 1
  %384 = load %struct.TYPE_15__*, %struct.TYPE_15__** %383, align 8
  store %struct.TYPE_15__* %384, %struct.TYPE_15__** %18, align 8
  %385 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %386 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %385, i32 0, i32 6
  %387 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %386, i32 0, i32 0
  store %struct.lpfc_dmabuf* %387, %struct.lpfc_dmabuf** %14, align 8
  %388 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %389 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %388, i32 0, i32 12
  %390 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %389, align 8
  store %struct.lpfc_dmabuf* %390, %struct.lpfc_dmabuf** %13, align 8
  %391 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %392 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %391, i32 0, i32 2
  %393 = load %struct.lpfc_vport*, %struct.lpfc_vport** %392, align 8
  store %struct.lpfc_vport* %393, %struct.lpfc_vport** %15, align 8
  %394 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %395 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %396 = call i32 @lpfc_sli_pcimem_bcopy(%struct.lpfc_dmabuf* %394, %struct.lpfc_dmabuf* %395, i32 4)
  %397 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %398 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %397, i32 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = load i64, i64* @OWN_HOST, align 8
  %401 = icmp ne i64 %399, %400
  br i1 %401, label %402, label %432

402:                                              ; preds = %380
  %403 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %404 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %403, i32 0, i32 7
  %405 = load i64, i64* %11, align 8
  %406 = call i32 @spin_unlock_irqrestore(i32* %404, i64 %405)
  %407 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %408 = load i32, i32* @KERN_ERR, align 4
  %409 = load i32, i32* @LOG_MBOX, align 4
  %410 = load i32, i32* @LOG_SLI, align 4
  %411 = or i32 %409, %410
  %412 = load %struct.lpfc_vport*, %struct.lpfc_vport** %15, align 8
  %413 = icmp ne %struct.lpfc_vport* %412, null
  br i1 %413, label %414, label %418

414:                                              ; preds = %402
  %415 = load %struct.lpfc_vport*, %struct.lpfc_vport** %15, align 8
  %416 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  br label %419

418:                                              ; preds = %402
  br label %419

419:                                              ; preds = %418, %414
  %420 = phi i32 [ %417, %414 ], [ 0, %418 ]
  %421 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %422 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %421, i32 0, i32 3
  %423 = load i32, i32* %422, align 8
  %424 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %425 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %424, i32 0, i32 2
  %426 = load i64, i64* %425, align 8
  %427 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %407, i32 %408, i32 %411, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %420, i32 %423, i64 %426)
  %428 = load i32, i32* @HA_MBATT, align 4
  %429 = xor i32 %428, -1
  %430 = load i32, i32* %9, align 4
  %431 = and i32 %430, %429
  store i32 %431, i32* %9, align 4
  br label %584

432:                                              ; preds = %380
  %433 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %434 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %433, i32 0, i32 8
  %435 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %434, i32 0, i32 1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %435, align 8
  %436 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %437 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %436, i32 0, i32 7
  %438 = load i64, i64* %11, align 8
  %439 = call i32 @spin_unlock_irqrestore(i32* %437, i64 %438)
  %440 = load i32, i32* @jiffies, align 4
  %441 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %442 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %441, i32 0, i32 11
  store i32 %440, i32* %442, align 8
  %443 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %444 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %443, i32 0, i32 8
  %445 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %444, i32 0, i32 2
  %446 = call i32 @del_timer(i32* %445)
  %447 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %448 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %447, i32 0, i32 5
  %449 = load i64, i64* %448, align 8
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %477

451:                                              ; preds = %432
  %452 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %453 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %454 = load i32, i32* @MAILBOX_CMD_SIZE, align 4
  %455 = call i32 @lpfc_sli_pcimem_bcopy(%struct.lpfc_dmabuf* %452, %struct.lpfc_dmabuf* %453, i32 %454)
  %456 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %457 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 8
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %476

460:                                              ; preds = %451
  %461 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %462 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %461, i32 0, i32 4
  %463 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %462, align 8
  %464 = icmp ne %struct.lpfc_dmabuf* %463, null
  br i1 %464, label %465, label %476

465:                                              ; preds = %460
  %466 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %467 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %466, i32 0, i32 10
  %468 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %467, align 8
  %469 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %470 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %469, i32 0, i32 4
  %471 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %470, align 8
  %472 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %473 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 8
  %475 = call i32 @lpfc_sli_pcimem_bcopy(%struct.lpfc_dmabuf* %468, %struct.lpfc_dmabuf* %471, i32 %474)
  br label %476

476:                                              ; preds = %465, %460, %451
  br label %477

477:                                              ; preds = %476, %432
  %478 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %479 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 4
  %481 = load i32, i32* @LPFC_MBX_IMED_UNREG, align 4
  %482 = and i32 %480, %481
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %560

484:                                              ; preds = %477
  %485 = load i32, i32* @LPFC_MBX_IMED_UNREG, align 4
  %486 = xor i32 %485, -1
  %487 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %488 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %487, i32 0, i32 1
  %489 = load i32, i32* %488, align 4
  %490 = and i32 %489, %486
  store i32 %490, i32* %488, align 4
  %491 = load %struct.lpfc_vport*, %struct.lpfc_vport** %15, align 8
  %492 = load i32, i32* @LPFC_DISC_TRC_MBOX_VPORT, align 4
  %493 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %494 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %493, i32 0, i32 2
  %495 = load i64, i64* %494, align 8
  %496 = trunc i64 %495 to i32
  %497 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %498 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %497, i32 0, i32 1
  %499 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %498, i32 0, i32 0
  %500 = load i32*, i32** %499, align 8
  %501 = getelementptr inbounds i32, i32* %500, i64 0
  %502 = load i32, i32* %501, align 4
  %503 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %491, i32 %492, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %496, i32 %502, i32 0)
  %504 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %505 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %504, i32 0, i32 2
  %506 = load i64, i64* %505, align 8
  %507 = icmp ne i64 %506, 0
  br i1 %507, label %559, label %508

508:                                              ; preds = %484
  %509 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %510 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %509, i32 0, i32 4
  %511 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %510, align 8
  store %struct.lpfc_dmabuf* %511, %struct.lpfc_dmabuf** %17, align 8
  %512 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %513 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %512, i32 0, i32 3
  %514 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %513, align 8
  store %struct.lpfc_nodelist* %514, %struct.lpfc_nodelist** %16, align 8
  %515 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %516 = load %struct.lpfc_vport*, %struct.lpfc_vport** %15, align 8
  %517 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 4
  %519 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %520 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %519, i32 0, i32 1
  %521 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %520, i32 0, i32 0
  %522 = load i32*, i32** %521, align 8
  %523 = getelementptr inbounds i32, i32* %522, i64 0
  %524 = load i32, i32* %523, align 4
  %525 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %526 = call i32 @lpfc_unreg_login(%struct.lpfc_hba* %515, i32 %518, i32 %524, %struct.TYPE_15__* %525)
  %527 = load i64, i64* @lpfc_mbx_cmpl_dflt_rpi, align 8
  %528 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %529 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %528, i32 0, i32 5
  store i64 %527, i64* %529, align 8
  %530 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %17, align 8
  %531 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %532 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %531, i32 0, i32 4
  store %struct.lpfc_dmabuf* %530, %struct.lpfc_dmabuf** %532, align 8
  %533 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %16, align 8
  %534 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %535 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %534, i32 0, i32 3
  store %struct.lpfc_nodelist* %533, %struct.lpfc_nodelist** %535, align 8
  %536 = load %struct.lpfc_vport*, %struct.lpfc_vport** %15, align 8
  %537 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %538 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %537, i32 0, i32 2
  store %struct.lpfc_vport* %536, %struct.lpfc_vport** %538, align 8
  %539 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %540 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %541 = load i32, i32* @MBX_NOWAIT, align 4
  %542 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %539, %struct.TYPE_15__* %540, i32 %541)
  store i32 %542, i32* %19, align 4
  %543 = load i32, i32* %19, align 4
  %544 = load i32, i32* @MBX_BUSY, align 4
  %545 = icmp ne i32 %543, %544
  br i1 %545, label %546, label %553

546:                                              ; preds = %508
  %547 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %548 = load i32, i32* @KERN_ERR, align 4
  %549 = load i32, i32* @LOG_MBOX, align 4
  %550 = load i32, i32* @LOG_SLI, align 4
  %551 = or i32 %549, %550
  %552 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %547, i32 %548, i32 %551, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %553

553:                                              ; preds = %546, %508
  %554 = load i32, i32* %19, align 4
  %555 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %556 = icmp ne i32 %554, %555
  br i1 %556, label %557, label %558

557:                                              ; preds = %553
  br label %602

558:                                              ; preds = %553
  br label %559

559:                                              ; preds = %558, %484
  br label %560

560:                                              ; preds = %559, %477
  %561 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %562 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %561, i32 0, i32 9
  %563 = load %struct.TYPE_13__*, %struct.TYPE_13__** %562, align 8
  %564 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %563, i32 0, i32 0
  %565 = load i64, i64* %11, align 8
  %566 = call i32 @spin_lock_irqsave(i32* %564, i64 %565)
  %567 = load i32, i32* @WORKER_MBOX_TMO, align 4
  %568 = xor i32 %567, -1
  %569 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %570 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %569, i32 0, i32 9
  %571 = load %struct.TYPE_13__*, %struct.TYPE_13__** %570, align 8
  %572 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %571, i32 0, i32 1
  %573 = load i32, i32* %572, align 4
  %574 = and i32 %573, %568
  store i32 %574, i32* %572, align 4
  %575 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %576 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %575, i32 0, i32 9
  %577 = load %struct.TYPE_13__*, %struct.TYPE_13__** %576, align 8
  %578 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %577, i32 0, i32 0
  %579 = load i64, i64* %11, align 8
  %580 = call i32 @spin_unlock_irqrestore(i32* %578, i64 %579)
  %581 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %582 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %583 = call i32 @lpfc_mbox_cmpl_put(%struct.lpfc_hba* %581, %struct.TYPE_15__* %582)
  br label %584

584:                                              ; preds = %560, %419
  br label %590

585:                                              ; preds = %374, %369
  %586 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %587 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %586, i32 0, i32 7
  %588 = load i64, i64* %11, align 8
  %589 = call i32 @spin_unlock_irqrestore(i32* %587, i64 %588)
  br label %590

590:                                              ; preds = %585, %584
  %591 = load i32, i32* %9, align 4
  %592 = load i32, i32* @HA_MBATT, align 4
  %593 = and i32 %591, %592
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %595, label %623

595:                                              ; preds = %590
  %596 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %597 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %596, i32 0, i32 8
  %598 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %597, i32 0, i32 1
  %599 = load %struct.TYPE_15__*, %struct.TYPE_15__** %598, align 8
  %600 = icmp eq %struct.TYPE_15__* %599, null
  br i1 %600, label %601, label %623

601:                                              ; preds = %595
  br label %602

602:                                              ; preds = %601, %557
  br label %603

603:                                              ; preds = %607, %602
  %604 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %605 = load i32, i32* @MBX_NOWAIT, align 4
  %606 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %604, %struct.TYPE_15__* null, i32 %605)
  store i32 %606, i32* %19, align 4
  br label %607

607:                                              ; preds = %603
  %608 = load i32, i32* %19, align 4
  %609 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %610 = icmp eq i32 %608, %609
  br i1 %610, label %603, label %611

611:                                              ; preds = %607
  %612 = load i32, i32* %19, align 4
  %613 = load i32, i32* @MBX_SUCCESS, align 4
  %614 = icmp ne i32 %612, %613
  br i1 %614, label %615, label %622

615:                                              ; preds = %611
  %616 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %617 = load i32, i32* @KERN_ERR, align 4
  %618 = load i32, i32* @LOG_MBOX, align 4
  %619 = load i32, i32* @LOG_SLI, align 4
  %620 = or i32 %618, %619
  %621 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %616, i32 %617, i32 %620, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %622

622:                                              ; preds = %615, %611
  br label %623

623:                                              ; preds = %622, %595, %590
  %624 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %625 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %624, i32 0, i32 7
  %626 = load i64, i64* %11, align 8
  %627 = call i32 @spin_lock_irqsave(i32* %625, i64 %626)
  %628 = load i32, i32* %9, align 4
  %629 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %630 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %629, i32 0, i32 5
  %631 = load i32, i32* %630, align 8
  %632 = or i32 %631, %628
  store i32 %632, i32* %630, align 8
  %633 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %634 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %633, i32 0, i32 7
  %635 = load i64, i64* %11, align 8
  %636 = call i32 @spin_unlock_irqrestore(i32* %634, i64 %635)
  %637 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %638 = call i32 @lpfc_worker_wake_up(%struct.lpfc_hba* %637)
  br label %639

639:                                              ; preds = %623, %151
  %640 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %640, i32* %3, align 4
  br label %647

641:                                              ; preds = %327, %252, %189, %109, %52
  %642 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %643 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %642, i32 0, i32 7
  %644 = load i64, i64* %11, align 8
  %645 = call i32 @spin_unlock_irqrestore(i32* %643, i64 %644)
  %646 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %646, i32* %3, align 4
  br label %647

647:                                              ; preds = %641, %639, %97, %40, %28
  %648 = load i32, i32* %3, align 4
  ret i32 %648
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @lpfc_intr_state_check(%struct.lpfc_hba*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @lpfc_readl(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @lpfc_debugfs_slow_ring_trc(%struct.lpfc_hba*, i8*, i32, i32, i32) #1

declare dso_local i64 @lpfc_sli_read_hs(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli_pcimem_bcopy(%struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_unreg_login(%struct.lpfc_hba*, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @lpfc_mbox_cmpl_put(%struct.lpfc_hba*, %struct.TYPE_15__*) #1

declare dso_local i32 @lpfc_worker_wake_up(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
