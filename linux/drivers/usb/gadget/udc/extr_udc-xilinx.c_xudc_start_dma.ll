; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_start_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_start_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xusb_ep = type { %struct.xusb_udc* }
%struct.xusb_udc = type { i32 (i64)*, i32, i64, i32 (i64, i32, i32)* }

@XUSB_DMA_DSAR_ADDR_OFFSET = common dso_local global i32 0, align 4
@XUSB_DMA_DDAR_ADDR_OFFSET = common dso_local global i32 0, align 4
@XUSB_DMA_LENGTH_OFFSET = common dso_local global i32 0, align 4
@XUSB_DMA_STATUS_OFFSET = common dso_local global i64 0, align 8
@XUSB_DMA_DMASR_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"DMA timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@XUSB_DMA_DMASR_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"DMA Error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xusb_ep*, i32, i32, i32)* @xudc_start_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xudc_start_dma(%struct.xusb_ep* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xusb_ep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xusb_udc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.xusb_ep* %0, %struct.xusb_ep** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.xusb_ep*, %struct.xusb_ep** %6, align 8
  %15 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %14, i32 0, i32 0
  %16 = load %struct.xusb_udc*, %struct.xusb_udc** %15, align 8
  store %struct.xusb_udc* %16, %struct.xusb_udc** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 500, i32* %12, align 4
  %17 = load %struct.xusb_udc*, %struct.xusb_udc** %10, align 8
  %18 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %17, i32 0, i32 3
  %19 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %18, align 8
  %20 = load %struct.xusb_udc*, %struct.xusb_udc** %10, align 8
  %21 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @XUSB_DMA_DSAR_ADDR_OFFSET, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 %19(i64 %22, i32 %23, i32 %24)
  %26 = load %struct.xusb_udc*, %struct.xusb_udc** %10, align 8
  %27 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %26, i32 0, i32 3
  %28 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %27, align 8
  %29 = load %struct.xusb_udc*, %struct.xusb_udc** %10, align 8
  %30 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @XUSB_DMA_DDAR_ADDR_OFFSET, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 %28(i64 %31, i32 %32, i32 %33)
  %35 = load %struct.xusb_udc*, %struct.xusb_udc** %10, align 8
  %36 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %35, i32 0, i32 3
  %37 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %36, align 8
  %38 = load %struct.xusb_udc*, %struct.xusb_udc** %10, align 8
  %39 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @XUSB_DMA_LENGTH_OFFSET, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 %37(i64 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %73, %4
  %45 = load %struct.xusb_udc*, %struct.xusb_udc** %10, align 8
  %46 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %45, i32 0, i32 0
  %47 = load i32 (i64)*, i32 (i64)** %46, align 8
  %48 = load %struct.xusb_udc*, %struct.xusb_udc** %10, align 8
  %49 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @XUSB_DMA_STATUS_OFFSET, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 %47(i64 %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @XUSB_DMA_DMASR_BUSY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %44
  br label %74

59:                                               ; preds = %44
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %59
  %65 = load %struct.xusb_udc*, %struct.xusb_udc** %10, align 8
  %66 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @ETIMEDOUT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %97

71:                                               ; preds = %59
  %72 = call i32 @udelay(i32 1)
  br label %73

73:                                               ; preds = %71
  br i1 true, label %44, label %74

74:                                               ; preds = %73, %58
  %75 = load %struct.xusb_udc*, %struct.xusb_udc** %10, align 8
  %76 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %75, i32 0, i32 0
  %77 = load i32 (i64)*, i32 (i64)** %76, align 8
  %78 = load %struct.xusb_udc*, %struct.xusb_udc** %10, align 8
  %79 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @XUSB_DMA_STATUS_OFFSET, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 %77(i64 %82)
  %84 = load i32, i32* @XUSB_DMA_DMASR_ERROR, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @XUSB_DMA_DMASR_ERROR, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %74
  %89 = load %struct.xusb_udc*, %struct.xusb_udc** %10, align 8
  %90 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dev_err(i32 %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %88, %74
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %95, %64
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
