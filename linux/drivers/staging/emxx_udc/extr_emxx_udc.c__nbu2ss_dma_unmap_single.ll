; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_dma_unmap_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_dma_unmap_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nbu2ss_ep = type { i64* }
%struct.nbu2ss_req = type { %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { i32, i64*, i32, i32 }

@USB_DIR_OUT = common dso_local global i64 0, align 8
@USB_DIR_IN = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_ADDR_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nbu2ss_udc*, %struct.nbu2ss_ep*, %struct.nbu2ss_req*, i64)* @_nbu2ss_dma_unmap_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_nbu2ss_dma_unmap_single(%struct.nbu2ss_udc* %0, %struct.nbu2ss_ep* %1, %struct.nbu2ss_req* %2, i64 %3) #0 {
  %5 = alloca %struct.nbu2ss_udc*, align 8
  %6 = alloca %struct.nbu2ss_ep*, align 8
  %7 = alloca %struct.nbu2ss_req*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [4 x i64], align 16
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %5, align 8
  store %struct.nbu2ss_ep* %1, %struct.nbu2ss_ep** %6, align 8
  store %struct.nbu2ss_req* %2, %struct.nbu2ss_req** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @USB_DIR_OUT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %4
  %16 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %17 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = srem i32 %19, 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %15
  %24 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %25 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  store i64* %27, i64** %10, align 8
  %28 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %29 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sub nsw i32 %31, %32
  %34 = load i64*, i64** %10, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  store i64* %36, i64** %10, align 8
  %37 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0
  %38 = load i64*, i64** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @memcpy(i64* %37, i64* %38, i32 %39)
  br label %41

41:                                               ; preds = %23, %15
  br label %42

42:                                               ; preds = %41, %4
  %43 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %44 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %102

47:                                               ; preds = %42
  %48 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %49 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %47
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @USB_DIR_OUT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %52
  %57 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %58 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %6, align 8
  %62 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %65 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, -4
  %69 = call i32 @memcpy(i64* %60, i64* %63, i32 %68)
  br label %70

70:                                               ; preds = %56, %52
  br label %95

71:                                               ; preds = %47
  %72 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %5, align 8
  %73 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %78 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %82 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* @USB_DIR_IN, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %71
  %89 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %92

90:                                               ; preds = %71
  %91 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = call i32 @dma_unmap_single(i32 %76, i32 %80, i32 %84, i32 %93)
  br label %95

95:                                               ; preds = %92, %70
  %96 = load i32, i32* @DMA_ADDR_INVALID, align 4
  %97 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %98 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  store i32 %96, i32* %99, align 4
  %100 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %101 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %100, i32 0, i32 2
  store i64 0, i64* %101, align 8
  br label %132

102:                                              ; preds = %42
  %103 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %104 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %131, label %107

107:                                              ; preds = %102
  %108 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %5, align 8
  %109 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %114 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %118 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i64, i64* %8, align 8
  %122 = load i64, i64* @USB_DIR_IN, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %107
  %125 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %128

126:                                              ; preds = %107
  %127 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  %130 = call i32 @dma_sync_single_for_cpu(i32 %112, i32 %116, i32 %120, i32 %129)
  br label %131

131:                                              ; preds = %128, %102
  br label %132

132:                                              ; preds = %131, %95
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %153

135:                                              ; preds = %132
  %136 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %137 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i64*, i64** %138, align 8
  store i64* %139, i64** %10, align 8
  %140 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %7, align 8
  %141 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sub nsw i32 %143, %144
  %146 = load i64*, i64** %10, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i64, i64* %146, i64 %147
  store i64* %148, i64** %10, align 8
  %149 = load i64*, i64** %10, align 8
  %150 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @memcpy(i64* %149, i64* %150, i32 %151)
  br label %153

153:                                              ; preds = %135, %132
  ret void
}

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
