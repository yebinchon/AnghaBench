; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_cmd_template.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_cmd_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.lpfc_wqe128 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@lpfc_iread_cmd_template = common dso_local global %union.lpfc_wqe128 zeroinitializer, align 4
@wqe_cmnd = common dso_local global i32 0, align 4
@CMD_FCP_IREAD64_WQE = common dso_local global i32 0, align 4
@wqe_pu = common dso_local global i32 0, align 4
@PARM_READ_CHECK = common dso_local global i32 0, align 4
@wqe_class = common dso_local global i32 0, align 4
@CLASS3 = common dso_local global i32 0, align 4
@wqe_ct = common dso_local global i32 0, align 4
@SLI4_CT_RPI = common dso_local global i32 0, align 4
@wqe_qosd = common dso_local global i32 0, align 4
@wqe_nvme = common dso_local global i32 0, align 4
@wqe_iod = common dso_local global i32 0, align 4
@LPFC_WQE_IOD_READ = common dso_local global i32 0, align 4
@wqe_lenloc = common dso_local global i32 0, align 4
@LPFC_WQE_LENLOC_WORD4 = common dso_local global i32 0, align 4
@wqe_dbde = common dso_local global i32 0, align 4
@wqe_wqes = common dso_local global i32 0, align 4
@wqe_cmd_type = common dso_local global i32 0, align 4
@NVME_READ_CMD = common dso_local global i32 0, align 4
@wqe_cqid = common dso_local global i32 0, align 4
@LPFC_WQE_CQ_ID_DEFAULT = common dso_local global i32 0, align 4
@wqe_pbde = common dso_local global i32 0, align 4
@lpfc_iwrite_cmd_template = common dso_local global %union.lpfc_wqe128 zeroinitializer, align 4
@CMD_FCP_IWRITE64_WQE = common dso_local global i32 0, align 4
@LPFC_WQE_IOD_WRITE = common dso_local global i32 0, align 4
@NVME_WRITE_CMD = common dso_local global i32 0, align 4
@lpfc_icmnd_cmd_template = common dso_local global %union.lpfc_wqe128 zeroinitializer, align 4
@CMD_FCP_ICMND64_WQE = common dso_local global i32 0, align 4
@LPFC_WQE_IOD_NONE = common dso_local global i32 0, align 4
@LPFC_WQE_LENLOC_NONE = common dso_local global i32 0, align 4
@FCP_COMMAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_nvme_cmd_template() #0 {
  %1 = alloca %union.lpfc_wqe128*, align 8
  store %union.lpfc_wqe128* @lpfc_iread_cmd_template, %union.lpfc_wqe128** %1, align 8
  %2 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %3 = call i32 @memset(%union.lpfc_wqe128* %2, i32 0, i32 4)
  %4 = load i32, i32* @wqe_cmnd, align 4
  %5 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %6 = bitcast %union.lpfc_wqe128* %5 to %struct.TYPE_4__*
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* @CMD_FCP_IREAD64_WQE, align 4
  %9 = call i32 @bf_set(i32 %4, i32* %7, i32 %8)
  %10 = load i32, i32* @wqe_pu, align 4
  %11 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %12 = bitcast %union.lpfc_wqe128* %11 to %struct.TYPE_4__*
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* @PARM_READ_CHECK, align 4
  %15 = call i32 @bf_set(i32 %10, i32* %13, i32 %14)
  %16 = load i32, i32* @wqe_class, align 4
  %17 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %18 = bitcast %union.lpfc_wqe128* %17 to %struct.TYPE_4__*
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* @CLASS3, align 4
  %21 = call i32 @bf_set(i32 %16, i32* %19, i32 %20)
  %22 = load i32, i32* @wqe_ct, align 4
  %23 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %24 = bitcast %union.lpfc_wqe128* %23 to %struct.TYPE_4__*
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* @SLI4_CT_RPI, align 4
  %27 = call i32 @bf_set(i32 %22, i32* %25, i32 %26)
  %28 = load i32, i32* @wqe_qosd, align 4
  %29 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %30 = bitcast %union.lpfc_wqe128* %29 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @bf_set(i32 %28, i32* %31, i32 0)
  %33 = load i32, i32* @wqe_nvme, align 4
  %34 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %35 = bitcast %union.lpfc_wqe128* %34 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @bf_set(i32 %33, i32* %36, i32 1)
  %38 = load i32, i32* @wqe_iod, align 4
  %39 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %40 = bitcast %union.lpfc_wqe128* %39 to %struct.TYPE_4__*
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* @LPFC_WQE_IOD_READ, align 4
  %43 = call i32 @bf_set(i32 %38, i32* %41, i32 %42)
  %44 = load i32, i32* @wqe_lenloc, align 4
  %45 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %46 = bitcast %union.lpfc_wqe128* %45 to %struct.TYPE_4__*
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* @LPFC_WQE_LENLOC_WORD4, align 4
  %49 = call i32 @bf_set(i32 %44, i32* %47, i32 %48)
  %50 = load i32, i32* @wqe_dbde, align 4
  %51 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %52 = bitcast %union.lpfc_wqe128* %51 to %struct.TYPE_4__*
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @bf_set(i32 %50, i32* %53, i32 0)
  %55 = load i32, i32* @wqe_wqes, align 4
  %56 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %57 = bitcast %union.lpfc_wqe128* %56 to %struct.TYPE_4__*
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = call i32 @bf_set(i32 %55, i32* %58, i32 1)
  %60 = load i32, i32* @wqe_cmd_type, align 4
  %61 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %62 = bitcast %union.lpfc_wqe128* %61 to %struct.TYPE_4__*
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* @NVME_READ_CMD, align 4
  %65 = call i32 @bf_set(i32 %60, i32* %63, i32 %64)
  %66 = load i32, i32* @wqe_cqid, align 4
  %67 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %68 = bitcast %union.lpfc_wqe128* %67 to %struct.TYPE_4__*
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* @LPFC_WQE_CQ_ID_DEFAULT, align 4
  %71 = call i32 @bf_set(i32 %66, i32* %69, i32 %70)
  %72 = load i32, i32* @wqe_pbde, align 4
  %73 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %74 = bitcast %union.lpfc_wqe128* %73 to %struct.TYPE_4__*
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = call i32 @bf_set(i32 %72, i32* %75, i32 1)
  store %union.lpfc_wqe128* @lpfc_iwrite_cmd_template, %union.lpfc_wqe128** %1, align 8
  %77 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %78 = call i32 @memset(%union.lpfc_wqe128* %77, i32 0, i32 4)
  %79 = load i32, i32* @wqe_cmnd, align 4
  %80 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %81 = bitcast %union.lpfc_wqe128* %80 to %struct.TYPE_5__*
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* @CMD_FCP_IWRITE64_WQE, align 4
  %84 = call i32 @bf_set(i32 %79, i32* %82, i32 %83)
  %85 = load i32, i32* @wqe_pu, align 4
  %86 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %87 = bitcast %union.lpfc_wqe128* %86 to %struct.TYPE_5__*
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* @PARM_READ_CHECK, align 4
  %90 = call i32 @bf_set(i32 %85, i32* %88, i32 %89)
  %91 = load i32, i32* @wqe_class, align 4
  %92 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %93 = bitcast %union.lpfc_wqe128* %92 to %struct.TYPE_5__*
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* @CLASS3, align 4
  %96 = call i32 @bf_set(i32 %91, i32* %94, i32 %95)
  %97 = load i32, i32* @wqe_ct, align 4
  %98 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %99 = bitcast %union.lpfc_wqe128* %98 to %struct.TYPE_5__*
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* @SLI4_CT_RPI, align 4
  %102 = call i32 @bf_set(i32 %97, i32* %100, i32 %101)
  %103 = load i32, i32* @wqe_qosd, align 4
  %104 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %105 = bitcast %union.lpfc_wqe128* %104 to %struct.TYPE_5__*
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = call i32 @bf_set(i32 %103, i32* %106, i32 0)
  %108 = load i32, i32* @wqe_nvme, align 4
  %109 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %110 = bitcast %union.lpfc_wqe128* %109 to %struct.TYPE_5__*
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = call i32 @bf_set(i32 %108, i32* %111, i32 1)
  %113 = load i32, i32* @wqe_iod, align 4
  %114 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %115 = bitcast %union.lpfc_wqe128* %114 to %struct.TYPE_5__*
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* @LPFC_WQE_IOD_WRITE, align 4
  %118 = call i32 @bf_set(i32 %113, i32* %116, i32 %117)
  %119 = load i32, i32* @wqe_lenloc, align 4
  %120 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %121 = bitcast %union.lpfc_wqe128* %120 to %struct.TYPE_5__*
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* @LPFC_WQE_LENLOC_WORD4, align 4
  %124 = call i32 @bf_set(i32 %119, i32* %122, i32 %123)
  %125 = load i32, i32* @wqe_dbde, align 4
  %126 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %127 = bitcast %union.lpfc_wqe128* %126 to %struct.TYPE_5__*
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = call i32 @bf_set(i32 %125, i32* %128, i32 0)
  %130 = load i32, i32* @wqe_wqes, align 4
  %131 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %132 = bitcast %union.lpfc_wqe128* %131 to %struct.TYPE_5__*
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = call i32 @bf_set(i32 %130, i32* %133, i32 1)
  %135 = load i32, i32* @wqe_cmd_type, align 4
  %136 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %137 = bitcast %union.lpfc_wqe128* %136 to %struct.TYPE_5__*
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* @NVME_WRITE_CMD, align 4
  %140 = call i32 @bf_set(i32 %135, i32* %138, i32 %139)
  %141 = load i32, i32* @wqe_cqid, align 4
  %142 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %143 = bitcast %union.lpfc_wqe128* %142 to %struct.TYPE_5__*
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32, i32* @LPFC_WQE_CQ_ID_DEFAULT, align 4
  %146 = call i32 @bf_set(i32 %141, i32* %144, i32 %145)
  %147 = load i32, i32* @wqe_pbde, align 4
  %148 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %149 = bitcast %union.lpfc_wqe128* %148 to %struct.TYPE_5__*
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = call i32 @bf_set(i32 %147, i32* %150, i32 1)
  store %union.lpfc_wqe128* @lpfc_icmnd_cmd_template, %union.lpfc_wqe128** %1, align 8
  %152 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %153 = call i32 @memset(%union.lpfc_wqe128* %152, i32 0, i32 4)
  %154 = load i32, i32* @wqe_cmnd, align 4
  %155 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %156 = bitcast %union.lpfc_wqe128* %155 to %struct.TYPE_6__*
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* @CMD_FCP_ICMND64_WQE, align 4
  %159 = call i32 @bf_set(i32 %154, i32* %157, i32 %158)
  %160 = load i32, i32* @wqe_pu, align 4
  %161 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %162 = bitcast %union.lpfc_wqe128* %161 to %struct.TYPE_6__*
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = call i32 @bf_set(i32 %160, i32* %163, i32 0)
  %165 = load i32, i32* @wqe_class, align 4
  %166 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %167 = bitcast %union.lpfc_wqe128* %166 to %struct.TYPE_6__*
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i32, i32* @CLASS3, align 4
  %170 = call i32 @bf_set(i32 %165, i32* %168, i32 %169)
  %171 = load i32, i32* @wqe_ct, align 4
  %172 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %173 = bitcast %union.lpfc_wqe128* %172 to %struct.TYPE_6__*
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i32, i32* @SLI4_CT_RPI, align 4
  %176 = call i32 @bf_set(i32 %171, i32* %174, i32 %175)
  %177 = load i32, i32* @wqe_qosd, align 4
  %178 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %179 = bitcast %union.lpfc_wqe128* %178 to %struct.TYPE_6__*
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = call i32 @bf_set(i32 %177, i32* %180, i32 1)
  %182 = load i32, i32* @wqe_nvme, align 4
  %183 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %184 = bitcast %union.lpfc_wqe128* %183 to %struct.TYPE_6__*
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = call i32 @bf_set(i32 %182, i32* %185, i32 1)
  %187 = load i32, i32* @wqe_iod, align 4
  %188 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %189 = bitcast %union.lpfc_wqe128* %188 to %struct.TYPE_6__*
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i32, i32* @LPFC_WQE_IOD_NONE, align 4
  %192 = call i32 @bf_set(i32 %187, i32* %190, i32 %191)
  %193 = load i32, i32* @wqe_lenloc, align 4
  %194 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %195 = bitcast %union.lpfc_wqe128* %194 to %struct.TYPE_6__*
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i32, i32* @LPFC_WQE_LENLOC_NONE, align 4
  %198 = call i32 @bf_set(i32 %193, i32* %196, i32 %197)
  %199 = load i32, i32* @wqe_dbde, align 4
  %200 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %201 = bitcast %union.lpfc_wqe128* %200 to %struct.TYPE_6__*
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = call i32 @bf_set(i32 %199, i32* %202, i32 0)
  %204 = load i32, i32* @wqe_wqes, align 4
  %205 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %206 = bitcast %union.lpfc_wqe128* %205 to %struct.TYPE_6__*
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = call i32 @bf_set(i32 %204, i32* %207, i32 1)
  %209 = load i32, i32* @wqe_cmd_type, align 4
  %210 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %211 = bitcast %union.lpfc_wqe128* %210 to %struct.TYPE_6__*
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i32, i32* @FCP_COMMAND, align 4
  %214 = call i32 @bf_set(i32 %209, i32* %212, i32 %213)
  %215 = load i32, i32* @wqe_cqid, align 4
  %216 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %217 = bitcast %union.lpfc_wqe128* %216 to %struct.TYPE_6__*
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = load i32, i32* @LPFC_WQE_CQ_ID_DEFAULT, align 4
  %220 = call i32 @bf_set(i32 %215, i32* %218, i32 %219)
  %221 = load i32, i32* @wqe_pbde, align 4
  %222 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %1, align 8
  %223 = bitcast %union.lpfc_wqe128* %222 to %struct.TYPE_6__*
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = call i32 @bf_set(i32 %221, i32* %224, i32 0)
  ret void
}

declare dso_local i32 @memset(%union.lpfc_wqe128*, i32, i32) #1

declare dso_local i32 @bf_set(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
