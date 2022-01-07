; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_create_bootstrap_mbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_create_bootstrap_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.dma_address, i32, %struct.lpfc_dmabuf* }
%struct.dma_address = type { i32, i32 }
%struct.lpfc_dmabuf = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LPFC_ALIGN_16_BYTE = common dso_local global i32 0, align 4
@LPFC_BMBX_BIT1_ADDR_HI = common dso_local global i32 0, align 4
@LPFC_BMBX_BIT1_ADDR_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_create_bootstrap_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_create_bootstrap_mbox(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_dmabuf*, align 8
  %6 = alloca %struct.dma_address*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.lpfc_dmabuf* @kzalloc(i32 8, i32 %9)
  store %struct.lpfc_dmabuf* %10, %struct.lpfc_dmabuf** %5, align 8
  %11 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %12 = icmp ne %struct.lpfc_dmabuf* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %102

16:                                               ; preds = %1
  %17 = load i32, i32* @LPFC_ALIGN_16_BYTE, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = add i64 4, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %4, align 4
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %28 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %27, i32 0, i32 0
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32 @dma_alloc_coherent(i32* %25, i32 %26, i32* %28, i32 %29)
  %31 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %32 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %34 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %16
  %38 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %39 = call i32 @kfree(%struct.lpfc_dmabuf* %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %102

42:                                               ; preds = %16
  %43 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 4
  store %struct.lpfc_dmabuf* %43, %struct.lpfc_dmabuf** %47, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %50 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 8
  %53 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %54 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @LPFC_ALIGN_16_BYTE, align 4
  %57 = call i32 @PTR_ALIGN(i32 %55, i32 %56)
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %59 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  store i32 %57, i32* %61, align 8
  %62 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %5, align 8
  %63 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @LPFC_ALIGN_16_BYTE, align 4
  %66 = call i32 @ALIGN(i32 %64, i32 %65)
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %68 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  store i32 %66, i32* %70, align 4
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %72 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  store %struct.dma_address* %74, %struct.dma_address** %6, align 8
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = ashr i32 %80, 34
  %82 = and i32 %81, 1073741823
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = shl i32 %83, 2
  %85 = load i32, i32* @LPFC_BMBX_BIT1_ADDR_HI, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.dma_address*, %struct.dma_address** %6, align 8
  %88 = getelementptr inbounds %struct.dma_address, %struct.dma_address* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %90 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 4
  %95 = and i32 %94, 1073741823
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = shl i32 %96, 2
  %98 = load i32, i32* @LPFC_BMBX_BIT1_ADDR_LO, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.dma_address*, %struct.dma_address** %6, align 8
  %101 = getelementptr inbounds %struct.dma_address, %struct.dma_address* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %42, %37, %13
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.lpfc_dmabuf* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @PTR_ALIGN(i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
