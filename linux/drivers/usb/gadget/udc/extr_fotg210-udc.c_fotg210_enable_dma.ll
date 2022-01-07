; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_enable_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_enable_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_ep = type { i32, i64, %struct.fotg210_udc* }
%struct.fotg210_udc = type { i64 }

@FOTG210_DMACPSR1 = common dso_local global i64 0, align 8
@FOTG210_DMATFNR = common dso_local global i64 0, align 8
@DMATFNR_ACC_CXF = common dso_local global i32 0, align 4
@FOTG210_DMACPSR2 = common dso_local global i64 0, align 8
@FOTG210_DMISGR2 = common dso_local global i64 0, align 8
@DMISGR2_MDMA_CMPLT = common dso_local global i32 0, align 4
@DMISGR2_MDMA_ERROR = common dso_local global i32 0, align 4
@DMACPSR1_DMA_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_ep*, i32, i32)* @fotg210_enable_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fotg210_enable_dma(%struct.fotg210_ep* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fotg210_ep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fotg210_udc*, align 8
  store %struct.fotg210_ep* %0, %struct.fotg210_ep** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.fotg210_ep*, %struct.fotg210_ep** %4, align 8
  %10 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %9, i32 0, i32 2
  %11 = load %struct.fotg210_udc*, %struct.fotg210_udc** %10, align 8
  store %struct.fotg210_udc* %11, %struct.fotg210_udc** %8, align 8
  %12 = load %struct.fotg210_udc*, %struct.fotg210_udc** %8, align 8
  %13 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FOTG210_DMACPSR1, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @ioread32(i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = call i32 @DMACPSR1_DMA_LEN(i32 65535)
  %19 = call i32 @DMACPSR1_DMA_TYPE(i32 1)
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @DMACPSR1_DMA_LEN(i32 %24)
  %26 = load %struct.fotg210_ep*, %struct.fotg210_ep** %4, align 8
  %27 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @DMACPSR1_DMA_TYPE(i32 %28)
  %30 = or i32 %25, %29
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.fotg210_udc*, %struct.fotg210_udc** %8, align 8
  %35 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @FOTG210_DMACPSR1, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @iowrite32(i32 %33, i64 %38)
  %40 = load %struct.fotg210_udc*, %struct.fotg210_udc** %8, align 8
  %41 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @FOTG210_DMATFNR, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @ioread32(i64 %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.fotg210_ep*, %struct.fotg210_ep** %4, align 8
  %47 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %3
  %51 = load %struct.fotg210_ep*, %struct.fotg210_ep** %4, align 8
  %52 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, 1
  %55 = call i32 @DMATFNR_ACC_FN(i64 %54)
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %62

58:                                               ; preds = %3
  %59 = load i32, i32* @DMATFNR_ACC_CXF, align 4
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %58, %50
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.fotg210_udc*, %struct.fotg210_udc** %8, align 8
  %65 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @FOTG210_DMATFNR, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @iowrite32(i32 %63, i64 %68)
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.fotg210_udc*, %struct.fotg210_udc** %8, align 8
  %72 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @FOTG210_DMACPSR2, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @iowrite32(i32 %70, i64 %75)
  %77 = load %struct.fotg210_udc*, %struct.fotg210_udc** %8, align 8
  %78 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @FOTG210_DMISGR2, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @ioread32(i64 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* @DMISGR2_MDMA_CMPLT, align 4
  %84 = load i32, i32* @DMISGR2_MDMA_ERROR, align 4
  %85 = or i32 %83, %84
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.fotg210_udc*, %struct.fotg210_udc** %8, align 8
  %91 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @FOTG210_DMISGR2, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @iowrite32(i32 %89, i64 %94)
  %96 = load %struct.fotg210_udc*, %struct.fotg210_udc** %8, align 8
  %97 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @FOTG210_DMACPSR1, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @ioread32(i64 %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* @DMACPSR1_DMA_START, align 4
  %103 = load i32, i32* %7, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.fotg210_udc*, %struct.fotg210_udc** %8, align 8
  %107 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @FOTG210_DMACPSR1, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @iowrite32(i32 %105, i64 %110)
  ret void
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @DMACPSR1_DMA_LEN(i32) #1

declare dso_local i32 @DMACPSR1_DMA_TYPE(i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @DMATFNR_ACC_FN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
