; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_setup_scratch_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_setup_scratch_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32, i32, i32, i32, i32 }

@DWC3_SCRATCHBUF_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to map scratch buffer\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@DWC3_DGCMD_SET_SCRATCHPAD_ADDR_LO = common dso_local global i32 0, align 4
@DWC3_DGCMD_SET_SCRATCHPAD_ADDR_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3*)* @dwc3_setup_scratch_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_setup_scratch_buffers(%struct.dwc3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %3, align 8
  %7 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %8 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %92

12:                                               ; preds = %1
  %13 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %14 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %92

18:                                               ; preds = %12
  %19 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %20 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %92

25:                                               ; preds = %18
  %26 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %27 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %30 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %33 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @DWC3_SCRATCHBUF_SIZE, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %38 = call i32 @dma_map_single(i32 %28, i32 %31, i32 %36, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %40 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i64 @dma_mapping_error(i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %25
  %46 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %47 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EFAULT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %90

52:                                               ; preds = %25
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %55 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @lower_32_bits(i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %59 = load i32, i32* @DWC3_DGCMD_SET_SCRATCHPAD_ADDR_LO, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @dwc3_send_gadget_generic_command(%struct.dwc3* %58, i32 %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %76

65:                                               ; preds = %52
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @upper_32_bits(i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %69 = load i32, i32* @DWC3_DGCMD_SET_SCRATCHPAD_ADDR_HI, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @dwc3_send_gadget_generic_command(%struct.dwc3* %68, i32 %69, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %76

75:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %92

76:                                               ; preds = %74, %64
  %77 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %78 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %81 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %84 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @DWC3_SCRATCHBUF_SIZE, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %89 = call i32 @dma_unmap_single(i32 %79, i32 %82, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %76, %45
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %75, %24, %17, %11
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @dwc3_send_gadget_generic_command(%struct.dwc3*, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
