; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_alloc_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_alloc_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.pci9118_private* }
%struct.pci9118_private = type { i32, i32, %struct.pci9118_dmabuf* }
%struct.pci9118_dmabuf = type { i32, i64, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @pci9118_alloc_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci9118_alloc_dma(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.pci9118_private*, align 8
  %4 = alloca %struct.pci9118_dmabuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 1
  %9 = load %struct.pci9118_private*, %struct.pci9118_private** %8, align 8
  store %struct.pci9118_private* %9, %struct.pci9118_private** %3, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %69, %1
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %72

13:                                               ; preds = %10
  %14 = load %struct.pci9118_private*, %struct.pci9118_private** %3, align 8
  %15 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %14, i32 0, i32 2
  %16 = load %struct.pci9118_dmabuf*, %struct.pci9118_dmabuf** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.pci9118_dmabuf, %struct.pci9118_dmabuf* %16, i64 %18
  store %struct.pci9118_dmabuf* %19, %struct.pci9118_dmabuf** %4, align 8
  store i32 2, i32* %5, align 4
  br label %20

20:                                               ; preds = %42, %13
  %21 = load i32, i32* %5, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %20
  %24 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = load i32, i32* %5, align 4
  %29 = shl i32 %27, %28
  %30 = load %struct.pci9118_dmabuf*, %struct.pci9118_dmabuf** %4, align 8
  %31 = getelementptr inbounds %struct.pci9118_dmabuf, %struct.pci9118_dmabuf* %30, i32 0, i32 2
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i64 @dma_alloc_coherent(i32 %26, i32 %29, i32* %31, i32 %32)
  %34 = load %struct.pci9118_dmabuf*, %struct.pci9118_dmabuf** %4, align 8
  %35 = getelementptr inbounds %struct.pci9118_dmabuf, %struct.pci9118_dmabuf* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.pci9118_dmabuf*, %struct.pci9118_dmabuf** %4, align 8
  %37 = getelementptr inbounds %struct.pci9118_dmabuf, %struct.pci9118_dmabuf* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %23
  br label %45

41:                                               ; preds = %23
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %5, align 4
  br label %20

45:                                               ; preds = %40, %20
  %46 = load %struct.pci9118_dmabuf*, %struct.pci9118_dmabuf** %4, align 8
  %47 = getelementptr inbounds %struct.pci9118_dmabuf, %struct.pci9118_dmabuf* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %72

51:                                               ; preds = %45
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = load i32, i32* %5, align 4
  %54 = shl i32 %52, %53
  %55 = load %struct.pci9118_dmabuf*, %struct.pci9118_dmabuf** %4, align 8
  %56 = getelementptr inbounds %struct.pci9118_dmabuf, %struct.pci9118_dmabuf* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load %struct.pci9118_private*, %struct.pci9118_private** %3, align 8
  %61 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  br label %62

62:                                               ; preds = %59, %51
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.pci9118_private*, %struct.pci9118_private** %3, align 8
  %67 = getelementptr inbounds %struct.pci9118_private, %struct.pci9118_private* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %10

72:                                               ; preds = %50, %10
  ret void
}

declare dso_local i64 @dma_alloc_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
