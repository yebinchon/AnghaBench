; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_mbx_cmpl_rdp_page_a2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_mbx_cmpl_rdp_page_a2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.TYPE_11__ = type { %struct.lpfc_rdp_context*, i32, i32, %struct.TYPE_9__, i64 }
%struct.lpfc_rdp_context = type { i32 (%struct.lpfc_hba.0*, %struct.lpfc_rdp_context*, i32)*, %struct.TYPE_10__*, i32 }
%struct.lpfc_hba.0 = type opaque
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.lpfc_dmabuf = type { i32, i32 }

@lpfc_mqe_status = common dso_local global i32 0, align 4
@DMP_SFF_PAGE_A2_SIZE = common dso_local global i32 0, align 4
@lpfc_mbx_cmpl_rdp_link_stat = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i64 0, align 8
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.TYPE_11__*)* @lpfc_mbx_cmpl_rdp_page_a2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_mbx_cmpl_rdp_page_a2(%struct.lpfc_hba* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.lpfc_dmabuf*, align 8
  %6 = alloca %struct.lpfc_rdp_context*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %10, %struct.lpfc_dmabuf** %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %12, align 8
  store %struct.lpfc_rdp_context* %13, %struct.lpfc_rdp_context** %6, align 8
  %14 = load i32, i32* @lpfc_mqe_status, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = call i64 @bf_get(i32 %14, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %65

21:                                               ; preds = %2
  %22 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %23 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %6, align 8
  %26 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %25, i32 0, i32 2
  %27 = load i32, i32* @DMP_SFF_PAGE_A2_SIZE, align 4
  %28 = call i32 @lpfc_sli_bemem_bcopy(i32 %24, i32* %26, i32 %27)
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %30 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %31 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %34 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %29, i32 %32, i32 %35)
  %37 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %38 = call i32 @kfree(%struct.lpfc_dmabuf* %37)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = call i32 @memset(%struct.TYPE_11__* %39, i32 0, i32 32)
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = call i32 @lpfc_read_lnk_stat(%struct.lpfc_hba* %41, %struct.TYPE_11__* %42)
  %44 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %6, align 8
  %45 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %44, i32 0, i32 1
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @lpfc_mbx_cmpl_rdp_link_stat, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %6, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  store %struct.lpfc_rdp_context* %54, %struct.lpfc_rdp_context** %56, align 8
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = load i32, i32* @MBX_NOWAIT, align 4
  %60 = call i64 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %57, %struct.TYPE_11__* %58, i32 %59)
  %61 = load i64, i64* @MBX_NOT_FINISHED, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %21
  br label %76

64:                                               ; preds = %21
  br label %88

65:                                               ; preds = %20
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %67 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %68 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %71 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %66, i32 %69, i32 %72)
  %74 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %75 = call i32 @kfree(%struct.lpfc_dmabuf* %74)
  br label %76

76:                                               ; preds = %65, %63
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = call i32 @lpfc_sli4_mbox_cmd_free(%struct.lpfc_hba* %77, %struct.TYPE_11__* %78)
  %80 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %6, align 8
  %81 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %80, i32 0, i32 0
  %82 = load i32 (%struct.lpfc_hba.0*, %struct.lpfc_rdp_context*, i32)*, i32 (%struct.lpfc_hba.0*, %struct.lpfc_rdp_context*, i32)** %81, align 8
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %84 = bitcast %struct.lpfc_hba* %83 to %struct.lpfc_hba.0*
  %85 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %6, align 8
  %86 = load i32, i32* @FAILURE, align 4
  %87 = call i32 %82(%struct.lpfc_hba.0* %84, %struct.lpfc_rdp_context* %85, i32 %86)
  br label %88

88:                                               ; preds = %76, %64
  ret void
}

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local i32 @lpfc_sli_bemem_bcopy(i32, i32*, i32) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @lpfc_read_lnk_stat(%struct.lpfc_hba*, %struct.TYPE_11__*) #1

declare dso_local i64 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @lpfc_sli4_mbox_cmd_free(%struct.lpfc_hba*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
