; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_initmem_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_initmem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.esas2r_mem_desc = type { i64, i32*, i64, i32*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ESAS2R_LOG_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"failed to allocate %lu bytes of consistent memory!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esas2r_adapter*, %struct.esas2r_mem_desc*, i64)* @esas2r_initmem_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esas2r_initmem_alloc(%struct.esas2r_adapter* %0, %struct.esas2r_mem_desc* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.esas2r_adapter*, align 8
  %6 = alloca %struct.esas2r_mem_desc*, align 8
  %7 = alloca i64, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %5, align 8
  store %struct.esas2r_mem_desc* %1, %struct.esas2r_mem_desc** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %6, align 8
  %9 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = add nsw i64 %10, %11
  %13 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %6, align 8
  %14 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %13, i32 0, i32 4
  store i64 %12, i64* %14, align 8
  %15 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %6, align 8
  %16 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %6, align 8
  %18 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %5, align 8
  %20 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %6, align 8
  %24 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %6, align 8
  %27 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %26, i32 0, i32 2
  %28 = bitcast i64* %27 to i32*
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32* @dma_alloc_coherent(i32* %22, i64 %25, i32* %28, i32 %29)
  %31 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %6, align 8
  %32 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %31, i32 0, i32 3
  store i32* %30, i32** %32, align 8
  %33 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %6, align 8
  %34 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %3
  %38 = load i32, i32* @ESAS2R_LOG_CRIT, align 4
  %39 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %6, align 8
  %40 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @esas2r_log(i32 %38, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %41)
  store i32 0, i32* %4, align 4
  br label %65

43:                                               ; preds = %3
  %44 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %6, align 8
  %45 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32* @PTR_ALIGN(i32* %46, i64 %47)
  %49 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %6, align 8
  %50 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %49, i32 0, i32 1
  store i32* %48, i32** %50, align 8
  %51 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %6, align 8
  %52 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i64 @ALIGN(i64 %53, i64 %54)
  %56 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %6, align 8
  %57 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %6, align 8
  %59 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %6, align 8
  %62 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @memset(i32* %60, i32 0, i64 %63)
  store i32 1, i32* %4, align 4
  br label %65

65:                                               ; preds = %43, %37
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32* @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @esas2r_log(i32, i8*, i64) #1

declare dso_local i32* @PTR_ALIGN(i32*, i64) #1

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
