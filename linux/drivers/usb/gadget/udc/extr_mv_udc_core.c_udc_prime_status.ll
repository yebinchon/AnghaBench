; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_udc_core.c_udc_prime_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_udc_core.c_udc_prime_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_udc = type { i32, %struct.TYPE_9__*, i64, %struct.mv_req*, i32, i32, %struct.mv_ep* }
%struct.TYPE_9__ = type { i32 }
%struct.mv_req = type { i32, %struct.TYPE_10__, i32, i64, i64, %struct.mv_ep* }
%struct.TYPE_10__ = type { i32, i64, i64, i32*, i64, i32 }
%struct.mv_ep = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@WAIT_FOR_OUT_STATUS = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@prime_status_complete = common dso_local global i32* null, align 8
@DMA_ADDR_INVALID = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to queue dtd when prime status\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to dma_pool_alloc when prime status\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv_udc*, i32, i32, i32)* @udc_prime_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udc_prime_status(%struct.mv_udc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mv_udc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mv_req*, align 8
  %12 = alloca %struct.mv_ep*, align 8
  store %struct.mv_udc* %0, %struct.mv_udc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.mv_udc*, %struct.mv_udc** %6, align 8
  %14 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %13, i32 0, i32 6
  %15 = load %struct.mv_ep*, %struct.mv_ep** %14, align 8
  %16 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %15, i64 0
  store %struct.mv_ep* %16, %struct.mv_ep** %12, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.mv_udc*, %struct.mv_udc** %6, align 8
  %19 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @WAIT_FOR_OUT_STATUS, align 4
  %21 = load %struct.mv_udc*, %struct.mv_udc** %6, align 8
  %22 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.mv_udc*, %struct.mv_udc** %6, align 8
  %24 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %23, i32 0, i32 3
  %25 = load %struct.mv_req*, %struct.mv_req** %24, align 8
  store %struct.mv_req* %25, %struct.mv_req** %11, align 8
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @cpu_to_le16(i32 %29)
  %31 = load %struct.mv_req*, %struct.mv_req** %11, align 8
  %32 = getelementptr inbounds %struct.mv_req, %struct.mv_req* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  store i32 %30, i32* %35, align 4
  %36 = load %struct.mv_req*, %struct.mv_req** %11, align 8
  %37 = getelementptr inbounds %struct.mv_req, %struct.mv_req* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store i32 2, i32* %38, align 8
  br label %43

39:                                               ; preds = %4
  %40 = load %struct.mv_req*, %struct.mv_req** %11, align 8
  %41 = getelementptr inbounds %struct.mv_req, %struct.mv_req* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %28
  %44 = load %struct.mv_ep*, %struct.mv_ep** %12, align 8
  %45 = load %struct.mv_req*, %struct.mv_req** %11, align 8
  %46 = getelementptr inbounds %struct.mv_req, %struct.mv_req* %45, i32 0, i32 5
  store %struct.mv_ep* %44, %struct.mv_ep** %46, align 8
  %47 = load i32, i32* @EINPROGRESS, align 4
  %48 = sub nsw i32 0, %47
  %49 = load %struct.mv_req*, %struct.mv_req** %11, align 8
  %50 = getelementptr inbounds %struct.mv_req, %struct.mv_req* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 5
  store i32 %48, i32* %51, align 8
  %52 = load %struct.mv_req*, %struct.mv_req** %11, align 8
  %53 = getelementptr inbounds %struct.mv_req, %struct.mv_req* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = load %struct.mv_udc*, %struct.mv_udc** %6, align 8
  %56 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %43
  %60 = load i32*, i32** @prime_status_complete, align 8
  %61 = load %struct.mv_req*, %struct.mv_req** %11, align 8
  %62 = getelementptr inbounds %struct.mv_req, %struct.mv_req* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 3
  store i32* %60, i32** %63, align 8
  %64 = load %struct.mv_udc*, %struct.mv_udc** %6, align 8
  %65 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.mv_req*, %struct.mv_req** %11, align 8
  %68 = getelementptr inbounds %struct.mv_req, %struct.mv_req* %67, i32 0, i32 4
  store i64 %66, i64* %68, align 8
  %69 = load %struct.mv_udc*, %struct.mv_udc** %6, align 8
  %70 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  br label %75

71:                                               ; preds = %43
  %72 = load %struct.mv_req*, %struct.mv_req** %11, align 8
  %73 = getelementptr inbounds %struct.mv_req, %struct.mv_req* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 3
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %71, %59
  %76 = load %struct.mv_req*, %struct.mv_req** %11, align 8
  %77 = getelementptr inbounds %struct.mv_req, %struct.mv_req* %76, i32 0, i32 3
  store i64 0, i64* %77, align 8
  %78 = load %struct.mv_req*, %struct.mv_req** %11, align 8
  %79 = getelementptr inbounds %struct.mv_req, %struct.mv_req* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DMA_ADDR_INVALID, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %115

84:                                               ; preds = %75
  %85 = load %struct.mv_ep*, %struct.mv_ep** %12, align 8
  %86 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %85, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mv_req*, %struct.mv_req** %11, align 8
  %93 = getelementptr inbounds %struct.mv_req, %struct.mv_req* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.mv_req*, %struct.mv_req** %11, align 8
  %97 = getelementptr inbounds %struct.mv_req, %struct.mv_req* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.mv_ep*, %struct.mv_ep** %12, align 8
  %101 = call i64 @ep_dir(%struct.mv_ep* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %84
  %104 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %107

105:                                              ; preds = %84
  %106 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  %109 = call i64 @dma_map_single(i32 %91, i64 %95, i32 %99, i32 %108)
  %110 = load %struct.mv_req*, %struct.mv_req** %11, align 8
  %111 = getelementptr inbounds %struct.mv_req, %struct.mv_req* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  store i64 %109, i64* %112, align 8
  %113 = load %struct.mv_req*, %struct.mv_req** %11, align 8
  %114 = getelementptr inbounds %struct.mv_req, %struct.mv_req* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  br label %115

115:                                              ; preds = %107, %75
  %116 = load %struct.mv_req*, %struct.mv_req** %11, align 8
  %117 = call i32 @req_to_dtd(%struct.mv_req* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %132, label %119

119:                                              ; preds = %115
  %120 = load %struct.mv_ep*, %struct.mv_ep** %12, align 8
  %121 = load %struct.mv_req*, %struct.mv_req** %11, align 8
  %122 = call i32 @queue_dtd(%struct.mv_ep* %120, %struct.mv_req* %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = load %struct.mv_udc*, %struct.mv_udc** %6, align 8
  %127 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %126, i32 0, i32 1
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = call i32 @dev_err(i32* %129, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %146

131:                                              ; preds = %119
  br label %140

132:                                              ; preds = %115
  %133 = load i32, i32* @ENOMEM, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %10, align 4
  %135 = load %struct.mv_udc*, %struct.mv_udc** %6, align 8
  %136 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %135, i32 0, i32 1
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = call i32 @dev_err(i32* %138, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %146

140:                                              ; preds = %131
  %141 = load %struct.mv_req*, %struct.mv_req** %11, align 8
  %142 = getelementptr inbounds %struct.mv_req, %struct.mv_req* %141, i32 0, i32 2
  %143 = load %struct.mv_ep*, %struct.mv_ep** %12, align 8
  %144 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %143, i32 0, i32 0
  %145 = call i32 @list_add_tail(i32* %142, i32* %144)
  store i32 0, i32* %5, align 4
  br label %155

146:                                              ; preds = %132, %125
  %147 = load %struct.mv_udc*, %struct.mv_udc** %6, align 8
  %148 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %147, i32 0, i32 0
  %149 = load %struct.mv_req*, %struct.mv_req** %11, align 8
  %150 = getelementptr inbounds %struct.mv_req, %struct.mv_req* %149, i32 0, i32 1
  %151 = load %struct.mv_ep*, %struct.mv_ep** %12, align 8
  %152 = call i64 @ep_dir(%struct.mv_ep* %151)
  %153 = call i32 @usb_gadget_unmap_request(i32* %148, %struct.TYPE_10__* %150, i64 %152)
  %154 = load i32, i32* %10, align 4
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %146, %140
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @dma_map_single(i32, i64, i32, i32) #1

declare dso_local i64 @ep_dir(%struct.mv_ep*) #1

declare dso_local i32 @req_to_dtd(%struct.mv_req*) #1

declare dso_local i32 @queue_dtd(%struct.mv_ep*, %struct.mv_req*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @usb_gadget_unmap_request(i32*, %struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
