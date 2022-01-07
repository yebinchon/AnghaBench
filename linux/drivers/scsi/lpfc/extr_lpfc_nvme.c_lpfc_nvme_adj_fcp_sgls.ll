; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_adj_fcp_sgls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_adj_fcp_sgls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64 }
%struct.lpfc_io_buf = type { %struct.sli4_sge*, %struct.TYPE_6__ }
%struct.sli4_sge = type { i32, i32, i8*, i8* }
%struct.TYPE_6__ = type { %union.lpfc_wqe128 }
%union.lpfc_wqe128 = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.sli4_sge, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.nvmefc_fcp_req = type { i32, i32, i64, i32, i32, i64 }

@BUFF_TYPE_BDE_IMMED = common dso_local global i32 0, align 4
@BUFF_TYPE_BDE_64 = common dso_local global i32 0, align 4
@wqe_dbde = common dso_local global i32 0, align 4
@wqe_wqes = common dso_local global i32 0, align 4
@lpfc_sli4_sge_last = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_vport*, %struct.lpfc_io_buf*, %struct.nvmefc_fcp_req*)* @lpfc_nvme_adj_fcp_sgls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_nvme_adj_fcp_sgls(%struct.lpfc_vport* %0, %struct.lpfc_io_buf* %1, %struct.nvmefc_fcp_req* %2) #0 {
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_io_buf*, align 8
  %6 = alloca %struct.nvmefc_fcp_req*, align 8
  %7 = alloca %struct.lpfc_hba*, align 8
  %8 = alloca %struct.sli4_sge*, align 8
  %9 = alloca %union.lpfc_wqe128*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store %struct.lpfc_io_buf* %1, %struct.lpfc_io_buf** %5, align 8
  store %struct.nvmefc_fcp_req* %2, %struct.nvmefc_fcp_req** %6, align 8
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %13 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %12, i32 0, i32 0
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %13, align 8
  store %struct.lpfc_hba* %14, %struct.lpfc_hba** %7, align 8
  %15 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %16 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store %union.lpfc_wqe128* %17, %union.lpfc_wqe128** %9, align 8
  %18 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %19 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %18, i32 0, i32 0
  %20 = load %struct.sli4_sge*, %struct.sli4_sge** %19, align 8
  store %struct.sli4_sge* %20, %struct.sli4_sge** %8, align 8
  %21 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %6, align 8
  %22 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @cpu_to_le32(i32 %23)
  %25 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %26 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %139

31:                                               ; preds = %3
  %32 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %33 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %32, i32 0, i32 3
  store i8* null, i8** %33, align 8
  %34 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %35 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load i32, i32* @BUFF_TYPE_BDE_IMMED, align 4
  %37 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %9, align 8
  %38 = bitcast %union.lpfc_wqe128* %37 to %struct.TYPE_10__*
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  store i32 %36, i32* %42, align 4
  %43 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %9, align 8
  %44 = bitcast %union.lpfc_wqe128* %43 to %struct.TYPE_10__*
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 56, i32* %48, align 8
  %49 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %9, align 8
  %50 = bitcast %union.lpfc_wqe128* %49 to %struct.TYPE_10__*
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  store i8* null, i8** %52, align 8
  %53 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %9, align 8
  %54 = bitcast %union.lpfc_wqe128* %53 to %struct.TYPE_10__*
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i32 64, i32* %56, align 8
  %57 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %9, align 8
  %58 = bitcast %union.lpfc_wqe128* %57 to i32**
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 16
  store i32* %60, i32** %10, align 8
  %61 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %6, align 8
  %62 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  store i32* %64, i32** %11, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %11, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %11, align 8
  %69 = load i32, i32* %67, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %10, align 8
  store i32 %69, i32* %70, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %11, align 8
  %74 = load i32, i32* %72, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %10, align 8
  store i32 %74, i32* %75, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %11, align 8
  %79 = load i32, i32* %77, align 4
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %10, align 8
  store i32 %79, i32* %80, align 4
  %82 = load i32*, i32** %11, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %11, align 8
  %84 = load i32, i32* %82, align 4
  %85 = load i32*, i32** %10, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %10, align 8
  store i32 %84, i32* %85, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %11, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %11, align 8
  %91 = load i32, i32* %89, align 4
  %92 = load i32*, i32** %10, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %10, align 8
  store i32 %91, i32* %92, align 4
  %94 = load i32*, i32** %11, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %11, align 8
  %96 = load i32, i32* %94, align 4
  %97 = load i32*, i32** %10, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %10, align 8
  store i32 %96, i32* %97, align 4
  %99 = load i32*, i32** %11, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 8
  store i32* %100, i32** %11, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %11, align 8
  %103 = load i32, i32* %101, align 4
  %104 = load i32*, i32** %10, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %10, align 8
  store i32 %103, i32* %104, align 4
  %106 = load i32*, i32** %11, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %11, align 8
  %108 = load i32, i32* %106, align 4
  %109 = load i32*, i32** %10, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %10, align 8
  store i32 %108, i32* %109, align 4
  %111 = load i32*, i32** %11, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %11, align 8
  %113 = load i32, i32* %111, align 4
  %114 = load i32*, i32** %10, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %10, align 8
  store i32 %113, i32* %114, align 4
  %116 = load i32*, i32** %11, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %11, align 8
  %118 = load i32, i32* %116, align 4
  %119 = load i32*, i32** %10, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %10, align 8
  store i32 %118, i32* %119, align 4
  %121 = load i32*, i32** %11, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %11, align 8
  %123 = load i32, i32* %121, align 4
  %124 = load i32*, i32** %10, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %10, align 8
  store i32 %123, i32* %124, align 4
  %126 = load i32*, i32** %11, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %127, i32** %11, align 8
  %128 = load i32, i32* %126, align 4
  %129 = load i32*, i32** %10, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %10, align 8
  store i32 %128, i32* %129, align 4
  %131 = load i32*, i32** %11, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %11, align 8
  %133 = load i32, i32* %131, align 4
  %134 = load i32*, i32** %10, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %10, align 8
  store i32 %133, i32* %134, align 4
  %136 = load i32*, i32** %11, align 8
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %10, align 8
  store i32 %137, i32* %138, align 4
  br label %195

