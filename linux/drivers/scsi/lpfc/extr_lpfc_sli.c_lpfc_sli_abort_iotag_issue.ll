; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_abort_iotag_issue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_abort_iotag_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i64, i32 }
%struct.lpfc_sli_ring = type { i64, i32 }
%struct.lpfc_iocbq = type { i32, i32, %struct.lpfc_vport*, i32, i32, i64, i32, %struct.TYPE_6__ }
%struct.lpfc_vport = type { i32 }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.lpfc_nodelist = type { i32 }

@CMD_ABORT_XRI_CN = common dso_local global i64 0, align 8
@CMD_CLOSE_XRI_CN = common dso_local global i64 0, align 8
@LPFC_DRIVER_ABORTED = common dso_local global i32 0, align 4
@ABORT_TYPE_ABTS = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_ELS_RING = common dso_local global i64 0, align 8
@LPFC_IO_FCP = common dso_local global i32 0, align 4
@LPFC_USE_FCPWQIDX = common dso_local global i32 0, align 4
@LPFC_IO_FOF = common dso_local global i32 0, align 4
@LPFC_LINK_UP = common dso_local global i64 0, align 8
@lpfc_sli_abort_els_cmpl = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"0339 Abort xri x%x, original iotag x%x, abort cmd iotag x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)* @lpfc_sli_abort_iotag_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli_abort_iotag_issue(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_sli_ring*, align 8
  %7 = alloca %struct.lpfc_iocbq*, align 8
  %8 = alloca %struct.lpfc_vport*, align 8
  %9 = alloca %struct.lpfc_iocbq*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %6, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %7, align 8
  %15 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %16 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %15, i32 0, i32 2
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %16, align 8
  store %struct.lpfc_vport* %17, %struct.lpfc_vport** %8, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %11, align 8
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 2
  %20 = call i32 @lockdep_assert_held(i32* %19)
  %21 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %22 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %21, i32 0, i32 7
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %10, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CMD_ABORT_XRI_CN, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %41, label %28

28:                                               ; preds = %3
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CMD_CLOSE_XRI_CN, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %36 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @LPFC_DRIVER_ABORTED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34, %28, %3
  store i32 0, i32* %4, align 4
  br label %236

42:                                               ; preds = %34
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %44 = call %struct.lpfc_iocbq* @__lpfc_sli_get_iocbq(%struct.lpfc_hba* %43)
  store %struct.lpfc_iocbq* %44, %struct.lpfc_iocbq** %9, align 8
  %45 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %46 = icmp eq %struct.lpfc_iocbq* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %236

48:                                               ; preds = %42
  %49 = load i32, i32* @LPFC_DRIVER_ABORTED, align 4
  %50 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %51 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %55 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %54, i32 0, i32 7
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %11, align 8
  %56 = load i32, i32* @ABORT_TYPE_ABTS, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  store i32 %56, i32* %60, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 4
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %69 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @LPFC_SLI_REV4, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %48
  %74 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %75 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32 %76, i32* %80, align 4
  %81 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %82 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 %83, i32* %87, align 4
  br label %114

88:                                               ; preds = %48
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i32 %91, i32* %95, align 4
  %96 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %97 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @LPFC_ELS_RING, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %88
  %102 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %103 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %105, %struct.lpfc_nodelist** %14, align 8
  %106 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %107 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i32 %108, i32* %112, align 4
  br label %113

113:                                              ; preds = %101, %88
  br label %114

114:                                              ; preds = %113, %73
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  store i32 1, i32* %116, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 8
  %122 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %123 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %126 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 4
  %127 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %128 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @LPFC_IO_FCP, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %114
  %134 = load i32, i32* @LPFC_USE_FCPWQIDX, align 4
  %135 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %136 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %133, %114
  %140 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %141 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @LPFC_IO_FOF, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %139
  %147 = load i32, i32* @LPFC_IO_FOF, align 4
  %148 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %149 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %146, %139
  %153 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %154 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @LPFC_LINK_UP, align 8
  %157 = icmp sge i64 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = load i64, i64* @CMD_ABORT_XRI_CN, align 8
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  store i64 %159, i64* %161, align 8
  br label %166

162:                                              ; preds = %152
  %163 = load i64, i64* @CMD_CLOSE_XRI_CN, align 8
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  store i64 %163, i64* %165, align 8
  br label %166

166:                                              ; preds = %162, %158
  %167 = load i32, i32* @lpfc_sli_abort_els_cmpl, align 4
  %168 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %169 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %168, i32 0, i32 3
  store i32 %167, i32* %169, align 8
  %170 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %171 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %172 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %171, i32 0, i32 2
  store %struct.lpfc_vport* %170, %struct.lpfc_vport** %172, align 8
  %173 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %174 = load i32, i32* @KERN_INFO, align 4
  %175 = load i32, i32* @LOG_SLI, align 4
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %187 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %173, i32 %174, i32 %175, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %180, i32 %185, i32 %188)
  %190 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %191 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @LPFC_SLI_REV4, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %220

195:                                              ; preds = %166
  %196 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %197 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %198 = call %struct.lpfc_sli_ring* @lpfc_sli4_calc_ring(%struct.lpfc_hba* %196, %struct.lpfc_iocbq* %197)
  store %struct.lpfc_sli_ring* %198, %struct.lpfc_sli_ring** %6, align 8
  %199 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %200 = icmp eq %struct.lpfc_sli_ring* %199, null
  %201 = zext i1 %200 to i32
  %202 = call i64 @unlikely(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %195
  store i32 0, i32* %4, align 4
  br label %236

205:                                              ; preds = %195
  %206 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %207 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %206, i32 0, i32 1
  %208 = load i64, i64* %13, align 8
  %209 = call i32 @spin_lock_irqsave(i32* %207, i64 %208)
  %210 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %211 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %212 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %215 = call i32 @__lpfc_sli_issue_iocb(%struct.lpfc_hba* %210, i64 %213, %struct.lpfc_iocbq* %214, i32 0)
  store i32 %215, i32* %12, align 4
  %216 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %217 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %216, i32 0, i32 1
  %218 = load i64, i64* %13, align 8
  %219 = call i32 @spin_unlock_irqrestore(i32* %217, i64 %218)
  br label %227

220:                                              ; preds = %166
  %221 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %222 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %223 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %226 = call i32 @__lpfc_sli_issue_iocb(%struct.lpfc_hba* %221, i64 %224, %struct.lpfc_iocbq* %225, i32 0)
  store i32 %226, i32* %12, align 4
  br label %227

227:                                              ; preds = %220, %205
  %228 = load i32, i32* %12, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %227
  %231 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %232 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %233 = call i32 @__lpfc_sli_release_iocbq(%struct.lpfc_hba* %231, %struct.lpfc_iocbq* %232)
  br label %234

234:                                              ; preds = %230, %227
  %235 = load i32, i32* %12, align 4
  store i32 %235, i32* %4, align 4
  br label %236

236:                                              ; preds = %234, %204, %47, %41
  %237 = load i32, i32* %4, align 4
  ret i32 %237
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.lpfc_iocbq* @__lpfc_sli_get_iocbq(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local %struct.lpfc_sli_ring* @lpfc_sli4_calc_ring(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__lpfc_sli_issue_iocb(%struct.lpfc_hba*, i64, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
