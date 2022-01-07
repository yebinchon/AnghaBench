; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_ddma.c_dwc2_frame_list_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_ddma.c_dwc2_frame_list_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, i64, i32, i32 }

@FRLISTEN_64_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*, i32)* @dwc2_frame_list_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_frame_list_alloc(%struct.dwc2_hsotg* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc2_hsotg*, align 8
  %5 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %7 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

11:                                               ; preds = %2
  %12 = load i32, i32* @FRLISTEN_64_SIZE, align 4
  %13 = mul nsw i32 4, %12
  %14 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %15 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %17 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = load i32, i32* @GFP_DMA, align 4
  %21 = or i32 %19, %20
  %22 = call i64 @kzalloc(i32 %18, i32 %21)
  %23 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %24 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %26 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %11
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %46

32:                                               ; preds = %11
  %33 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %34 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %37 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %40 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DMA_TO_DEVICE, align 4
  %43 = call i32 @dma_map_single(i32 %35, i64 %38, i32 %41, i32 %42)
  %44 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %45 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %32, %29, %10
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @dma_map_single(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
