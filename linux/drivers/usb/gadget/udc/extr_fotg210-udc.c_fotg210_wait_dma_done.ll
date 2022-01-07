; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_wait_dma_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_wait_dma_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_ep = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@FOTG210_DISGR2 = common dso_local global i64 0, align 8
@DISGR2_USBRST_INT = common dso_local global i32 0, align 4
@DISGR2_DMA_ERROR = common dso_local global i32 0, align 4
@DISGR2_DMA_CMPLT = common dso_local global i32 0, align 4
@FOTG210_DMACPSR1 = common dso_local global i64 0, align 8
@DMACPSR1_DMA_ABORT = common dso_local global i32 0, align 4
@FIBCR_FFRST = common dso_local global i32 0, align 4
@FOTG210_DCFESR = common dso_local global i64 0, align 8
@DCFESR_CX_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_ep*)* @fotg210_wait_dma_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fotg210_wait_dma_done(%struct.fotg210_ep* %0) #0 {
  %2 = alloca %struct.fotg210_ep*, align 8
  %3 = alloca i32, align 4
  store %struct.fotg210_ep* %0, %struct.fotg210_ep** %2, align 8
  br label %4

4:                                                ; preds = %24, %1
  %5 = load %struct.fotg210_ep*, %struct.fotg210_ep** %2, align 8
  %6 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @FOTG210_DISGR2, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @ioread32(i64 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @DISGR2_USBRST_INT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @DISGR2_DMA_ERROR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %4
  br label %44

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @DISGR2_DMA_CMPLT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %4, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @DISGR2_DMA_CMPLT, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.fotg210_ep*, %struct.fotg210_ep** %2, align 8
  %37 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @FOTG210_DISGR2, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @iowrite32(i32 %35, i64 %42)
  br label %119

44:                                               ; preds = %22
  %45 = load %struct.fotg210_ep*, %struct.fotg210_ep** %2, align 8
  %46 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @FOTG210_DMACPSR1, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @ioread32(i64 %51)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* @DMACPSR1_DMA_ABORT, align 4
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.fotg210_ep*, %struct.fotg210_ep** %2, align 8
  %58 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @FOTG210_DMACPSR1, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @iowrite32(i32 %56, i64 %63)
  %65 = load %struct.fotg210_ep*, %struct.fotg210_ep** %2, align 8
  %66 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %98

69:                                               ; preds = %44
  %70 = load %struct.fotg210_ep*, %struct.fotg210_ep** %2, align 8
  %71 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.fotg210_ep*, %struct.fotg210_ep** %2, align 8
  %76 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %77, 1
  %79 = call i64 @FOTG210_FIBCR(i64 %78)
  %80 = add nsw i64 %74, %79
  %81 = call i32 @ioread32(i64 %80)
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* @FIBCR_FFRST, align 4
  %83 = load i32, i32* %3, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* %3, align 4
  %86 = load %struct.fotg210_ep*, %struct.fotg210_ep** %2, align 8
  %87 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.fotg210_ep*, %struct.fotg210_ep** %2, align 8
  %92 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %93, 1
  %95 = call i64 @FOTG210_FIBCR(i64 %94)
  %96 = add nsw i64 %90, %95
  %97 = call i32 @iowrite32(i32 %85, i64 %96)
  br label %119

98:                                               ; preds = %44
  %99 = load %struct.fotg210_ep*, %struct.fotg210_ep** %2, align 8
  %100 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @FOTG210_DCFESR, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @ioread32(i64 %105)
  store i32 %106, i32* %3, align 4
  %107 = load i32, i32* @DCFESR_CX_CLR, align 4
  %108 = load i32, i32* %3, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %3, align 4
  %110 = load i32, i32* %3, align 4
  %111 = load %struct.fotg210_ep*, %struct.fotg210_ep** %2, align 8
  %112 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @FOTG210_DCFESR, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @iowrite32(i32 %110, i64 %117)
  br label %119

119:                                              ; preds = %30, %98, %69
  ret void
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i64 @FOTG210_FIBCR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
