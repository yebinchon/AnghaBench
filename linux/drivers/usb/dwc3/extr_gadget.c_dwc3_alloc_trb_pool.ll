; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_alloc_trb_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_alloc_trb_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_ep = type { i32, %struct.dwc3*, i64, i32 }
%struct.dwc3 = type { i32, i32 }

@DWC3_TRB_NUM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to allocate trb pool for %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3_ep*)* @dwc3_alloc_trb_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_alloc_trb_pool(%struct.dwc3_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc3_ep*, align 8
  %4 = alloca %struct.dwc3*, align 8
  store %struct.dwc3_ep* %0, %struct.dwc3_ep** %3, align 8
  %5 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %6 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %5, i32 0, i32 1
  %7 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  store %struct.dwc3* %7, %struct.dwc3** %4, align 8
  %8 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %9 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

13:                                               ; preds = %1
  %14 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %15 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DWC3_TRB_NUM, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = trunc i64 %19 to i32
  %21 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %22 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %21, i32 0, i32 3
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i64 @dma_alloc_coherent(i32 %16, i32 %20, i32* %22, i32 %23)
  %25 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %26 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  %27 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %28 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %13
  %32 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %33 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %32, i32 0, i32 1
  %34 = load %struct.dwc3*, %struct.dwc3** %33, align 8
  %35 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %38 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %31, %12
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
