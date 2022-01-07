; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-service.c_dpaa2_io_store_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-service.c_dpaa2_io_store_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_io_store = type { i32, %struct.device*, i64, %struct.dpaa2_io_store*, i32, i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dpaa2_io_store* @dpaa2_io_store_create(i32 %0, %struct.device* %1) #0 {
  %3 = alloca %struct.dpaa2_io_store*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.dpaa2_io_store*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ugt i32 %11, 16
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store %struct.dpaa2_io_store* null, %struct.dpaa2_io_store** %3, align 8
  br label %79

14:                                               ; preds = %10
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.dpaa2_io_store* @kmalloc(i32 40, i32 %15)
  store %struct.dpaa2_io_store* %16, %struct.dpaa2_io_store** %6, align 8
  %17 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %6, align 8
  %18 = icmp ne %struct.dpaa2_io_store* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store %struct.dpaa2_io_store* null, %struct.dpaa2_io_store** %3, align 8
  br label %79

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %6, align 8
  %23 = getelementptr inbounds %struct.dpaa2_io_store, %struct.dpaa2_io_store* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = add i64 %26, 64
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.dpaa2_io_store* @kzalloc(i64 %28, i32 %29)
  %31 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %6, align 8
  %32 = getelementptr inbounds %struct.dpaa2_io_store, %struct.dpaa2_io_store* %31, i32 0, i32 3
  store %struct.dpaa2_io_store* %30, %struct.dpaa2_io_store** %32, align 8
  %33 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %6, align 8
  %34 = getelementptr inbounds %struct.dpaa2_io_store, %struct.dpaa2_io_store* %33, i32 0, i32 3
  %35 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %34, align 8
  %36 = icmp ne %struct.dpaa2_io_store* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %20
  %38 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %6, align 8
  %39 = call i32 @kfree(%struct.dpaa2_io_store* %38)
  store %struct.dpaa2_io_store* null, %struct.dpaa2_io_store** %3, align 8
  br label %79

40:                                               ; preds = %20
  %41 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %6, align 8
  %42 = getelementptr inbounds %struct.dpaa2_io_store, %struct.dpaa2_io_store* %41, i32 0, i32 3
  %43 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %42, align 8
  %44 = call i32 @PTR_ALIGN(%struct.dpaa2_io_store* %43, i32 64)
  %45 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %6, align 8
  %46 = getelementptr inbounds %struct.dpaa2_io_store, %struct.dpaa2_io_store* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %6, align 8
  %49 = getelementptr inbounds %struct.dpaa2_io_store, %struct.dpaa2_io_store* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = zext i32 %51 to i64
  %53 = mul i64 4, %52
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %56 = call i32 @dma_map_single(%struct.device* %47, i32 %50, i32 %54, i32 %55)
  %57 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %6, align 8
  %58 = getelementptr inbounds %struct.dpaa2_io_store, %struct.dpaa2_io_store* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %6, align 8
  %61 = getelementptr inbounds %struct.dpaa2_io_store, %struct.dpaa2_io_store* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @dma_mapping_error(%struct.device* %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %40
  %66 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %6, align 8
  %67 = getelementptr inbounds %struct.dpaa2_io_store, %struct.dpaa2_io_store* %66, i32 0, i32 3
  %68 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %67, align 8
  %69 = call i32 @kfree(%struct.dpaa2_io_store* %68)
  %70 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %6, align 8
  %71 = call i32 @kfree(%struct.dpaa2_io_store* %70)
  store %struct.dpaa2_io_store* null, %struct.dpaa2_io_store** %3, align 8
  br label %79

72:                                               ; preds = %40
  %73 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %6, align 8
  %74 = getelementptr inbounds %struct.dpaa2_io_store, %struct.dpaa2_io_store* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %6, align 8
  %77 = getelementptr inbounds %struct.dpaa2_io_store, %struct.dpaa2_io_store* %76, i32 0, i32 1
  store %struct.device* %75, %struct.device** %77, align 8
  %78 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %6, align 8
  store %struct.dpaa2_io_store* %78, %struct.dpaa2_io_store** %3, align 8
  br label %79

79:                                               ; preds = %72, %65, %37, %19, %13
  %80 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %3, align 8
  ret %struct.dpaa2_io_store* %80
}

declare dso_local %struct.dpaa2_io_store* @kmalloc(i32, i32) #1

declare dso_local %struct.dpaa2_io_store* @kzalloc(i64, i32) #1

declare dso_local i32 @kfree(%struct.dpaa2_io_store*) #1

declare dso_local i32 @PTR_ALIGN(%struct.dpaa2_io_store*, i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
