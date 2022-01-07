; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_create_rpi_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_create_rpi_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_rpi_hdr = type { i32, i64, i32, i64, i32, %struct.lpfc_dmabuf* }
%struct.lpfc_dmabuf = type { i32, i32 }
%struct.lpfc_hba = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@LPFC_HDR_TEMPLATE_SIZE = common dso_local global i32 0, align 4
@LPFC_RPI_HDR_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lpfc_rpi_hdr* @lpfc_sli4_create_rpi_hdr(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_rpi_hdr*, align 8
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.lpfc_dmabuf*, align 8
  %7 = alloca %struct.lpfc_rpi_hdr*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %9 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.lpfc_rpi_hdr* null, %struct.lpfc_rpi_hdr** %2, align 8
  br label %129

14:                                               ; preds = %1
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store %struct.lpfc_rpi_hdr* null, %struct.lpfc_rpi_hdr** %2, align 8
  br label %129

21:                                               ; preds = %14
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %4, align 8
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 1
  %29 = call i32 @spin_lock_irq(i32* %28)
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %5, align 8
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 1
  %36 = call i32 @spin_unlock_irq(i32* %35)
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %21
  store %struct.lpfc_rpi_hdr* null, %struct.lpfc_rpi_hdr** %2, align 8
  br label %129

41:                                               ; preds = %21
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @kzalloc(i32 8, i32 %42)
  %44 = bitcast i8* %43 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %44, %struct.lpfc_dmabuf** %6, align 8
  %45 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %46 = icmp ne %struct.lpfc_dmabuf* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  store %struct.lpfc_rpi_hdr* null, %struct.lpfc_rpi_hdr** %2, align 8
  br label %129

48:                                               ; preds = %41
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %50 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* @LPFC_HDR_TEMPLATE_SIZE, align 4
  %54 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %55 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %54, i32 0, i32 0
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i32 @dma_alloc_coherent(i32* %52, i32 %53, i32* %55, i32 %56)
  %58 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %59 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %61 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %48
  store %struct.lpfc_rpi_hdr* null, %struct.lpfc_rpi_hdr** %7, align 8
  br label %126

65:                                               ; preds = %48
  %66 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %67 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @LPFC_HDR_TEMPLATE_SIZE, align 4
  %70 = call i32 @IS_ALIGNED(i32 %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  store %struct.lpfc_rpi_hdr* null, %struct.lpfc_rpi_hdr** %7, align 8
  br label %113

73:                                               ; preds = %65
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i8* @kzalloc(i32 48, i32 %74)
  %76 = bitcast i8* %75 to %struct.lpfc_rpi_hdr*
  store %struct.lpfc_rpi_hdr* %76, %struct.lpfc_rpi_hdr** %7, align 8
  %77 = load %struct.lpfc_rpi_hdr*, %struct.lpfc_rpi_hdr** %7, align 8
  %78 = icmp ne %struct.lpfc_rpi_hdr* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  br label %113

80:                                               ; preds = %73
  %81 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %82 = load %struct.lpfc_rpi_hdr*, %struct.lpfc_rpi_hdr** %7, align 8
  %83 = getelementptr inbounds %struct.lpfc_rpi_hdr, %struct.lpfc_rpi_hdr* %82, i32 0, i32 5
  store %struct.lpfc_dmabuf* %81, %struct.lpfc_dmabuf** %83, align 8
  %84 = load i32, i32* @LPFC_HDR_TEMPLATE_SIZE, align 4
  %85 = load %struct.lpfc_rpi_hdr*, %struct.lpfc_rpi_hdr** %7, align 8
  %86 = getelementptr inbounds %struct.lpfc_rpi_hdr, %struct.lpfc_rpi_hdr* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load %struct.lpfc_rpi_hdr*, %struct.lpfc_rpi_hdr** %7, align 8
  %88 = getelementptr inbounds %struct.lpfc_rpi_hdr, %struct.lpfc_rpi_hdr* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %90 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %89, i32 0, i32 1
  %91 = call i32 @spin_lock_irq(i32* %90)
  %92 = load i64, i64* %5, align 8
  %93 = load %struct.lpfc_rpi_hdr*, %struct.lpfc_rpi_hdr** %7, align 8
  %94 = getelementptr inbounds %struct.lpfc_rpi_hdr, %struct.lpfc_rpi_hdr* %93, i32 0, i32 3
  store i64 %92, i64* %94, align 8
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %96 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @LPFC_RPI_HDR_COUNT, align 8
  %100 = add nsw i64 %98, %99
  %101 = load %struct.lpfc_rpi_hdr*, %struct.lpfc_rpi_hdr** %7, align 8
  %102 = getelementptr inbounds %struct.lpfc_rpi_hdr, %struct.lpfc_rpi_hdr* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load %struct.lpfc_rpi_hdr*, %struct.lpfc_rpi_hdr** %7, align 8
  %104 = getelementptr inbounds %struct.lpfc_rpi_hdr, %struct.lpfc_rpi_hdr* %103, i32 0, i32 2
  %105 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %106 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = call i32 @list_add_tail(i32* %104, i32* %107)
  %109 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %110 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %109, i32 0, i32 1
  %111 = call i32 @spin_unlock_irq(i32* %110)
  %112 = load %struct.lpfc_rpi_hdr*, %struct.lpfc_rpi_hdr** %7, align 8
  store %struct.lpfc_rpi_hdr* %112, %struct.lpfc_rpi_hdr** %2, align 8
  br label %129

113:                                              ; preds = %79, %72
  %114 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %115 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* @LPFC_HDR_TEMPLATE_SIZE, align 4
  %119 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %120 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %123 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dma_free_coherent(i32* %117, i32 %118, i32 %121, i32 %124)
  br label %126

126:                                              ; preds = %113, %64
  %127 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %128 = call i32 @kfree(%struct.lpfc_dmabuf* %127)
  store %struct.lpfc_rpi_hdr* null, %struct.lpfc_rpi_hdr** %2, align 8
  br label %129

129:                                              ; preds = %126, %80, %47, %40, %20, %13
  %130 = load %struct.lpfc_rpi_hdr*, %struct.lpfc_rpi_hdr** %2, align 8
  ret %struct.lpfc_rpi_hdr* %130
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
