; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_process_sol_iocb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_process_sol_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32 }
%struct.lpfc_sli_ring = type { i64 }
%struct.lpfc_iocbq = type { i32, %struct.TYPE_4__, i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__, i8*, i32 }
%struct.TYPE_3__ = type { i8** }
%struct.lpfc_hba.0 = type opaque

@LPFC_ELS_RING = common dso_local global i64 0, align 8
@CMD_ELS_REQUEST64_CR = common dso_local global i64 0, align 8
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_DRIVER_ABORTED = common dso_local global i32 0, align 4
@IOSTAT_LOCAL_REJECT = common dso_local global i8* null, align 8
@IOERR_SLI_ABORTED = common dso_local global i8* null, align 8
@LPFC_DELAY_MEM_FREE = common dso_local global i32 0, align 4
@LPFC_EXCHANGE_BUSY = common dso_local global i32 0, align 4
@IOERR_ABORT_REQUESTED = common dso_local global i8* null, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"0322 Ring %d handler: unexpected completion IoTag x%x Data: x%x x%x x%x x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)* @lpfc_sli_process_sol_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli_process_sol_iocb(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_sli_ring*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_iocbq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  store i32 1, i32* %8, align 4
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %11 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %12 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %13 = call %struct.lpfc_iocbq* @lpfc_sli_iocbq_lookup(%struct.lpfc_hba* %10, %struct.lpfc_sli_ring* %11, %struct.lpfc_iocbq* %12)
  store %struct.lpfc_iocbq* %13, %struct.lpfc_iocbq** %7, align 8
  %14 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %15 = icmp ne %struct.lpfc_iocbq* %14, null
  br i1 %15, label %16, label %203

16:                                               ; preds = %3
  %17 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %18 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %17, i32 0, i32 2
  %19 = load i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %18, align 8
  %20 = icmp ne i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* %19, null
  br i1 %20, label %21, label %198

21:                                               ; preds = %16
  %22 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %23 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %45

27:                                               ; preds = %21
  %28 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %29 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @LPFC_ELS_RING, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %35 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CMD_ELS_REQUEST64_CR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %42 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %43 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %44 = call i32 @lpfc_send_els_failure_event(%struct.lpfc_hba* %41, %struct.lpfc_iocbq* %42, %struct.lpfc_iocbq* %43)
  br label %45

45:                                               ; preds = %40, %33, %27, %21
  %46 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %47 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @LPFC_ELS_RING, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %189

51:                                               ; preds = %45
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %53 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @LPFC_SLI_REV4, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %103

57:                                               ; preds = %51
  %58 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %59 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @LPFC_DRIVER_ABORTED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %103

64:                                               ; preds = %57
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %66 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %65, i32 0, i32 1
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  %69 = load i32, i32* @LPFC_DRIVER_ABORTED, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %72 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 1
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load i8*, i8** @IOSTAT_LOCAL_REJECT, align 8
  %80 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %81 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  store i8* %79, i8** %82, align 8
  %83 = load i8*, i8** @IOERR_SLI_ABORTED, align 8
  %84 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %85 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i8**, i8*** %87, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 4
  store i8* %83, i8** %89, align 8
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %91 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %90, i32 0, i32 1
  %92 = load i64, i64* %9, align 8
  %93 = call i32 @spin_lock_irqsave(i32* %91, i64 %92)
  %94 = load i32, i32* @LPFC_DELAY_MEM_FREE, align 4
  %95 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %96 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %100 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %99, i32 0, i32 1
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  br label %103

103:                                              ; preds = %64, %57, %51
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %105 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @LPFC_SLI_REV4, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %188

109:                                              ; preds = %103
  %110 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %111 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @LPFC_EXCHANGE_BUSY, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %109
  %117 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %118 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %117, i32 0, i32 1
  %119 = load i64, i64* %9, align 8
  %120 = call i32 @spin_lock_irqsave(i32* %118, i64 %119)
  %121 = load i32, i32* @LPFC_EXCHANGE_BUSY, align 4
  %122 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %123 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  %126 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %127 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %126, i32 0, i32 1
  %128 = load i64, i64* %9, align 8
  %129 = call i32 @spin_unlock_irqrestore(i32* %127, i64 %128)
  br label %130

