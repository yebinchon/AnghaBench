; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_handle_fast_ring_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_handle_fast_ring_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32*, %struct.TYPE_10__*, i32, %struct.TYPE_9__*, i32 (%struct.lpfc_hba*)*, i32, i32, %struct.lpfc_pgp* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.lpfc_pgp = type { i32, i32 }
%struct.lpfc_sli_ring = type { i64, i32, i32 (%struct.lpfc_hba.0*, %struct.lpfc_sli_ring*)*, %struct.TYPE_12__, %struct.TYPE_13__ }
%struct.lpfc_hba.0 = type opaque
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }
%struct.lpfc_iocbq = type { i32, i32 (%struct.lpfc_hba.1*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, %struct.TYPE_15__, i32 }
%struct.lpfc_hba.1 = type opaque

@jiffies = common dso_local global i32 0, align 4
@CMD_IOCB_MASK = common dso_local global i32 0, align 4
@IOSTAT_LOCAL_REJECT = common dso_local global i32 0, align 4
@IOERR_PARAM_MASK = common dso_local global i32 0, align 4
@IOERR_NO_RESOURCES = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"0336 Rsp Ring %d error: IOCB Data: x%x x%x x%x x%x x%x x%x x%x x%x\0A\00", align 1
@CMD_XRI_ABORTED_CX = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"0333 IOCB cmd 0x%x processed. Skipping completion\0A\00", align 1
@LPFC_DRIVER_ABORTED = common dso_local global i32 0, align 4
@CMD_ADAPTER_MSG = common dso_local global i32 0, align 4
@LPFC_MAX_ADPTMSG = common dso_local global i32 0, align 4
@MAX_MSG_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"lpfc%d: %s\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"0334 Unknown IOCB command Data: x%x, x%x x%x x%x x%x\0A\00", align 1
@HA_R0RE_REQ = common dso_local global i64 0, align 8
@CA_R0ATT = common dso_local global i32 0, align 4
@CA_R0RE_RSP = common dso_local global i32 0, align 4
@HA_R0CE_RSP = common dso_local global i64 0, align 8
@LPFC_CALL_RING_AVAILABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli_handle_fast_ring_event(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_sli_ring*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.lpfc_pgp*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.lpfc_iocbq*, align 8
  %12 = alloca %struct.lpfc_iocbq, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %6, align 8
  store i64 %2, i64* %7, align 8
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 9
  %24 = load %struct.lpfc_pgp*, %struct.lpfc_pgp** %23, align 8
  %25 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %26 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.lpfc_pgp, %struct.lpfc_pgp* %24, i64 %27
  store %struct.lpfc_pgp* %28, %struct.lpfc_pgp** %8, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %10, align 8
  store %struct.lpfc_iocbq* null, %struct.lpfc_iocbq** %11, align 8
  store i32 1, i32* %16, align 4
  store i64 0, i64* %19, align 8
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %30 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %29, i32 0, i32 1
  %31 = load i64, i64* %18, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %34 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %39 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %15, align 8
  %43 = load %struct.lpfc_pgp*, %struct.lpfc_pgp** %8, align 8
  %44 = getelementptr inbounds %struct.lpfc_pgp, %struct.lpfc_pgp* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @le32_to_cpu(i32 %45)
  store i64 %46, i64* %14, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* %15, align 8
  %49 = icmp sge i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %3
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %55 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %56 = call i32 @lpfc_sli_rsp_pointers_error(%struct.lpfc_hba* %54, %struct.lpfc_sli_ring* %55)
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 1
  %59 = load i64, i64* %18, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  store i32 1, i32* %4, align 4
  br label %468

61:                                               ; preds = %3
  %62 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %63 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %68 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %67, i32 0, i32 1
  %69 = load i64, i64* %18, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  store i32 1, i32* %4, align 4
  br label %468

71:                                               ; preds = %61
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %73 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %71
  %75 = call i32 (...) @rmb()
  br label %76

76:                                               ; preds = %378, %74
  %77 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %78 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %14, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %379

84:                                               ; preds = %76
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %86 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %87 = call %struct.TYPE_15__* @lpfc_resp_iocb(%struct.lpfc_hba* %85, %struct.lpfc_sli_ring* %86)
  store %struct.TYPE_15__* %87, %struct.TYPE_15__** %10, align 8
  %88 = load i32, i32* @jiffies, align 4
  %89 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %90 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %89, i32 0, i32 8
  store i32 %88, i32* %90, align 4
  %91 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %92 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = load i64, i64* %15, align 8
  %98 = icmp sge i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %84
  %100 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %101 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %99, %84
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %106 = bitcast %struct.TYPE_15__* %105 to i64*
  %107 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %12, i32 0, i32 2
  %108 = bitcast %struct.TYPE_15__* %107 to i64*
  %109 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %110 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @lpfc_sli_pcimem_bcopy(i64* %106, i64* %108, i32 %111)
  %113 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %12, i32 0, i32 3
  %114 = call i32 @INIT_LIST_HEAD(i32* %113)
  %115 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %12, i32 0, i32 2
  store %struct.TYPE_15__* %115, %struct.TYPE_15__** %9, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @CMD_IOCB_MASK, align 4
  %120 = and i32 %118, %119
  %121 = call i32 @lpfc_sli_iocb_cmd_type(i32 %120)
  store i32 %121, i32* %17, align 4
  %122 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %123 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 8
  %127 = load i64, i64* %19, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %19, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @unlikely(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %219

134:                                              ; preds = %104
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @IOSTAT_LOCAL_REJECT, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %165

140:                                              ; preds = %134
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 4
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @IOERR_PARAM_MASK, align 4
  %148 = and i32 %146, %147
  %149 = load i32, i32* @IOERR_NO_RESOURCES, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %165

151:                                              ; preds = %140
  %152 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %153 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %152, i32 0, i32 1
  %154 = load i64, i64* %18, align 8
  %155 = call i32 @spin_unlock_irqrestore(i32* %153, i64 %154)
  %156 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %157 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %156, i32 0, i32 6
  %158 = load i32 (%struct.lpfc_hba*)*, i32 (%struct.lpfc_hba*)** %157, align 8
  %159 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %160 = call i32 %158(%struct.lpfc_hba* %159)
  %161 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %162 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %161, i32 0, i32 1
  %163 = load i64, i64* %18, align 8
  %164 = call i32 @spin_lock_irqsave(i32* %162, i64 %163)
  br label %165

165:                                              ; preds = %151, %140, %134
  %166 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %167 = load i32, i32* @KERN_WARNING, align 4
  %168 = load i32, i32* @LOG_SLI, align 4
  %169 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %170 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = trunc i64 %171 to i32
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 5
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 5
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 2
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 3
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 5
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 4
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 5
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 5
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 4
  %211 = bitcast i32* %210 to i64*
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 4
  %215 = bitcast i32* %214 to i64*
  %216 = getelementptr inbounds i64, i64* %215, i64 1
  %217 = load i64, i64* %216, align 8
  %218 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %166, i32 %167, i32 %168, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %172, i32 %178, i32 %184, i32 %190, i32 %196, i32 %202, i32 %208, i64 %212, i64 %217)
  br label %219

219:                                              ; preds = %165, %104
  %220 = load i32, i32* %17, align 4
  switch i32 %220, label %305 [
    i32 130, label %221
    i32 129, label %221
    i32 128, label %293
  ]

221:                                              ; preds = %219, %219
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @CMD_XRI_ABORTED_CX, align 4
  %226 = icmp eq i32 %224, %225
  %227 = zext i1 %226 to i32
  %228 = call i64 @unlikely(i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %238

230:                                              ; preds = %221
  %231 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %232 = load i32, i32* @KERN_INFO, align 4
  %233 = load i32, i32* @LOG_SLI, align 4
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %231, i32 %232, i32 %233, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %236)
  br label %351

238:                                              ; preds = %221
  %239 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %240 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %239, i32 0, i32 1
  %241 = load i64, i64* %18, align 8
  %242 = call i32 @spin_unlock_irqrestore(i32* %240, i64 %241)
  %243 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %244 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %245 = call %struct.lpfc_iocbq* @lpfc_sli_iocbq_lookup(%struct.lpfc_hba* %243, %struct.lpfc_sli_ring* %244, %struct.lpfc_iocbq* %12)
  store %struct.lpfc_iocbq* %245, %struct.lpfc_iocbq** %11, align 8
  %246 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %247 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %246, i32 0, i32 1
  %248 = load i64, i64* %18, align 8
  %249 = call i32 @spin_lock_irqsave(i32* %247, i64 %248)
  %250 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %251 = icmp ne %struct.lpfc_iocbq* %250, null
  %252 = xor i1 %251, true
  %253 = zext i1 %252 to i32
  %254 = call i64 @unlikely(i32 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %238
  br label %351

257:                                              ; preds = %238
  %258 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %259 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @LPFC_DRIVER_ABORTED, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %271

264:                                              ; preds = %257
  %265 = load i32, i32* @LPFC_DRIVER_ABORTED, align 4
  %266 = xor i32 %265, -1
  %267 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %268 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = and i32 %269, %266
  store i32 %270, i32* %268, align 8
  br label %271

271:                                              ; preds = %264, %257
  %272 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %273 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %272, i32 0, i32 1
  %274 = load i32 (%struct.lpfc_hba.1*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, i32 (%struct.lpfc_hba.1*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %273, align 8
  %275 = icmp ne i32 (%struct.lpfc_hba.1*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* %274, null
  br i1 %275, label %276, label %292

276:                                              ; preds = %271
  %277 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %278 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %277, i32 0, i32 1
  %279 = load i64, i64* %18, align 8
  %280 = call i32 @spin_unlock_irqrestore(i32* %278, i64 %279)
  %281 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %282 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %281, i32 0, i32 1
  %283 = load i32 (%struct.lpfc_hba.1*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, i32 (%struct.lpfc_hba.1*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %282, align 8
  %284 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %285 = bitcast %struct.lpfc_hba* %284 to %struct.lpfc_hba.1*
  %286 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %287 = call i32 %283(%struct.lpfc_hba.1* %285, %struct.lpfc_iocbq* %286, %struct.lpfc_iocbq* %12)
  %288 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %289 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %288, i32 0, i32 1
  %290 = load i64, i64* %18, align 8
  %291 = call i32 @spin_lock_irqsave(i32* %289, i64 %290)
  br label %292

292:                                              ; preds = %276, %271
  br label %351

293:                                              ; preds = %219
  %294 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %295 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %294, i32 0, i32 1
  %296 = load i64, i64* %18, align 8
  %297 = call i32 @spin_unlock_irqrestore(i32* %295, i64 %296)
  %298 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %299 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %300 = call i32 @lpfc_sli_process_unsol_iocb(%struct.lpfc_hba* %298, %struct.lpfc_sli_ring* %299, %struct.lpfc_iocbq* %12)
  %301 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %302 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %301, i32 0, i32 1
  %303 = load i64, i64* %18, align 8
  %304 = call i32 @spin_lock_irqsave(i32* %302, i64 %303)
  br label %351

305:                                              ; preds = %219
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @CMD_ADAPTER_MSG, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %311, label %332

311:                                              ; preds = %305
  %312 = load i32, i32* @LPFC_MAX_ADPTMSG, align 4
  %313 = zext i32 %312 to i64
  %314 = call i8* @llvm.stacksave()
  store i8* %314, i8** %20, align 8
  %315 = alloca i8, i64 %313, align 16
  store i64 %313, i64* %21, align 8
  %316 = load i32, i32* @LPFC_MAX_ADPTMSG, align 4
  %317 = call i32 @memset(i8* %315, i32 0, i32 %316)
  %318 = getelementptr inbounds i8, i8* %315, i64 0
  %319 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %320 = bitcast %struct.TYPE_15__* %319 to i32*
  %321 = load i32, i32* @MAX_MSG_DATA, align 4
  %322 = call i32 @memcpy(i8* %318, i32* %320, i32 %321)
  %323 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %324 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %323, i32 0, i32 5
  %325 = load %struct.TYPE_9__*, %struct.TYPE_9__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %325, i32 0, i32 0
  %327 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %328 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %327, i32 0, i32 4
  %329 = load i32, i32* %328, align 8
  %330 = call i32 @dev_warn(i32* %326, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %329, i8* %315)
  %331 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %331)
  br label %350

332:                                              ; preds = %305
  %333 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %334 = load i32, i32* @KERN_ERR, align 4
  %335 = load i32, i32* @LOG_SLI, align 4
  %336 = load i32, i32* %17, align 4
  %337 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %338 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %341 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 3
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %347 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 8
  %349 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %333, i32 %334, i32 %335, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %336, i32 %339, i32 %342, i32 %345, i32 %348)
  br label %350

350:                                              ; preds = %332, %311
  br label %351

351:                                              ; preds = %350, %293, %292, %256, %230
  %352 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %353 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %352, i32 0, i32 3
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %358 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %357, i32 0, i32 3
  %359 = load %struct.TYPE_10__*, %struct.TYPE_10__** %358, align 8
  %360 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %361 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %359, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %363, i32 0, i32 0
  %365 = call i32 @writel(i64 %356, i32* %364)
  %366 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %367 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %366, i32 0, i32 3
  %368 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 1
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* %14, align 8
  %372 = icmp eq i64 %370, %371
  br i1 %372, label %373, label %378

373:                                              ; preds = %351
  %374 = load %struct.lpfc_pgp*, %struct.lpfc_pgp** %8, align 8
  %375 = getelementptr inbounds %struct.lpfc_pgp, %struct.lpfc_pgp* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = call i64 @le32_to_cpu(i32 %376)
  store i64 %377, i64* %14, align 8
  br label %378

378:                                              ; preds = %373, %351
  br label %76

379:                                              ; preds = %76
  %380 = load i64, i64* %19, align 8
  %381 = icmp sgt i64 %380, 0
  br i1 %381, label %382, label %412

382:                                              ; preds = %379
  %383 = load i64, i64* %7, align 8
  %384 = load i64, i64* @HA_R0RE_REQ, align 8
  %385 = and i64 %383, %384
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %412

387:                                              ; preds = %382
  %388 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %389 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %388, i32 0, i32 4
  %390 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %390, align 4
  %393 = load i32, i32* @CA_R0ATT, align 4
  %394 = load i32, i32* @CA_R0RE_RSP, align 4
  %395 = or i32 %393, %394
  %396 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %397 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %396, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = mul i64 %398, 4
  %400 = trunc i64 %399 to i32
  %401 = shl i32 %395, %400
  %402 = sext i32 %401 to i64
  store i64 %402, i64* %13, align 8
  %403 = load i64, i64* %13, align 8
  %404 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %405 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %404, i32 0, i32 2
  %406 = load i32*, i32** %405, align 8
  %407 = call i32 @writel(i64 %403, i32* %406)
  %408 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %409 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %408, i32 0, i32 2
  %410 = load i32*, i32** %409, align 8
  %411 = call i32 @readl(i32* %410)
  br label %412

412:                                              ; preds = %387, %382, %379
  %413 = load i64, i64* %7, align 8
  %414 = load i64, i64* @HA_R0CE_RSP, align 8
  %415 = and i64 %413, %414
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %460

417:                                              ; preds = %412
  %418 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %419 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 8
  %421 = load i32, i32* @LPFC_CALL_RING_AVAILABLE, align 4
  %422 = and i32 %420, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %460

424:                                              ; preds = %417
  %425 = load i32, i32* @LPFC_CALL_RING_AVAILABLE, align 4
  %426 = xor i32 %425, -1
  %427 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %428 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 8
  %430 = and i32 %429, %426
  store i32 %430, i32* %428, align 8
  %431 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %432 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %431, i32 0, i32 4
  %433 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %433, align 8
  %436 = load %struct.lpfc_pgp*, %struct.lpfc_pgp** %8, align 8
  %437 = getelementptr inbounds %struct.lpfc_pgp, %struct.lpfc_pgp* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 4
  %439 = call i64 @le32_to_cpu(i32 %438)
  %440 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %441 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %440, i32 0, i32 3
  %442 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %442, i32 0, i32 2
  store i64 %439, i64* %443, align 8
  %444 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %445 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %446 = call i32 @lpfc_sli_resume_iocb(%struct.lpfc_hba* %444, %struct.lpfc_sli_ring* %445)
  %447 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %448 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %447, i32 0, i32 2
  %449 = load i32 (%struct.lpfc_hba.0*, %struct.lpfc_sli_ring*)*, i32 (%struct.lpfc_hba.0*, %struct.lpfc_sli_ring*)** %448, align 8
  %450 = icmp ne i32 (%struct.lpfc_hba.0*, %struct.lpfc_sli_ring*)* %449, null
  br i1 %450, label %451, label %459

451:                                              ; preds = %424
  %452 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %453 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %452, i32 0, i32 2
  %454 = load i32 (%struct.lpfc_hba.0*, %struct.lpfc_sli_ring*)*, i32 (%struct.lpfc_hba.0*, %struct.lpfc_sli_ring*)** %453, align 8
  %455 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %456 = bitcast %struct.lpfc_hba* %455 to %struct.lpfc_hba.0*
  %457 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %458 = call i32 %454(%struct.lpfc_hba.0* %456, %struct.lpfc_sli_ring* %457)
  br label %459

459:                                              ; preds = %451, %424
  br label %460

460:                                              ; preds = %459, %417, %412
  %461 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %462 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %461, i32 0, i32 0
  store i32 0, i32* %462, align 8
  %463 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %464 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %463, i32 0, i32 1
  %465 = load i64, i64* %18, align 8
  %466 = call i32 @spin_unlock_irqrestore(i32* %464, i64 %465)
  %467 = load i32, i32* %16, align 4
  store i32 %467, i32* %4, align 4
  br label %468

468:                                              ; preds = %460, %66, %53
  %469 = load i32, i32* %4, align 4
  ret i32 %469
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lpfc_sli_rsp_pointers_error(%struct.lpfc_hba*, %struct.lpfc_sli_ring*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rmb(...) #1

declare dso_local %struct.TYPE_15__* @lpfc_resp_iocb(%struct.lpfc_hba*, %struct.lpfc_sli_ring*) #1

declare dso_local i32 @lpfc_sli_pcimem_bcopy(i64*, i64*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @lpfc_sli_iocb_cmd_type(i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, ...) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_sli_iocbq_lookup(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_sli_process_unsol_iocb(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @writel(i64, i32*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @lpfc_sli_resume_iocb(%struct.lpfc_hba*, %struct.lpfc_sli_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