139:                                              ; preds = %3
  %140 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %6, align 8
  %141 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @putPaddrHigh(i32 %142)
  %144 = call i8* @cpu_to_le32(i32 %143)
  %145 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %146 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %145, i32 0, i32 3
  store i8* %144, i8** %146, align 8
  %147 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %6, align 8
  %148 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @putPaddrLow(i32 %149)
  %151 = call i8* @cpu_to_le32(i32 %150)
  %152 = ptrtoint i8* %151 to i32
  %153 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %154 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* @BUFF_TYPE_BDE_64, align 4
  %156 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %9, align 8
  %157 = bitcast %union.lpfc_wqe128* %156 to %struct.TYPE_10__*
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  store i32 %155, i32* %161, align 4
  %162 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %6, align 8
  %163 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %9, align 8
  %166 = bitcast %union.lpfc_wqe128* %165 to %struct.TYPE_10__*
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  store i32 %164, i32* %170, align 8
  %171 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %172 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %171, i32 0, i32 3
  %173 = load i8*, i8** %172, align 8
  %174 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %9, align 8
  %175 = bitcast %union.lpfc_wqe128* %174 to %struct.TYPE_10__*
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  store i8* %173, i8** %177, align 8
  %178 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %179 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %9, align 8
  %182 = bitcast %union.lpfc_wqe128* %181 to %struct.TYPE_10__*
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  store i32 %180, i32* %184, align 8
  %185 = load i32, i32* @wqe_dbde, align 4
  %186 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %9, align 8
  %187 = bitcast %union.lpfc_wqe128* %186 to %struct.TYPE_10__*
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = call i32 @bf_set(i32 %185, %struct.sli4_sge* %188, i32 1)
  %190 = load i32, i32* @wqe_wqes, align 4
  %191 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %9, align 8
  %192 = bitcast %union.lpfc_wqe128* %191 to %struct.TYPE_10__*
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  %194 = call i32 @bf_set(i32 %190, %struct.sli4_sge* %193, i32 0)
  br label %195

195:                                              ; preds = %139, %31
  %196 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %197 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %196, i32 1
  store %struct.sli4_sge* %197, %struct.sli4_sge** %8, align 8
  %198 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %6, align 8
  %199 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @putPaddrHigh(i32 %200)
  %202 = call i8* @cpu_to_le32(i32 %201)
  %203 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %204 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %203, i32 0, i32 3
  store i8* %202, i8** %204, align 8
  %205 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %6, align 8
  %206 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @putPaddrLow(i32 %207)
  %209 = call i8* @cpu_to_le32(i32 %208)
  %210 = ptrtoint i8* %209 to i32
  %211 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %212 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  %213 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %214 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @le32_to_cpu(i32 %215)
  %217 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %218 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 4
  %219 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %6, align 8
  %220 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %195
  %224 = load i32, i32* @lpfc_sli4_sge_last, align 4
  %225 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %226 = call i32 @bf_set(i32 %224, %struct.sli4_sge* %225, i32 0)
  br label %231

227:                                              ; preds = %195
  %228 = load i32, i32* @lpfc_sli4_sge_last, align 4
  %229 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %230 = call i32 @bf_set(i32 %228, %struct.sli4_sge* %229, i32 1)
  br label %231

231:                                              ; preds = %227, %223
  %232 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %233 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i8* @cpu_to_le32(i32 %234)
  %236 = ptrtoint i8* %235 to i32
  %237 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %238 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 4
  %239 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %6, align 8
  %240 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i8* @cpu_to_le32(i32 %241)
  %243 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %244 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %243, i32 0, i32 2
  store i8* %242, i8** %244, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @putPaddrHigh(i32) #1

declare dso_local i32 @putPaddrLow(i32) #1

declare dso_local i32 @bf_set(i32, %struct.sli4_sge*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