130:                                              ; preds = %116, %109
  %131 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %132 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @LPFC_DRIVER_ABORTED, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %187

137:                                              ; preds = %130
  %138 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %139 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %138, i32 0, i32 1
  %140 = load i64, i64* %9, align 8
  %141 = call i32 @spin_lock_irqsave(i32* %139, i64 %140)
  %142 = load i32, i32* @LPFC_DRIVER_ABORTED, align 4
  %143 = xor i32 %142, -1
  %144 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %145 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = and i32 %146, %143
  store i32 %147, i32* %145, align 8
  %148 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %149 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %148, i32 0, i32 1
  %150 = load i64, i64* %9, align 8
  %151 = call i32 @spin_unlock_irqrestore(i32* %149, i64 %150)
  %152 = load i8*, i8** @IOSTAT_LOCAL_REJECT, align 8
  %153 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %154 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 3
  store i8* %152, i8** %155, align 8
  %156 = load i8*, i8** @IOERR_ABORT_REQUESTED, align 8
  %157 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %158 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i8**, i8*** %160, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i64 4
  store i8* %156, i8** %162, align 8
  %163 = load i8*, i8** @IOSTAT_LOCAL_REJECT, align 8
  %164 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %165 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 3
  store i8* %163, i8** %166, align 8
  %167 = load i8*, i8** @IOERR_SLI_ABORTED, align 8
  %168 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %169 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i8**, i8*** %171, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 4
  store i8* %167, i8** %173, align 8
  %174 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %175 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %174, i32 0, i32 1
  %176 = load i64, i64* %9, align 8
  %177 = call i32 @spin_lock_irqsave(i32* %175, i64 %176)
  %178 = load i32, i32* @LPFC_DELAY_MEM_FREE, align 4
  %179 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %180 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 8
  %183 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %184 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %183, i32 0, i32 1
  %185 = load i64, i64* %9, align 8
  %186 = call i32 @spin_unlock_irqrestore(i32* %184, i64 %185)
  br label %187

187:                                              ; preds = %137, %130
  br label %188

188:                                              ; preds = %187, %103
  br label %189

189:                                              ; preds = %188, %45
  %190 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %191 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %190, i32 0, i32 2
  %192 = load i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %191, align 8
  %193 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %194 = bitcast %struct.lpfc_hba* %193 to %struct.lpfc_hba.0*
  %195 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %196 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %197 = call i32 %192(%struct.lpfc_hba.0* %194, %struct.lpfc_iocbq* %195, %struct.lpfc_iocbq* %196)
  br label %202

198:                                              ; preds = %16
  %199 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %200 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %201 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %199, %struct.lpfc_iocbq* %200)
  br label %202

202:                                              ; preds = %198, %189
  br label %241

203:                                              ; preds = %3
  %204 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %205 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @LPFC_ELS_RING, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %240

209:                                              ; preds = %203
  %210 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %211 = load i32, i32* @KERN_WARNING, align 4
  %212 = load i32, i32* @LOG_SLI, align 4
  %213 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %214 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %217 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %221 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 3
  %223 = load i8*, i8** %222, align 8
  %224 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %225 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 0
  %228 = load i8**, i8*** %227, align 8
  %229 = getelementptr inbounds i8*, i8** %228, i64 4
  %230 = load i8*, i8** %229, align 8
  %231 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %232 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %236 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %210, i32 %211, i32 %212, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i64 %215, i32 %219, i8* %223, i8* %230, i64 %234, i32 %238)
  br label %240

240:                                              ; preds = %209, %203
  br label %241

241:                                              ; preds = %240, %202
  %242 = load i32, i32* %8, align 4
  ret i32 %242
}

declare dso_local %struct.lpfc_iocbq* @lpfc_sli_iocbq_lookup(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_send_els_failure_event(%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, i32, i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
