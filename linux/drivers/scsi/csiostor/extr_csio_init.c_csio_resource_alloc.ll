; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_init.c_csio_resource_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_init.c_csio_resource_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32*, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.csio_wrm = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@CSIO_MAX_SCSI_QSETS = common dso_local global i32 0, align 4
@CSIO_HW_NIQ = common dso_local global i64 0, align 8
@CSIO_HW_NEQ = common dso_local global i64 0, align 8
@CSIO_HW_NFLQ = common dso_local global i64 0, align 8
@CSIO_HW_NINTXQ = common dso_local global i64 0, align 8
@CSIO_MIN_MEMPOOL_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"csio_scsi_dma_pool\00", align 1
@CSIO_SCSI_RSP_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*)* @csio_resource_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_resource_alloc(%struct.csio_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca %struct.csio_wrm*, align 8
  %5 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  %6 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %7 = call %struct.csio_wrm* @csio_hw_to_wrm(%struct.csio_hw* %6)
  store %struct.csio_wrm* %7, %struct.csio_wrm** %4, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @CSIO_MAX_SCSI_QSETS, align 4
  %11 = mul nsw i32 %10, 2
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* @CSIO_HW_NIQ, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i64, i64* @CSIO_HW_NEQ, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* @CSIO_HW_NFLQ, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i64, i64* @CSIO_HW_NINTXQ, align 8
  %20 = add nsw i64 %18, %19
  %21 = load %struct.csio_wrm*, %struct.csio_wrm** %4, align 8
  %22 = getelementptr inbounds %struct.csio_wrm, %struct.csio_wrm* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* @CSIO_MIN_MEMPOOL_SZ, align 4
  %24 = call i8* @mempool_create_kmalloc_pool(i32 %23, i32 4)
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %27 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  %28 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %29 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %1
  br label %73

33:                                               ; preds = %1
  %34 = load i32, i32* @CSIO_MIN_MEMPOOL_SZ, align 4
  %35 = call i8* @mempool_create_kmalloc_pool(i32 %34, i32 4)
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %38 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %40 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  br label %66

44:                                               ; preds = %33
  %45 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %46 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* @CSIO_SCSI_RSP_LEN, align 4
  %50 = call i32 @dma_pool_create(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %48, i32 %49, i32 8, i32 0)
  %51 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %52 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %54 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %44
  br label %59

58:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %75

59:                                               ; preds = %57
  %60 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %61 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @mempool_destroy(i32* %62)
  %64 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %65 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %64, i32 0, i32 1
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %59, %43
  %67 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %68 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @mempool_destroy(i32* %69)
  %71 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %72 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %71, i32 0, i32 0
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %66, %32
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %58
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.csio_wrm* @csio_hw_to_wrm(%struct.csio_hw*) #1

declare dso_local i8* @mempool_create_kmalloc_pool(i32, i32) #1

declare dso_local i32 @dma_pool_create(i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @mempool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
