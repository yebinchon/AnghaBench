; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio_dmem_genirq.c_uio_dmem_genirq_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio_dmem_genirq.c_uio_dmem_genirq_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio_info = type { %struct.uio_dmem_genirq_platdata* }
%struct.uio_dmem_genirq_platdata = type { i32, %struct.TYPE_4__*, i32, i32, i8**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.uio_mem* }
%struct.uio_mem = type { i32, i32 }
%struct.inode = type { i32 }

@MAX_UIO_MAPS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@DMEM_MAP_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uio_info*, %struct.inode*)* @uio_dmem_genirq_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uio_dmem_genirq_open(%struct.uio_info* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.uio_info*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.uio_dmem_genirq_platdata*, align 8
  %6 = alloca %struct.uio_mem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.uio_info* %0, %struct.uio_info** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %10 = load %struct.uio_info*, %struct.uio_info** %3, align 8
  %11 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %10, i32 0, i32 0
  %12 = load %struct.uio_dmem_genirq_platdata*, %struct.uio_dmem_genirq_platdata** %11, align 8
  store %struct.uio_dmem_genirq_platdata* %12, %struct.uio_dmem_genirq_platdata** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.uio_dmem_genirq_platdata*, %struct.uio_dmem_genirq_platdata** %5, align 8
  %14 = getelementptr inbounds %struct.uio_dmem_genirq_platdata, %struct.uio_dmem_genirq_platdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.uio_dmem_genirq_platdata*, %struct.uio_dmem_genirq_platdata** %5, align 8
  %17 = getelementptr inbounds %struct.uio_dmem_genirq_platdata, %struct.uio_dmem_genirq_platdata* %16, i32 0, i32 5
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.uio_mem*, %struct.uio_mem** %19, align 8
  %21 = load %struct.uio_dmem_genirq_platdata*, %struct.uio_dmem_genirq_platdata** %5, align 8
  %22 = getelementptr inbounds %struct.uio_dmem_genirq_platdata, %struct.uio_dmem_genirq_platdata* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %20, i64 %24
  store %struct.uio_mem* %25, %struct.uio_mem** %6, align 8
  %26 = load %struct.uio_dmem_genirq_platdata*, %struct.uio_dmem_genirq_platdata** %5, align 8
  %27 = getelementptr inbounds %struct.uio_dmem_genirq_platdata, %struct.uio_dmem_genirq_platdata* %26, i32 0, i32 2
  %28 = call i32 @mutex_lock(i32* %27)
  br label %29

29:                                               ; preds = %70, %2
  %30 = load %struct.uio_dmem_genirq_platdata*, %struct.uio_dmem_genirq_platdata** %5, align 8
  %31 = getelementptr inbounds %struct.uio_dmem_genirq_platdata, %struct.uio_dmem_genirq_platdata* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = load %struct.uio_mem*, %struct.uio_mem** %6, align 8
  %36 = load %struct.uio_dmem_genirq_platdata*, %struct.uio_dmem_genirq_platdata** %5, align 8
  %37 = getelementptr inbounds %struct.uio_dmem_genirq_platdata, %struct.uio_dmem_genirq_platdata* %36, i32 0, i32 5
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.uio_mem*, %struct.uio_mem** %39, align 8
  %41 = load i64, i64* @MAX_UIO_MAPS, align 8
  %42 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %40, i64 %41
  %43 = icmp ult %struct.uio_mem* %35, %42
  br label %44

44:                                               ; preds = %34, %29
  %45 = phi i1 [ false, %29 ], [ %43, %34 ]
  br i1 %45, label %46, label %81

46:                                               ; preds = %44
  %47 = load %struct.uio_mem*, %struct.uio_mem** %6, align 8
  %48 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %81

52:                                               ; preds = %46
  %53 = load %struct.uio_dmem_genirq_platdata*, %struct.uio_dmem_genirq_platdata** %5, align 8
  %54 = getelementptr inbounds %struct.uio_dmem_genirq_platdata, %struct.uio_dmem_genirq_platdata* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.uio_mem*, %struct.uio_mem** %6, align 8
  %58 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.uio_mem*, %struct.uio_mem** %6, align 8
  %61 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %60, i32 0, i32 0
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i8* @dma_alloc_coherent(i32* %56, i32 %59, i32* %61, i32 %62)
  store i8* %63, i8** %9, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %52
  %67 = load i32, i32* @DMEM_MAP_ERROR, align 4
  %68 = load %struct.uio_mem*, %struct.uio_mem** %6, align 8
  %69 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %52
  %71 = load i8*, i8** %9, align 8
  %72 = load %struct.uio_dmem_genirq_platdata*, %struct.uio_dmem_genirq_platdata** %5, align 8
  %73 = getelementptr inbounds %struct.uio_dmem_genirq_platdata, %struct.uio_dmem_genirq_platdata* %72, i32 0, i32 4
  %74 = load i8**, i8*** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8*, i8** %74, i64 %77
  store i8* %71, i8** %78, align 8
  %79 = load %struct.uio_mem*, %struct.uio_mem** %6, align 8
  %80 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %79, i32 1
  store %struct.uio_mem* %80, %struct.uio_mem** %6, align 8
  br label %29

81:                                               ; preds = %51, %44
  %82 = load %struct.uio_dmem_genirq_platdata*, %struct.uio_dmem_genirq_platdata** %5, align 8
  %83 = getelementptr inbounds %struct.uio_dmem_genirq_platdata, %struct.uio_dmem_genirq_platdata* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = load %struct.uio_dmem_genirq_platdata*, %struct.uio_dmem_genirq_platdata** %5, align 8
  %87 = getelementptr inbounds %struct.uio_dmem_genirq_platdata, %struct.uio_dmem_genirq_platdata* %86, i32 0, i32 2
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load %struct.uio_dmem_genirq_platdata*, %struct.uio_dmem_genirq_platdata** %5, align 8
  %90 = getelementptr inbounds %struct.uio_dmem_genirq_platdata, %struct.uio_dmem_genirq_platdata* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = call i32 @pm_runtime_get_sync(i32* %92)
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
