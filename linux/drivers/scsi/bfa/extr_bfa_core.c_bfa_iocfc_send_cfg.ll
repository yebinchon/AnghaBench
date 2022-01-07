; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_send_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_send_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32, %struct.TYPE_12__, %struct.bfa_iocfc_s }
%struct.TYPE_12__ = type { i32 }
%struct.bfa_iocfc_s = type { %struct.TYPE_11__, %struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_13__, %struct.bfa_iocfc_cfg_s, %struct.bfi_iocfc_cfg_s* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.bfa_iocfc_cfg_s = type { %struct.TYPE_19__, %struct.TYPE_14__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.bfi_iocfc_cfg_s = type { i32, i32, %struct.TYPE_20__, i8**, i32*, i32*, i8**, i32*, i32*, i32, i8*, i8*, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.bfi_iocfc_cfg_req_s = type { i32, i32 }

@BFI_IOC_MAX_CQS = common dso_local global i32 0, align 4
@BFI_IOC_ENDIAN_SIG = common dso_local global i32 0, align 4
@bfa_iocfc_sm_init_cfg_wait = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@BFI_MC_IOCFC = common dso_local global i32 0, align 4
@BFI_IOCFC_H2I_CFG_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bfa_iocfc_send_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_iocfc_send_cfg(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca %struct.bfa_iocfc_s*, align 8
  %5 = alloca %struct.bfi_iocfc_cfg_req_s, align 4
  %6 = alloca %struct.bfi_iocfc_cfg_s*, align 8
  %7 = alloca %struct.bfa_iocfc_cfg_s*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.bfa_s*
  store %struct.bfa_s* %10, %struct.bfa_s** %3, align 8
  %11 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %12 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %11, i32 0, i32 2
  store %struct.bfa_iocfc_s* %12, %struct.bfa_iocfc_s** %4, align 8
  %13 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %4, align 8
  %14 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %13, i32 0, i32 7
  %15 = load %struct.bfi_iocfc_cfg_s*, %struct.bfi_iocfc_cfg_s** %14, align 8
  store %struct.bfi_iocfc_cfg_s* %15, %struct.bfi_iocfc_cfg_s** %6, align 8
  %16 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %4, align 8
  %17 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %16, i32 0, i32 6
  store %struct.bfa_iocfc_cfg_s* %17, %struct.bfa_iocfc_cfg_s** %7, align 8
  %18 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %7, align 8
  %19 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BFI_IOC_MAX_CQS, align 4
  %23 = icmp sgt i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %27 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %7, align 8
  %28 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bfa_trc(%struct.bfa_s* %26, i32 %30)
  %32 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %33 = call i32 @bfa_iocfc_reset_queues(%struct.bfa_s* %32)
  %34 = load %struct.bfi_iocfc_cfg_s*, %struct.bfi_iocfc_cfg_s** %6, align 8
  %35 = getelementptr inbounds %struct.bfi_iocfc_cfg_s, %struct.bfi_iocfc_cfg_s* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %37 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %1
  %42 = load %struct.bfi_iocfc_cfg_s*, %struct.bfi_iocfc_cfg_s** %6, align 8
  %43 = getelementptr inbounds %struct.bfi_iocfc_cfg_s, %struct.bfi_iocfc_cfg_s* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %1
  %45 = load i32, i32* @BFI_IOC_ENDIAN_SIG, align 4
  %46 = load %struct.bfi_iocfc_cfg_s*, %struct.bfi_iocfc_cfg_s** %6, align 8
  %47 = getelementptr inbounds %struct.bfi_iocfc_cfg_s, %struct.bfi_iocfc_cfg_s* %46, i32 0, i32 12
  store i32 %45, i32* %47, align 8
  %48 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %7, align 8
  %49 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.bfi_iocfc_cfg_s*, %struct.bfi_iocfc_cfg_s** %6, align 8
  %53 = getelementptr inbounds %struct.bfi_iocfc_cfg_s, %struct.bfi_iocfc_cfg_s* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %55 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %7, align 8
  %56 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @bfa_fcpim_get_throttle_cfg(%struct.bfa_s* %54, i32 %58)
  %60 = call i8* @cpu_to_be16(i32 %59)
  %61 = load %struct.bfi_iocfc_cfg_s*, %struct.bfi_iocfc_cfg_s** %6, align 8
  %62 = getelementptr inbounds %struct.bfi_iocfc_cfg_s, %struct.bfi_iocfc_cfg_s* %61, i32 0, i32 11
  store i8* %60, i8** %62, align 8
  %63 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %7, align 8
  %64 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @cpu_to_be16(i32 %66)
  %68 = load %struct.bfi_iocfc_cfg_s*, %struct.bfi_iocfc_cfg_s** %6, align 8
  %69 = getelementptr inbounds %struct.bfi_iocfc_cfg_s, %struct.bfi_iocfc_cfg_s* %68, i32 0, i32 10
  store i8* %67, i8** %69, align 8
  %70 = load %struct.bfi_iocfc_cfg_s*, %struct.bfi_iocfc_cfg_s** %6, align 8
  %71 = getelementptr inbounds %struct.bfi_iocfc_cfg_s, %struct.bfi_iocfc_cfg_s* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %4, align 8
  %74 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @bfa_dma_be_addr_set(i32 %72, i32 %76)
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %172, %44
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %7, align 8
  %81 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %79, %83
  br i1 %84, label %85, label %175

85:                                               ; preds = %78
  %86 = load %struct.bfi_iocfc_cfg_s*, %struct.bfi_iocfc_cfg_s** %6, align 8
  %87 = getelementptr inbounds %struct.bfi_iocfc_cfg_s, %struct.bfi_iocfc_cfg_s* %86, i32 0, i32 8
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %4, align 8
  %94 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %93, i32 0, i32 4
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @bfa_dma_be_addr_set(i32 %92, i32 %100)
  %102 = load %struct.bfi_iocfc_cfg_s*, %struct.bfi_iocfc_cfg_s** %6, align 8
  %103 = getelementptr inbounds %struct.bfi_iocfc_cfg_s, %struct.bfi_iocfc_cfg_s* %102, i32 0, i32 7
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %4, align 8
  %110 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %109, i32 0, i32 3
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @bfa_dma_be_addr_set(i32 %108, i32 %116)
  %118 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %7, align 8
  %119 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @cpu_to_be16(i32 %121)
  %123 = load %struct.bfi_iocfc_cfg_s*, %struct.bfi_iocfc_cfg_s** %6, align 8
  %124 = getelementptr inbounds %struct.bfi_iocfc_cfg_s, %struct.bfi_iocfc_cfg_s* %123, i32 0, i32 6
  %125 = load i8**, i8*** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  store i8* %122, i8** %128, align 8
  %129 = load %struct.bfi_iocfc_cfg_s*, %struct.bfi_iocfc_cfg_s** %6, align 8
  %130 = getelementptr inbounds %struct.bfi_iocfc_cfg_s, %struct.bfi_iocfc_cfg_s* %129, i32 0, i32 5
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %4, align 8
  %137 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %136, i32 0, i32 2
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @bfa_dma_be_addr_set(i32 %135, i32 %143)
  %145 = load %struct.bfi_iocfc_cfg_s*, %struct.bfi_iocfc_cfg_s** %6, align 8
  %146 = getelementptr inbounds %struct.bfi_iocfc_cfg_s, %struct.bfi_iocfc_cfg_s* %145, i32 0, i32 4
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %4, align 8
  %153 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %152, i32 0, i32 1
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @bfa_dma_be_addr_set(i32 %151, i32 %159)
  %161 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %7, align 8
  %162 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i8* @cpu_to_be16(i32 %164)
  %166 = load %struct.bfi_iocfc_cfg_s*, %struct.bfi_iocfc_cfg_s** %6, align 8
  %167 = getelementptr inbounds %struct.bfi_iocfc_cfg_s, %struct.bfi_iocfc_cfg_s* %166, i32 0, i32 3
  %168 = load i8**, i8*** %167, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %168, i64 %170
  store i8* %165, i8** %171, align 8
  br label %172

172:                                              ; preds = %85
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %8, align 4
  br label %78

175:                                              ; preds = %78
  %176 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %4, align 8
  %177 = load i32, i32* @bfa_iocfc_sm_init_cfg_wait, align 4
  %178 = call i64 @bfa_fsm_cmp_state(%struct.bfa_iocfc_s* %176, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = load i32, i32* @BFA_TRUE, align 4
  %182 = load %struct.bfi_iocfc_cfg_s*, %struct.bfi_iocfc_cfg_s** %6, align 8
  %183 = getelementptr inbounds %struct.bfi_iocfc_cfg_s, %struct.bfi_iocfc_cfg_s* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 0
  store i32 %181, i32* %184, align 8
  br label %185

185:                                              ; preds = %180, %175
  %186 = getelementptr inbounds %struct.bfi_iocfc_cfg_req_s, %struct.bfi_iocfc_cfg_req_s* %5, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @BFI_MC_IOCFC, align 4
  %189 = load i32, i32* @BFI_IOCFC_H2I_CFG_REQ, align 4
  %190 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %191 = call i32 @bfa_fn_lpu(%struct.bfa_s* %190)
  %192 = call i32 @bfi_h2i_set(i32 %187, i32 %188, i32 %189, i32 %191)
  %193 = getelementptr inbounds %struct.bfi_iocfc_cfg_req_s, %struct.bfi_iocfc_cfg_req_s* %5, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %4, align 8
  %196 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @bfa_dma_be_addr_set(i32 %194, i32 %198)
  %200 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %201 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %200, i32 0, i32 0
  %202 = call i32 @bfa_ioc_mbox_send(i32* %201, %struct.bfi_iocfc_cfg_req_s* %5, i32 8)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_trc(%struct.bfa_s*, i32) #1

declare dso_local i32 @bfa_iocfc_reset_queues(%struct.bfa_s*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @bfa_fcpim_get_throttle_cfg(%struct.bfa_s*, i32) #1

declare dso_local i32 @bfa_dma_be_addr_set(i32, i32) #1

declare dso_local i64 @bfa_fsm_cmp_state(%struct.bfa_iocfc_s*, i32) #1

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fn_lpu(%struct.bfa_s*) #1

declare dso_local i32 @bfa_ioc_mbox_send(i32*, %struct.bfi_iocfc_cfg_req_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
