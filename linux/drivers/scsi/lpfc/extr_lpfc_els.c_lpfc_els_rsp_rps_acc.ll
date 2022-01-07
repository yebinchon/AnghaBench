; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rsp_rps_acc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rsp_rps_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, %struct.TYPE_21__, %struct.TYPE_15__*, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_24__ = type { i32*, i32*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_20__, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_22__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, i64 }
%struct.lpfc_iocbq = type { i32, %struct.TYPE_14__, i32, i64 }
%struct.lpfc_nodelist = type { i32, i32, i32, i32, i32 }
%struct.lpfc_dmabuf = type { i64 }

@lpfc_max_els_tries = common dso_local global i32 0, align 4
@ELS_CMD_ACC = common dso_local global i32 0, align 4
@LPFC_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@FC_FABRIC = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"0118 Xmit ELS RPS ACC response tag x%x xri x%x, did x%x, nlp_flag x%x, nlp_state x%x, rpi x%x\0A\00", align 1
@lpfc_cmpl_els_rsp = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.TYPE_24__*)* @lpfc_els_rsp_rps_acc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_els_rsp_rps_acc(%struct.lpfc_hba* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.lpfc_iocbq*, align 8
  %10 = alloca %struct.lpfc_nodelist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  store %struct.TYPE_23__* %17, %struct.TYPE_23__** %5, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = bitcast i32* %20 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %21, %struct.lpfc_nodelist** %10, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = ptrtoint i32* %24 to i64
  %26 = and i64 %25, 65535
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %13, align 4
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = ptrtoint i32* %30 to i64
  %32 = lshr i64 %31, 16
  %33 = and i64 %32, 65535
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %12, align 4
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %2
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %46 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @mempool_free(%struct.TYPE_24__* %44, i32 %47)
  br label %213

49:                                               ; preds = %2
  store i32 68, i32* %14, align 4
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @mempool_free(%struct.TYPE_24__* %50, i32 %53)
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 2
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @lpfc_max_els_tries, align 4
  %60 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %61 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %62 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ELS_CMD_ACC, align 4
  %65 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.TYPE_15__* %57, i32 0, i32 %58, i32 %59, %struct.lpfc_nodelist* %60, i32 %63, i32 %64)
  store %struct.lpfc_iocbq* %65, %struct.lpfc_iocbq** %9, align 8
  %66 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %67 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %66)
  %68 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %69 = icmp ne %struct.lpfc_iocbq* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %49
  br label %213

71:                                               ; preds = %49
  %72 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %73 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %72, i32 0, i32 1
  store %struct.TYPE_14__* %73, %struct.TYPE_14__** %6, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 4
  %82 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %83 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to %struct.lpfc_dmabuf*
  %86 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i32*
  store i32* %88, i32** %8, align 8
  %89 = load i32, i32* @ELS_CMD_ACC, align 4
  %90 = load i32*, i32** %8, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 4
  store i32* %92, i32** %8, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = bitcast i32* %93 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %94, %struct.TYPE_22__** %7, align 8
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %96 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @LPFC_TOPOLOGY_LOOP, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %71
  store i32 16, i32* %11, align 4
  br label %102

101:                                              ; preds = %71
  store i32 8, i32* %11, align 4
  br label %102

102:                                              ; preds = %101, %100
  %103 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %104 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %103, i32 0, i32 2
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @FC_FABRIC, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %102
  %112 = load i32, i32* %11, align 4
  %113 = or i32 %112, 4
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %111, %102
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 7
  store i64 0, i64* %116, align 8
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @cpu_to_be16(i32 %117)
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 6
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @cpu_to_be32(i32 %125)
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 5
  store i8* %126, i8** %128, align 8
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i8* @cpu_to_be32(i32 %133)
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 4
  store i8* %134, i8** %136, align 8
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @cpu_to_be32(i32 %141)
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 3
  store i8* %142, i8** %144, align 8
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i8* @cpu_to_be32(i32 %149)
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i8* @cpu_to_be32(i32 %157)
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 1
  store i8* %158, i8** %160, align 8
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i8* @cpu_to_be32(i32 %165)
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 0
  store i8* %166, i8** %168, align 8
  %169 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %170 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @KERN_INFO, align 4
  %173 = load i32, i32* @LOG_ELS, align 4
  %174 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %175 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %178 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %182 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %185 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %188 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %191 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @lpfc_printf_vlog(i32 %171, i32 %172, i32 %173, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %176, i32 %180, i32 %183, i32 %186, i32 %189, i32 %192)
  %194 = load i32, i32* @lpfc_cmpl_els_rsp, align 4
  %195 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %196 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 8
  %197 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %198 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 8
  %202 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %203 = load i32, i32* @LPFC_ELS_RING, align 4
  %204 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %205 = call i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %202, i32 %203, %struct.lpfc_iocbq* %204, i32 0)
  %206 = load i64, i64* @IOCB_ERROR, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %212

208:                                              ; preds = %114
  %209 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %210 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %211 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %209, %struct.lpfc_iocbq* %210)
  br label %212

212:                                              ; preds = %208, %114
  br label %213

213:                                              ; preds = %212, %70, %43
  ret void
}

declare dso_local i32 @mempool_free(%struct.TYPE_24__*, i32) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.TYPE_15__*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @lpfc_printf_vlog(i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
