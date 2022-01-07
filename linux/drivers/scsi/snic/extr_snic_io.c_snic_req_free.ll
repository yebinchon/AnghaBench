; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_io.c_snic_req_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_io.c_snic_req_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic = type { i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.snic_req_info = type { i64, i32, i64, i64, %struct.snic_req_info*, %struct.snic_req_info*, %struct.snic_req_info* }

@.str = private unnamed_addr constant [39 x i8] c"Req_free:rqi %p:ioreq %p:abt %p:dr %p\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@SNIC_REQ_TM_CACHE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snic_req_free(%struct.snic* %0, %struct.snic_req_info* %1) #0 {
  %3 = alloca %struct.snic*, align 8
  %4 = alloca %struct.snic_req_info*, align 8
  store %struct.snic* %0, %struct.snic** %3, align 8
  store %struct.snic_req_info* %1, %struct.snic_req_info** %4, align 8
  %5 = load %struct.snic_req_info*, %struct.snic_req_info** %4, align 8
  %6 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %5, i32 0, i32 4
  %7 = load %struct.snic_req_info*, %struct.snic_req_info** %6, align 8
  %8 = load %struct.snic_req_info*, %struct.snic_req_info** %4, align 8
  %9 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %8, i32 0, i32 6
  %10 = load %struct.snic_req_info*, %struct.snic_req_info** %9, align 8
  %11 = icmp eq %struct.snic_req_info* %7, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @SNIC_BUG_ON(i32 %12)
  %14 = load %struct.snic_req_info*, %struct.snic_req_info** %4, align 8
  %15 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %14, i32 0, i32 4
  %16 = load %struct.snic_req_info*, %struct.snic_req_info** %15, align 8
  %17 = load %struct.snic_req_info*, %struct.snic_req_info** %4, align 8
  %18 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %17, i32 0, i32 5
  %19 = load %struct.snic_req_info*, %struct.snic_req_info** %18, align 8
  %20 = icmp eq %struct.snic_req_info* %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @SNIC_BUG_ON(i32 %21)
  %23 = load %struct.snic_req_info*, %struct.snic_req_info** %4, align 8
  %24 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @SNIC_BUG_ON(i32 %27)
  %29 = load %struct.snic*, %struct.snic** %3, align 8
  %30 = getelementptr inbounds %struct.snic, %struct.snic* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.snic_req_info*, %struct.snic_req_info** %4, align 8
  %33 = load %struct.snic_req_info*, %struct.snic_req_info** %4, align 8
  %34 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %33, i32 0, i32 4
  %35 = load %struct.snic_req_info*, %struct.snic_req_info** %34, align 8
  %36 = load %struct.snic_req_info*, %struct.snic_req_info** %4, align 8
  %37 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %36, i32 0, i32 6
  %38 = load %struct.snic_req_info*, %struct.snic_req_info** %37, align 8
  %39 = load %struct.snic_req_info*, %struct.snic_req_info** %4, align 8
  %40 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %39, i32 0, i32 5
  %41 = load %struct.snic_req_info*, %struct.snic_req_info** %40, align 8
  %42 = call i32 @SNIC_SCSI_DBG(i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.snic_req_info* %32, %struct.snic_req_info* %35, %struct.snic_req_info* %38, %struct.snic_req_info* %41)
  %43 = load %struct.snic_req_info*, %struct.snic_req_info** %4, align 8
  %44 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %43, i32 0, i32 6
  %45 = load %struct.snic_req_info*, %struct.snic_req_info** %44, align 8
  %46 = icmp ne %struct.snic_req_info* %45, null
  br i1 %46, label %47, label %77

47:                                               ; preds = %2
  %48 = load %struct.snic_req_info*, %struct.snic_req_info** %4, align 8
  %49 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %48, i32 0, i32 6
  %50 = load %struct.snic_req_info*, %struct.snic_req_info** %49, align 8
  %51 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %47
  %55 = load %struct.snic*, %struct.snic** %3, align 8
  %56 = getelementptr inbounds %struct.snic, %struct.snic* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.snic_req_info*, %struct.snic_req_info** %4, align 8
  %60 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %59, i32 0, i32 6
  %61 = load %struct.snic_req_info*, %struct.snic_req_info** %60, align 8
  %62 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @DMA_TO_DEVICE, align 4
  %65 = call i32 @dma_unmap_single(i32* %58, i64 %63, i32 4, i32 %64)
  br label %66

66:                                               ; preds = %54, %47
  %67 = load %struct.snic_req_info*, %struct.snic_req_info** %4, align 8
  %68 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %67, i32 0, i32 6
  %69 = load %struct.snic_req_info*, %struct.snic_req_info** %68, align 8
  %70 = load %struct.snic*, %struct.snic** %3, align 8
  %71 = getelementptr inbounds %struct.snic, %struct.snic* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @SNIC_REQ_TM_CACHE, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @mempool_free(%struct.snic_req_info* %69, i32 %75)
  br label %77

77:                                               ; preds = %66, %2
  %78 = load %struct.snic_req_info*, %struct.snic_req_info** %4, align 8
  %79 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %78, i32 0, i32 5
  %80 = load %struct.snic_req_info*, %struct.snic_req_info** %79, align 8
  %81 = icmp ne %struct.snic_req_info* %80, null
  br i1 %81, label %82, label %112

82:                                               ; preds = %77
  %83 = load %struct.snic_req_info*, %struct.snic_req_info** %4, align 8
  %84 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %83, i32 0, i32 5
  %85 = load %struct.snic_req_info*, %struct.snic_req_info** %84, align 8
  %86 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %82
  %90 = load %struct.snic*, %struct.snic** %3, align 8
  %91 = getelementptr inbounds %struct.snic, %struct.snic* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load %struct.snic_req_info*, %struct.snic_req_info** %4, align 8
  %95 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %94, i32 0, i32 5
  %96 = load %struct.snic_req_info*, %struct.snic_req_info** %95, align 8
  %97 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* @DMA_TO_DEVICE, align 4
  %100 = call i32 @dma_unmap_single(i32* %93, i64 %98, i32 4, i32 %99)
  br label %101

101:                                              ; preds = %89, %82
  %102 = load %struct.snic_req_info*, %struct.snic_req_info** %4, align 8
  %103 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %102, i32 0, i32 5
  %104 = load %struct.snic_req_info*, %struct.snic_req_info** %103, align 8
  %105 = load %struct.snic*, %struct.snic** %3, align 8
  %106 = getelementptr inbounds %struct.snic, %struct.snic* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @SNIC_REQ_TM_CACHE, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @mempool_free(%struct.snic_req_info* %104, i32 %110)
  br label %112

112:                                              ; preds = %101, %77
  %113 = load %struct.snic_req_info*, %struct.snic_req_info** %4, align 8
  %114 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %113, i32 0, i32 4
  %115 = load %struct.snic_req_info*, %struct.snic_req_info** %114, align 8
  %116 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %112
  %120 = load %struct.snic*, %struct.snic** %3, align 8
  %121 = getelementptr inbounds %struct.snic, %struct.snic* %120, i32 0, i32 1
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load %struct.snic_req_info*, %struct.snic_req_info** %4, align 8
  %125 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %124, i32 0, i32 4
  %126 = load %struct.snic_req_info*, %struct.snic_req_info** %125, align 8
  %127 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.snic_req_info*, %struct.snic_req_info** %4, align 8
  %130 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @DMA_TO_DEVICE, align 4
  %133 = call i32 @dma_unmap_single(i32* %123, i64 %128, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %119, %112
  %135 = load %struct.snic_req_info*, %struct.snic_req_info** %4, align 8
  %136 = load %struct.snic*, %struct.snic** %3, align 8
  %137 = getelementptr inbounds %struct.snic, %struct.snic* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.snic_req_info*, %struct.snic_req_info** %4, align 8
  %140 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @mempool_free(%struct.snic_req_info* %135, i32 %143)
  ret void
}

declare dso_local i32 @SNIC_BUG_ON(i32) #1

declare dso_local i32 @SNIC_SCSI_DBG(i32, i8*, %struct.snic_req_info*, %struct.snic_req_info*, %struct.snic_req_info*, %struct.snic_req_info*) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @mempool_free(%struct.snic_req_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
