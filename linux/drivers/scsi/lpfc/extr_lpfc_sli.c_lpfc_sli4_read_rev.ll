; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_read_rev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_read_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.lpfc_mqe }
%struct.lpfc_mqe = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i64, i32, i32 }
%struct.lpfc_dmabuf = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lpfc_mbx_rd_rev_vpd = common dso_local global i32 0, align 4
@lpfc_mbx_rd_rev_avail_len = common dso_local global i32 0, align 4
@MBX_POLL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.TYPE_12__*, i32*, i64*)* @lpfc_sli4_read_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_read_rev(%struct.lpfc_hba* %0, %struct.TYPE_12__* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.lpfc_dmabuf*, align 8
  %13 = alloca %struct.lpfc_mqe*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.lpfc_dmabuf* @kzalloc(i32 8, i32 %14)
  store %struct.lpfc_dmabuf* %15, %struct.lpfc_dmabuf** %12, align 8
  %16 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %17 = icmp ne %struct.lpfc_dmabuf* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %145

21:                                               ; preds = %4
  %22 = load i64*, i64** %9, align 8
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %11, align 8
  %29 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %30 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %29, i32 0, i32 0
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32 @dma_alloc_coherent(i32* %27, i64 %28, i32* %30, i32 %31)
  %33 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %34 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %36 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %21
  %40 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %41 = call i32 @kfree(%struct.lpfc_dmabuf* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %145

44:                                               ; preds = %21
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %47 = call i32 @lpfc_read_rev(%struct.lpfc_hba* %45, %struct.TYPE_12__* %46)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store %struct.lpfc_mqe* %50, %struct.lpfc_mqe** %13, align 8
  %51 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %52 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @putPaddrHigh(i32 %53)
  %55 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %13, align 8
  %56 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 3
  store i32 %54, i32* %58, align 4
  %59 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %60 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @putPaddrLow(i32 %61)
  %63 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %13, align 8
  %64 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 2
  store i32 %62, i32* %66, align 8
  %67 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %13, align 8
  %68 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, 65535
  store i32 %72, i32* %70, align 8
  %73 = load i32, i32* @lpfc_mbx_rd_rev_vpd, align 4
  %74 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %13, align 8
  %75 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = call i32 @bf_set(i32 %73, %struct.TYPE_13__* %76, i64 1)
  %78 = load i32, i32* @lpfc_mbx_rd_rev_avail_len, align 4
  %79 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %13, align 8
  %80 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64, i64* %11, align 8
  %83 = call i32 @bf_set(i32 %78, %struct.TYPE_13__* %81, i64 %82)
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %86 = load i32, i32* @MBX_POLL, align 4
  %87 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %84, %struct.TYPE_12__* %85, i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %44
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %92 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %91, i32 0, i32 0
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i64, i64* %11, align 8
  %96 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %97 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %100 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @dma_free_coherent(i32* %94, i64 %95, i32 %98, i32 %101)
  %103 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %104 = call i32 @kfree(%struct.lpfc_dmabuf* %103)
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %5, align 4
  br label %145

107:                                              ; preds = %44
  %108 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %13, align 8
  %109 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64*, i64** %9, align 8
  %114 = load i64, i64* %113, align 8
  %115 = icmp slt i64 %112, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %107
  %117 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %13, align 8
  %118 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64*, i64** %9, align 8
  store i64 %121, i64* %122, align 8
  br label %123

123:                                              ; preds = %116, %107
  %124 = load i32*, i32** %8, align 8
  %125 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %126 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i64*, i64** %9, align 8
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @memcpy(i32* %124, i32 %127, i64 %129)
  %131 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %132 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %131, i32 0, i32 0
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i64, i64* %11, align 8
  %136 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %137 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %140 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @dma_free_coherent(i32* %134, i64 %135, i32 %138, i32 %141)
  %143 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %144 = call i32 @kfree(%struct.lpfc_dmabuf* %143)
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %123, %90, %39, %18
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local %struct.lpfc_dmabuf* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_read_rev(%struct.lpfc_hba*, %struct.TYPE_12__*) #1

declare dso_local i32 @putPaddrHigh(i32) #1

declare dso_local i32 @putPaddrLow(i32) #1

declare dso_local i32 @bf_set(i32, %struct.TYPE_13__*, i64) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
