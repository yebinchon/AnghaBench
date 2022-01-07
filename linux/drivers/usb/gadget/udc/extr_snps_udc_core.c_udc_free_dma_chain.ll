; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_udc_free_dma_chain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_udc_free_dma_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udc = type { i32 }
%struct.udc_request = type { i32, %struct.udc_data_dma* }
%struct.udc_data_dma = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"free chain req = %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.udc*, %struct.udc_request*)* @udc_free_dma_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_free_dma_chain(%struct.udc* %0, %struct.udc_request* %1) #0 {
  %3 = alloca %struct.udc*, align 8
  %4 = alloca %struct.udc_request*, align 8
  %5 = alloca %struct.udc_data_dma*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.udc* %0, %struct.udc** %3, align 8
  store %struct.udc_request* %1, %struct.udc_request** %4, align 8
  %9 = load %struct.udc_request*, %struct.udc_request** %4, align 8
  %10 = getelementptr inbounds %struct.udc_request, %struct.udc_request* %9, i32 0, i32 1
  %11 = load %struct.udc_data_dma*, %struct.udc_data_dma** %10, align 8
  store %struct.udc_data_dma* %11, %struct.udc_data_dma** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.udc_data_dma*, %struct.udc_data_dma** %5, align 8
  %13 = getelementptr inbounds %struct.udc_data_dma, %struct.udc_data_dma* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load %struct.udc*, %struct.udc** %3, align 8
  %17 = load %struct.udc_request*, %struct.udc_request** %4, align 8
  %18 = call i32 @DBG(%struct.udc* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.udc_request* %17)
  store i32 1, i32* %6, align 4
  br label %19

19:                                               ; preds = %39, %2
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.udc_request*, %struct.udc_request** %4, align 8
  %22 = getelementptr inbounds %struct.udc_request, %struct.udc_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.udc_data_dma* @phys_to_virt(i32 %26)
  store %struct.udc_data_dma* %27, %struct.udc_data_dma** %5, align 8
  %28 = load %struct.udc_data_dma*, %struct.udc_data_dma** %5, align 8
  %29 = getelementptr inbounds %struct.udc_data_dma, %struct.udc_data_dma* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load %struct.udc*, %struct.udc** %3, align 8
  %33 = getelementptr inbounds %struct.udc, %struct.udc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.udc_data_dma*, %struct.udc_data_dma** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @dma_pool_free(i32 %34, %struct.udc_data_dma* %35, i32 %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %6, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %19

42:                                               ; preds = %19
  ret void
}

declare dso_local i32 @DBG(%struct.udc*, i8*, %struct.udc_request*) #1

declare dso_local %struct.udc_data_dma* @phys_to_virt(i32) #1

declare dso_local i32 @dma_pool_free(i32, %struct.udc_data_dma*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
