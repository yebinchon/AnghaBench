; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_tmf.c_asd_get_tmf_resp_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_tmf.c_asd_get_tmf_resp_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ascb = type { i32, i32, i32, %struct.asd_ha_struct* }
%struct.asd_ha_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.asd_dma_tok**, i32 }
%struct.asd_dma_tok = type { %struct.ssp_response_iu* }
%struct.ssp_response_iu = type { i32, i32, i32*, i32 }
%struct.done_list_struct = type { i64 }
%struct.tc_resp_sb_struct = type { i32, i32, i32 }
%struct.ssp_frame_hdr = type { i32, i32, i32*, i32 }

@TMF_RESP_FUNC_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"tmf resp tasklet\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Uh-oh! No escb for this dl?!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ascb*, %struct.done_list_struct*)* @asd_get_tmf_resp_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_get_tmf_resp_tasklet(%struct.asd_ascb* %0, %struct.done_list_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asd_ascb*, align 8
  %5 = alloca %struct.done_list_struct*, align 8
  %6 = alloca %struct.asd_ha_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tc_resp_sb_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.asd_ascb*, align 8
  %11 = alloca %struct.asd_dma_tok*, align 8
  %12 = alloca %struct.ssp_frame_hdr*, align 8
  %13 = alloca %struct.ssp_response_iu*, align 8
  %14 = alloca i32, align 4
  store %struct.asd_ascb* %0, %struct.asd_ascb** %4, align 8
  store %struct.done_list_struct* %1, %struct.done_list_struct** %5, align 8
  %15 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %16 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %15, i32 0, i32 3
  %17 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %16, align 8
  store %struct.asd_ha_struct* %17, %struct.asd_ha_struct** %6, align 8
  %18 = load %struct.done_list_struct*, %struct.done_list_struct** %5, align 8
  %19 = getelementptr inbounds %struct.done_list_struct, %struct.done_list_struct* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = bitcast i8* %21 to %struct.tc_resp_sb_struct*
  store %struct.tc_resp_sb_struct* %22, %struct.tc_resp_sb_struct** %8, align 8
  %23 = load %struct.tc_resp_sb_struct*, %struct.tc_resp_sb_struct** %8, align 8
  %24 = getelementptr inbounds %struct.tc_resp_sb_struct, %struct.tc_resp_sb_struct* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 1
  %26 = and i32 %25, 112
  %27 = ashr i32 %26, 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  store i32 %29, i32* %14, align 4
  %30 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %32 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %7, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @spin_lock_irqsave(i32* %33, i32 %35)
  %37 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %38 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %37, i32 0, i32 0
  %39 = load %struct.tc_resp_sb_struct*, %struct.tc_resp_sb_struct** %8, align 8
  %40 = getelementptr inbounds %struct.tc_resp_sb_struct, %struct.tc_resp_sb_struct* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 1
  %42 = call i64 @le16_to_cpu(i32 %41)
  %43 = trunc i64 %42 to i32
  %44 = call %struct.asd_ascb* @asd_tc_index_find(%struct.TYPE_2__* %38, i32 %43)
  store %struct.asd_ascb* %44, %struct.asd_ascb** %10, align 8
  %45 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %46 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %7, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @spin_unlock_irqrestore(i32* %47, i32 %49)
  %51 = load %struct.asd_ascb*, %struct.asd_ascb** %10, align 8
  %52 = icmp ne %struct.asd_ascb* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %2
  %54 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %3, align 4
  br label %107

56:                                               ; preds = %2
  %57 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %6, align 8
  %58 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.asd_dma_tok**, %struct.asd_dma_tok*** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.asd_ascb*, %struct.asd_ascb** %10, align 8
  %63 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %61, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.asd_dma_tok*, %struct.asd_dma_tok** %60, i64 %66
  %68 = load %struct.asd_dma_tok*, %struct.asd_dma_tok** %67, align 8
  store %struct.asd_dma_tok* %68, %struct.asd_dma_tok** %11, align 8
  %69 = load %struct.asd_dma_tok*, %struct.asd_dma_tok** %11, align 8
  %70 = getelementptr inbounds %struct.asd_dma_tok, %struct.asd_dma_tok* %69, i32 0, i32 0
  %71 = load %struct.ssp_response_iu*, %struct.ssp_response_iu** %70, align 8
  %72 = getelementptr inbounds %struct.ssp_response_iu, %struct.ssp_response_iu* %71, i64 4
  %73 = bitcast %struct.ssp_response_iu* %72 to i32*
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %76 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.asd_dma_tok*, %struct.asd_dma_tok** %11, align 8
  %78 = getelementptr inbounds %struct.asd_dma_tok, %struct.asd_dma_tok* %77, i32 0, i32 0
  %79 = load %struct.ssp_response_iu*, %struct.ssp_response_iu** %78, align 8
  %80 = getelementptr inbounds %struct.ssp_response_iu, %struct.ssp_response_iu* %79, i64 16
  %81 = bitcast %struct.ssp_response_iu* %80 to %struct.ssp_frame_hdr*
  store %struct.ssp_frame_hdr* %81, %struct.ssp_frame_hdr** %12, align 8
  %82 = load %struct.asd_dma_tok*, %struct.asd_dma_tok** %11, align 8
  %83 = getelementptr inbounds %struct.asd_dma_tok, %struct.asd_dma_tok* %82, i32 0, i32 0
  %84 = load %struct.ssp_response_iu*, %struct.ssp_response_iu** %83, align 8
  %85 = getelementptr inbounds %struct.ssp_response_iu, %struct.ssp_response_iu* %84, i64 16
  %86 = getelementptr inbounds %struct.ssp_response_iu, %struct.ssp_response_iu* %85, i64 24
  store %struct.ssp_response_iu* %86, %struct.ssp_response_iu** %13, align 8
  %87 = load %struct.ssp_response_iu*, %struct.ssp_response_iu** %13, align 8
  %88 = getelementptr inbounds %struct.ssp_response_iu, %struct.ssp_response_iu* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %14, align 4
  %90 = load %struct.ssp_response_iu*, %struct.ssp_response_iu** %13, align 8
  %91 = getelementptr inbounds %struct.ssp_response_iu, %struct.ssp_response_iu* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %100

94:                                               ; preds = %56
  %95 = load %struct.ssp_response_iu*, %struct.ssp_response_iu** %13, align 8
  %96 = getelementptr inbounds %struct.ssp_response_iu, %struct.ssp_response_iu* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %14, align 4
  br label %100

100:                                              ; preds = %94, %56
  %101 = load %struct.asd_ascb*, %struct.asd_ascb** %4, align 8
  %102 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %101, i32 0, i32 1
  store i32 1, i32* %102, align 4
  %103 = load %struct.asd_ascb*, %struct.asd_ascb** %10, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @asd_invalidate_edb(%struct.asd_ascb* %103, i32 %104)
  %106 = load i32, i32* %14, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %100, %53
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @ASD_DPRINTK(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local %struct.asd_ascb* @asd_tc_index_find(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @asd_invalidate_edb(%struct.asd_ascb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
