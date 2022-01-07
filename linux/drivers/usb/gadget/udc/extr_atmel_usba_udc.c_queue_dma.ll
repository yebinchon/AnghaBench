; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_queue_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_queue_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usba_udc = type { i32, i32 }
%struct.usba_ep = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.usba_request = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64, i64, i32 }

@DBG_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: req l/%u d/%pad %c%c%c\0A\00", align 1
@DBG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid request length %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_BUF_LEN = common dso_local global i32 0, align 4
@USBA_DMA_CH_EN = common dso_local global i32 0, align 4
@USBA_DMA_END_BUF_IE = common dso_local global i32 0, align 4
@USBA_DMA_END_BUF_EN = common dso_local global i32 0, align 4
@USBA_DMA_END_TR_EN = common dso_local global i32 0, align 4
@USBA_DMA_END_TR_IE = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usba_udc*, %struct.usba_ep*, %struct.usba_request*, i32)* @queue_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_dma(%struct.usba_udc* %0, %struct.usba_ep* %1, %struct.usba_request* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usba_udc*, align 8
  %7 = alloca %struct.usba_ep*, align 8
  %8 = alloca %struct.usba_request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.usba_udc* %0, %struct.usba_udc** %6, align 8
  store %struct.usba_ep* %1, %struct.usba_ep** %7, align 8
  store %struct.usba_request* %2, %struct.usba_request** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @DBG_DMA, align 4
  %13 = load %struct.usba_ep*, %struct.usba_ep** %7, align 8
  %14 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %18 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %22 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  %24 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %25 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 90, i32 122
  %31 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %32 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 83, i32 115
  %38 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %39 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 73, i32 105
  %45 = call i32 (i32, i8*, i32, ...) @DBG(i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20, i32* %23, i32 %30, i32 %37, i32 %44)
  %46 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %47 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %49, 65536
  br i1 %50, label %51, label %60

51:                                               ; preds = %4
  %52 = load i32, i32* @DBG_ERR, align 4
  %53 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %54 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i32, i8*, i32, ...) @DBG(i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %135

60:                                               ; preds = %4
  %61 = load %struct.usba_udc*, %struct.usba_udc** %6, align 8
  %62 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %61, i32 0, i32 1
  %63 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %64 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %63, i32 0, i32 3
  %65 = load %struct.usba_ep*, %struct.usba_ep** %7, align 8
  %66 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @usb_gadget_map_request(i32* %62, %struct.TYPE_4__* %64, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %5, align 4
  br label %135

73:                                               ; preds = %60
  %74 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %75 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load i32, i32* @DMA_BUF_LEN, align 4
  %77 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %78 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @USBA_BF(i32 %76, i32 %80)
  %82 = load i32, i32* @USBA_DMA_CH_EN, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @USBA_DMA_END_BUF_IE, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @USBA_DMA_END_BUF_EN, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %89 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.usba_ep*, %struct.usba_ep** %7, align 8
  %91 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %73
  %95 = load i32, i32* @USBA_DMA_END_TR_EN, align 4
  %96 = load i32, i32* @USBA_DMA_END_TR_IE, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %99 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %94, %73
  %103 = load i32, i32* @ESHUTDOWN, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %11, align 4
  %105 = load %struct.usba_udc*, %struct.usba_udc** %6, align 8
  %106 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %105, i32 0, i32 0
  %107 = load i64, i64* %10, align 8
  %108 = call i32 @spin_lock_irqsave(i32* %106, i64 %107)
  %109 = load %struct.usba_ep*, %struct.usba_ep** %7, align 8
  %110 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %102
  %115 = load %struct.usba_ep*, %struct.usba_ep** %7, align 8
  %116 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %115, i32 0, i32 0
  %117 = call i64 @list_empty(i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load %struct.usba_ep*, %struct.usba_ep** %7, align 8
  %121 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %122 = call i32 @submit_request(%struct.usba_ep* %120, %struct.usba_request* %121)
  br label %123

123:                                              ; preds = %119, %114
  %124 = load %struct.usba_request*, %struct.usba_request** %8, align 8
  %125 = getelementptr inbounds %struct.usba_request, %struct.usba_request* %124, i32 0, i32 2
  %126 = load %struct.usba_ep*, %struct.usba_ep** %7, align 8
  %127 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %126, i32 0, i32 0
  %128 = call i32 @list_add_tail(i32* %125, i32* %127)
  store i32 0, i32* %11, align 4
  br label %129

129:                                              ; preds = %123, %102
  %130 = load %struct.usba_udc*, %struct.usba_udc** %6, align 8
  %131 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %130, i32 0, i32 0
  %132 = load i64, i64* %10, align 8
  %133 = call i32 @spin_unlock_irqrestore(i32* %131, i64 %132)
  %134 = load i32, i32* %11, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %129, %71, %51
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @DBG(i32, i8*, i32, ...) #1

declare dso_local i32 @usb_gadget_map_request(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @USBA_BF(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @submit_request(%struct.usba_ep*, %struct.usba_request*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
