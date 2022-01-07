; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_abort_iocb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_abort_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.lpfc_iocbq** }
%struct.lpfc_iocbq = type { i32, i32, %struct.TYPE_8__, i32, %struct.lpfc_vport*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.lpfc_sli_ring = type { i32 }

@HBA_IOQ_FLUSH = common dso_local global i32 0, align 4
@LPFC_DRIVER_ABORTED = common dso_local global i32 0, align 4
@ABORT_TYPE_ABTS = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_IO_FCP = common dso_local global i32 0, align 4
@LPFC_USE_FCPWQIDX = common dso_local global i32 0, align 4
@LPFC_IO_FOF = common dso_local global i32 0, align 4
@CMD_ABORT_XRI_CN = common dso_local global i32 0, align 4
@CMD_CLOSE_XRI_CN = common dso_local global i32 0, align 4
@lpfc_sli_abort_fcp_cmpl = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli_abort_iocb(%struct.lpfc_vport* %0, %struct.lpfc_sli_ring* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.lpfc_sli_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.lpfc_hba*, align 8
  %13 = alloca %struct.lpfc_iocbq*, align 8
  %14 = alloca %struct.lpfc_iocbq*, align 8
  %15 = alloca %struct.lpfc_sli_ring*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %7, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %21 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %20, i32 0, i32 0
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %21, align 8
  store %struct.lpfc_hba* %22, %struct.lpfc_hba** %12, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %24 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @HBA_IOQ_FLUSH, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* %17, align 4
  store i32 %30, i32* %6, align 4
  br label %220

31:                                               ; preds = %5
  store i32 1, i32* %19, align 4
  br label %32

32:                                               ; preds = %215, %31
  %33 = load i32, i32* %19, align 4
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sle i32 %33, %37
  br i1 %38, label %39, label %218

39:                                               ; preds = %32
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %41 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %42, align 8
  %44 = load i32, i32* %19, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %43, i64 %45
  %47 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %46, align 8
  store %struct.lpfc_iocbq* %47, %struct.lpfc_iocbq** %13, align 8
  %48 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %49 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i64 @lpfc_sli_validate_fcp_iocb(%struct.lpfc_iocbq* %48, %struct.lpfc_vport* %49, i32 %50, i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %39
  br label %215

56:                                               ; preds = %39
  %57 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %58 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @LPFC_DRIVER_ABORTED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %215

64:                                               ; preds = %56
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %66 = call %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba* %65)
  store %struct.lpfc_iocbq* %66, %struct.lpfc_iocbq** %14, align 8
  %67 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %68 = icmp eq %struct.lpfc_iocbq* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* %17, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %17, align 4
  br label %215

72:                                               ; preds = %64
  %73 = load i32, i32* @LPFC_DRIVER_ABORTED, align 4
  %74 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %75 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %79 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %78, i32 0, i32 2
  store %struct.TYPE_8__* %79, %struct.TYPE_8__** %16, align 8
  %80 = load i32, i32* @ABORT_TYPE_ABTS, align 4
  %81 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %82 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  store i32 %80, i32* %85, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %90 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store i32 %88, i32* %93, align 4
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %95 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @LPFC_SLI_REV4, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %72
  %100 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %101 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %104 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i32 %102, i32* %107, align 8
  br label %117

108:                                              ; preds = %72
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %113 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  store i32 %111, i32* %116, align 8
  br label %117

117:                                              ; preds = %108, %99
  %118 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %119 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  store i32 1, i32* %120, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %125 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  store i32 %123, i32* %126, align 8
  %127 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %128 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %129 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %128, i32 0, i32 4
  store %struct.lpfc_vport* %127, %struct.lpfc_vport** %129, align 8
  %130 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %131 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %134 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 8
  %135 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %136 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @LPFC_IO_FCP, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %117
  %142 = load i32, i32* @LPFC_USE_FCPWQIDX, align 4
  %143 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %144 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  br label %147

147:                                              ; preds = %141, %117
  %148 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %149 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @LPFC_IO_FOF, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %147
  %155 = load i32, i32* @LPFC_IO_FOF, align 4
  %156 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %157 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %154, %147
  %161 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %162 = call i64 @lpfc_is_link_up(%struct.lpfc_hba* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = load i32, i32* @CMD_ABORT_XRI_CN, align 4
  %166 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %167 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  store i32 %165, i32* %168, align 4
  br label %174

169:                                              ; preds = %160
  %170 = load i32, i32* @CMD_CLOSE_XRI_CN, align 4
  %171 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %172 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 1
  store i32 %170, i32* %173, align 4
  br label %174

174:                                              ; preds = %169, %164
  %175 = load i32, i32* @lpfc_sli_abort_fcp_cmpl, align 4
  %176 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %177 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %179 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @LPFC_SLI_REV4, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %197

183:                                              ; preds = %174
  %184 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %185 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %186 = call %struct.lpfc_sli_ring* @lpfc_sli4_calc_ring(%struct.lpfc_hba* %184, %struct.lpfc_iocbq* %185)
  store %struct.lpfc_sli_ring* %186, %struct.lpfc_sli_ring** %15, align 8
  %187 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %15, align 8
  %188 = icmp ne %struct.lpfc_sli_ring* %187, null
  br i1 %188, label %190, label %189

189:                                              ; preds = %183
  br label %215

190:                                              ; preds = %183
  %191 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %192 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %15, align 8
  %193 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %196 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %191, i32 %194, %struct.lpfc_iocbq* %195, i32 0)
  store i32 %196, i32* %18, align 4
  br label %204

197:                                              ; preds = %174
  %198 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %199 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %200 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %203 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %198, i32 %201, %struct.lpfc_iocbq* %202, i32 0)
  store i32 %203, i32* %18, align 4
  br label %204

204:                                              ; preds = %197, %190
  %205 = load i32, i32* %18, align 4
  %206 = load i32, i32* @IOCB_ERROR, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %214

208:                                              ; preds = %204
  %209 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %210 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %211 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %209, %struct.lpfc_iocbq* %210)
  %212 = load i32, i32* %17, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %17, align 4
  br label %215

214:                                              ; preds = %204
  br label %215

215:                                              ; preds = %214, %208, %189, %69, %63, %55
  %216 = load i32, i32* %19, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %19, align 4
  br label %32

218:                                              ; preds = %32
  %219 = load i32, i32* %17, align 4
  store i32 %219, i32* %6, align 4
  br label %220

220:                                              ; preds = %218, %29
  %221 = load i32, i32* %6, align 4
  ret i32 %221
}

declare dso_local i64 @lpfc_sli_validate_fcp_iocb(%struct.lpfc_iocbq*, %struct.lpfc_vport*, i32, i32, i32) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba*) #1

declare dso_local i64 @lpfc_is_link_up(%struct.lpfc_hba*) #1

declare dso_local %struct.lpfc_sli_ring* @lpfc_sli4_calc_ring(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
