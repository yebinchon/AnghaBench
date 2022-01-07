; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_allocate_trb_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_allocate_trb_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_endpoint = type { i32, i32, %struct.cdns3_trb*, i32, %struct.cdns3_device* }
%struct.cdns3_trb = type { i32, i32 }
%struct.cdns3_device = type { i32 }

@GFP_DMA32 = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TRB_SIZE = common dso_local global i32 0, align 4
@TRB_CYCLE = common dso_local global i32 0, align 4
@TRB_LINK = common dso_local global i32 0, align 4
@TRB_TOGGLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdns3_allocate_trb_pool(%struct.cdns3_endpoint* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdns3_endpoint*, align 8
  %4 = alloca %struct.cdns3_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdns3_trb*, align 8
  store %struct.cdns3_endpoint* %0, %struct.cdns3_endpoint** %3, align 8
  %7 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %8 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %7, i32 0, i32 4
  %9 = load %struct.cdns3_device*, %struct.cdns3_device** %8, align 8
  store %struct.cdns3_device* %9, %struct.cdns3_device** %4, align 8
  %10 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %11 = call i32 @cdns3_ring_size(%struct.cdns3_endpoint* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %13 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %12, i32 0, i32 2
  %14 = load %struct.cdns3_trb*, %struct.cdns3_trb** %13, align 8
  %15 = icmp ne %struct.cdns3_trb* %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %1
  %17 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %18 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %22 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %21, i32 0, i32 1
  %23 = load i32, i32* @GFP_DMA32, align 4
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = or i32 %23, %24
  %26 = call %struct.cdns3_trb* @dma_alloc_coherent(i32 %19, i32 %20, i32* %22, i32 %25)
  %27 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %28 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %27, i32 0, i32 2
  store %struct.cdns3_trb* %26, %struct.cdns3_trb** %28, align 8
  %29 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %30 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %29, i32 0, i32 2
  %31 = load %struct.cdns3_trb*, %struct.cdns3_trb** %30, align 8
  %32 = icmp ne %struct.cdns3_trb* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %16
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %78

36:                                               ; preds = %16
  br label %43

37:                                               ; preds = %1
  %38 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %39 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %38, i32 0, i32 2
  %40 = load %struct.cdns3_trb*, %struct.cdns3_trb** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @memset(%struct.cdns3_trb* %40, i32 0, i32 %41)
  br label %43

43:                                               ; preds = %37, %36
  %44 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %45 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %78

49:                                               ; preds = %43
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @TRB_SIZE, align 4
  %52 = sdiv i32 %50, %51
  %53 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %54 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %56 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %55, i32 0, i32 2
  %57 = load %struct.cdns3_trb*, %struct.cdns3_trb** %56, align 8
  %58 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %59 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.cdns3_trb, %struct.cdns3_trb* %57, i64 %62
  store %struct.cdns3_trb* %63, %struct.cdns3_trb** %6, align 8
  %64 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %65 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @TRB_BUFFER(i32 %66)
  %68 = load %struct.cdns3_trb*, %struct.cdns3_trb** %6, align 8
  %69 = getelementptr inbounds %struct.cdns3_trb, %struct.cdns3_trb* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @TRB_CYCLE, align 4
  %71 = load i32, i32* @TRB_LINK, align 4
  %72 = call i32 @TRB_TYPE(i32 %71)
  %73 = or i32 %70, %72
  %74 = load i32, i32* @TRB_TOGGLE, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.cdns3_trb*, %struct.cdns3_trb** %6, align 8
  %77 = getelementptr inbounds %struct.cdns3_trb, %struct.cdns3_trb* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %49, %48, %33
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @cdns3_ring_size(%struct.cdns3_endpoint*) #1

declare dso_local %struct.cdns3_trb* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.cdns3_trb*, i32, i32) #1

declare dso_local i32 @TRB_BUFFER(i32) #1

declare dso_local i32 @TRB_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
