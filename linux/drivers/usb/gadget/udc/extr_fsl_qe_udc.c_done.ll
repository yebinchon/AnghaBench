; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qe_ep = type { i8, %struct.TYPE_8__, %struct.qe_udc* }
%struct.TYPE_8__ = type { i32 }
%struct.qe_udc = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.qe_req = type { %struct.TYPE_9__, i64, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_ADDR_INVALID = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"complete %s req %p stat %d len %u/%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qe_ep*, %struct.qe_req*, i32)* @done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @done(%struct.qe_ep* %0, %struct.qe_req* %1, i32 %2) #0 {
  %4 = alloca %struct.qe_ep*, align 8
  %5 = alloca %struct.qe_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qe_udc*, align 8
  %8 = alloca i8, align 1
  store %struct.qe_ep* %0, %struct.qe_ep** %4, align 8
  store %struct.qe_req* %1, %struct.qe_req** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %10 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %9, i32 0, i32 2
  %11 = load %struct.qe_udc*, %struct.qe_udc** %10, align 8
  store %struct.qe_udc* %11, %struct.qe_udc** %7, align 8
  %12 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %13 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 8
  store i8 %14, i8* %8, align 1
  %15 = load %struct.qe_req*, %struct.qe_req** %5, align 8
  %16 = getelementptr inbounds %struct.qe_req, %struct.qe_req* %15, i32 0, i32 2
  %17 = call i32 @list_del_init(i32* %16)
  %18 = load %struct.qe_req*, %struct.qe_req** %5, align 8
  %19 = getelementptr inbounds %struct.qe_req, %struct.qe_req* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @EINPROGRESS, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.qe_req*, %struct.qe_req** %5, align 8
  %28 = getelementptr inbounds %struct.qe_req, %struct.qe_req* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  br label %35

30:                                               ; preds = %3
  %31 = load %struct.qe_req*, %struct.qe_req** %5, align 8
  %32 = getelementptr inbounds %struct.qe_req, %struct.qe_req* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.qe_req*, %struct.qe_req** %5, align 8
  %37 = getelementptr inbounds %struct.qe_req, %struct.qe_req* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %70

40:                                               ; preds = %35
  %41 = load %struct.qe_udc*, %struct.qe_udc** %7, align 8
  %42 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.qe_req*, %struct.qe_req** %5, align 8
  %47 = getelementptr inbounds %struct.qe_req, %struct.qe_req* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.qe_req*, %struct.qe_req** %5, align 8
  %51 = getelementptr inbounds %struct.qe_req, %struct.qe_req* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %55 = call i64 @ep_is_in(%struct.qe_ep* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %40
  %58 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %61

59:                                               ; preds = %40
  %60 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = call i32 @dma_unmap_single(i32 %45, i32 %49, i32 %53, i32 %62)
  %64 = load i32, i32* @DMA_ADDR_INVALID, align 4
  %65 = load %struct.qe_req*, %struct.qe_req** %5, align 8
  %66 = getelementptr inbounds %struct.qe_req, %struct.qe_req* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 3
  store i32 %64, i32* %67, align 4
  %68 = load %struct.qe_req*, %struct.qe_req** %5, align 8
  %69 = getelementptr inbounds %struct.qe_req, %struct.qe_req* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  br label %94

70:                                               ; preds = %35
  %71 = load %struct.qe_udc*, %struct.qe_udc** %7, align 8
  %72 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.qe_req*, %struct.qe_req** %5, align 8
  %77 = getelementptr inbounds %struct.qe_req, %struct.qe_req* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.qe_req*, %struct.qe_req** %5, align 8
  %81 = getelementptr inbounds %struct.qe_req, %struct.qe_req* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %85 = call i64 @ep_is_in(%struct.qe_ep* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %70
  %88 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %91

89:                                               ; preds = %70
  %90 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = call i32 @dma_sync_single_for_cpu(i32 %75, i32 %79, i32 %83, i32 %92)
  br label %94

94:                                               ; preds = %91, %61
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %122

97:                                               ; preds = %94
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @ESHUTDOWN, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp ne i32 %98, %100
  br i1 %101, label %102, label %122

102:                                              ; preds = %97
  %103 = load %struct.qe_udc*, %struct.qe_udc** %7, align 8
  %104 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %107 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.qe_req*, %struct.qe_req** %5, align 8
  %111 = getelementptr inbounds %struct.qe_req, %struct.qe_req* %110, i32 0, i32 0
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.qe_req*, %struct.qe_req** %5, align 8
  %114 = getelementptr inbounds %struct.qe_req, %struct.qe_req* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.qe_req*, %struct.qe_req** %5, align 8
  %118 = getelementptr inbounds %struct.qe_req, %struct.qe_req* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @dev_vdbg(i32 %105, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %109, %struct.TYPE_9__* %111, i32 %112, i32 %116, i32 %120)
  br label %122

122:                                              ; preds = %102, %97, %94
  %123 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %124 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %123, i32 0, i32 0
  store i8 1, i8* %124, align 8
  %125 = load %struct.qe_udc*, %struct.qe_udc** %7, align 8
  %126 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %125, i32 0, i32 0
  %127 = call i32 @spin_unlock(i32* %126)
  %128 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %129 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %128, i32 0, i32 1
  %130 = load %struct.qe_req*, %struct.qe_req** %5, align 8
  %131 = getelementptr inbounds %struct.qe_req, %struct.qe_req* %130, i32 0, i32 0
  %132 = call i32 @usb_gadget_giveback_request(%struct.TYPE_8__* %129, %struct.TYPE_9__* %131)
  %133 = load %struct.qe_udc*, %struct.qe_udc** %7, align 8
  %134 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %133, i32 0, i32 0
  %135 = call i32 @spin_lock(i32* %134)
  %136 = load i8, i8* %8, align 1
  %137 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %138 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %137, i32 0, i32 0
  store i8 %136, i8* %138, align 8
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i64 @ep_is_in(%struct.qe_ep*) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, %struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_gadget_giveback_request(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
