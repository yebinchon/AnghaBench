; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc_dma/extr_fileops.c_kpc_dma_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc_dma/extr_fileops.c_kpc_dma_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i64 }
%struct.kpc_dma_descriptor = type { i32, %struct.kpc_dma_descriptor*, i64 }
%struct.dev_private_data = type { %struct.kpc_dma_device* }
%struct.kpc_dma_device = type { i32, %struct.kpc_dma_descriptor*, %struct.TYPE_2__*, %struct.kpc_dma_descriptor* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Aborting descriptor %p (acd = %p)\0A\00", align 1
@DMA_DESC_CTL_EOP = common dso_local global i32 0, align 4
@ACD_FLAG_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @kpc_dma_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kpc_dma_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.kpc_dma_descriptor*, align 8
  %6 = alloca %struct.dev_private_data*, align 8
  %7 = alloca %struct.kpc_dma_device*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.dev_private_data*
  store %struct.dev_private_data* %11, %struct.dev_private_data** %6, align 8
  %12 = load %struct.dev_private_data*, %struct.dev_private_data** %6, align 8
  %13 = getelementptr inbounds %struct.dev_private_data, %struct.dev_private_data* %12, i32 0, i32 0
  %14 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %13, align 8
  store %struct.kpc_dma_device* %14, %struct.kpc_dma_device** %7, align 8
  %15 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %7, align 8
  %16 = call i32 @lock_engine(%struct.kpc_dma_device* %15)
  %17 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %7, align 8
  %18 = call i32 @stop_dma_engine(%struct.kpc_dma_device* %17)
  %19 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %7, align 8
  %20 = getelementptr inbounds %struct.kpc_dma_device, %struct.kpc_dma_device* %19, i32 0, i32 1
  %21 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %20, align 8
  %22 = getelementptr inbounds %struct.kpc_dma_descriptor, %struct.kpc_dma_descriptor* %21, i32 0, i32 1
  %23 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %22, align 8
  store %struct.kpc_dma_descriptor* %23, %struct.kpc_dma_descriptor** %5, align 8
  br label %24

24:                                               ; preds = %58, %2
  %25 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %5, align 8
  %26 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %7, align 8
  %27 = getelementptr inbounds %struct.kpc_dma_device, %struct.kpc_dma_device* %26, i32 0, i32 3
  %28 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %27, align 8
  %29 = icmp ne %struct.kpc_dma_descriptor* %25, %28
  br i1 %29, label %30, label %67

30:                                               ; preds = %24
  %31 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %7, align 8
  %32 = getelementptr inbounds %struct.kpc_dma_device, %struct.kpc_dma_device* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %5, align 8
  %36 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %5, align 8
  %37 = getelementptr inbounds %struct.kpc_dma_descriptor, %struct.kpc_dma_descriptor* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @dev_dbg(i32* %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.kpc_dma_descriptor* %35, i64 %38)
  %40 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %5, align 8
  %41 = getelementptr inbounds %struct.kpc_dma_descriptor, %struct.kpc_dma_descriptor* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @DMA_DESC_CTL_EOP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %30
  %47 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %5, align 8
  %48 = getelementptr inbounds %struct.kpc_dma_descriptor, %struct.kpc_dma_descriptor* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %5, align 8
  %53 = getelementptr inbounds %struct.kpc_dma_descriptor, %struct.kpc_dma_descriptor* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @ACD_FLAG_ABORT, align 4
  %56 = call i32 @transfer_complete_cb(i64 %54, i32 0, i32 %55)
  br label %57

57:                                               ; preds = %51, %46
  br label %58

58:                                               ; preds = %57, %30
  %59 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %5, align 8
  %60 = call i32 @clear_desc(%struct.kpc_dma_descriptor* %59)
  %61 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %5, align 8
  %62 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %7, align 8
  %63 = getelementptr inbounds %struct.kpc_dma_device, %struct.kpc_dma_device* %62, i32 0, i32 1
  store %struct.kpc_dma_descriptor* %61, %struct.kpc_dma_descriptor** %63, align 8
  %64 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %5, align 8
  %65 = getelementptr inbounds %struct.kpc_dma_descriptor, %struct.kpc_dma_descriptor* %64, i32 0, i32 1
  %66 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %65, align 8
  store %struct.kpc_dma_descriptor* %66, %struct.kpc_dma_descriptor** %5, align 8
  br label %24

67:                                               ; preds = %24
  %68 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %7, align 8
  %69 = call i32 @start_dma_engine(%struct.kpc_dma_device* %68)
  %70 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %7, align 8
  %71 = call i32 @unlock_engine(%struct.kpc_dma_device* %70)
  %72 = load %struct.dev_private_data*, %struct.dev_private_data** %6, align 8
  %73 = getelementptr inbounds %struct.dev_private_data, %struct.dev_private_data* %72, i32 0, i32 0
  %74 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %73, align 8
  %75 = getelementptr inbounds %struct.kpc_dma_device, %struct.kpc_dma_device* %74, i32 0, i32 0
  %76 = call i32 @atomic_inc(i32* %75)
  %77 = load %struct.dev_private_data*, %struct.dev_private_data** %6, align 8
  %78 = call i32 @kfree(%struct.dev_private_data* %77)
  ret i32 0
}

declare dso_local i32 @lock_engine(%struct.kpc_dma_device*) #1

declare dso_local i32 @stop_dma_engine(%struct.kpc_dma_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.kpc_dma_descriptor*, i64) #1

declare dso_local i32 @transfer_complete_cb(i64, i32, i32) #1

declare dso_local i32 @clear_desc(%struct.kpc_dma_descriptor*) #1

declare dso_local i32 @start_dma_engine(%struct.kpc_dma_device*) #1

declare dso_local i32 @unlock_engine(%struct.kpc_dma_device*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @kfree(%struct.dev_private_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
