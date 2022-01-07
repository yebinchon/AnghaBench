; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_transport.c__transport_map_smp_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_transport.c__transport_map_smp_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.bsg_buffer = type { i32, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.bsg_buffer*, i32*, i64*, i8**)* @_transport_map_smp_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_transport_map_smp_buffer(%struct.device* %0, %struct.bsg_buffer* %1, i32* %2, i64* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.bsg_buffer*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8**, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.bsg_buffer* %1, %struct.bsg_buffer** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i8** %4, i8*** %11, align 8
  %12 = load %struct.bsg_buffer*, %struct.bsg_buffer** %8, align 8
  %13 = getelementptr inbounds %struct.bsg_buffer, %struct.bsg_buffer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %36

16:                                               ; preds = %5
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = load %struct.bsg_buffer*, %struct.bsg_buffer** %8, align 8
  %19 = getelementptr inbounds %struct.bsg_buffer, %struct.bsg_buffer* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @dma_alloc_coherent(%struct.device* %17, i64 %20, i32* %21, i32 %22)
  %24 = load i8**, i8*** %11, align 8
  store i8* %23, i8** %24, align 8
  %25 = load i8**, i8*** %11, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %16
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %60

31:                                               ; preds = %16
  %32 = load %struct.bsg_buffer*, %struct.bsg_buffer** %8, align 8
  %33 = getelementptr inbounds %struct.bsg_buffer, %struct.bsg_buffer* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %10, align 8
  store i64 %34, i64* %35, align 8
  br label %59

36:                                               ; preds = %5
  %37 = load %struct.device*, %struct.device** %7, align 8
  %38 = load %struct.bsg_buffer*, %struct.bsg_buffer** %8, align 8
  %39 = getelementptr inbounds %struct.bsg_buffer, %struct.bsg_buffer* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %42 = call i32 @dma_map_sg(%struct.device* %37, i32 %40, i32 1, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %60

47:                                               ; preds = %36
  %48 = load %struct.bsg_buffer*, %struct.bsg_buffer** %8, align 8
  %49 = getelementptr inbounds %struct.bsg_buffer, %struct.bsg_buffer* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @sg_dma_address(i32 %50)
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.bsg_buffer*, %struct.bsg_buffer** %8, align 8
  %54 = getelementptr inbounds %struct.bsg_buffer, %struct.bsg_buffer* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @sg_dma_len(i32 %55)
  %57 = load i64*, i64** %10, align 8
  store i64 %56, i64* %57, align 8
  %58 = load i8**, i8*** %11, align 8
  store i8* null, i8** %58, align 8
  br label %59

59:                                               ; preds = %47, %31
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %44, %28
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i64, i32*, i32) #1

declare dso_local i32 @dma_map_sg(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @sg_dma_address(i32) #1

declare dso_local i64 @sg_dma_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
