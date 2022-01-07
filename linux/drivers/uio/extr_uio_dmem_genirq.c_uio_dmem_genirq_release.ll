; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio_dmem_genirq.c_uio_dmem_genirq_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio_dmem_genirq.c_uio_dmem_genirq_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio_info = type { %struct.uio_dmem_genirq_platdata* }
%struct.uio_dmem_genirq_platdata = type { i32, i32, i64*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.uio_mem* }
%struct.uio_mem = type { i32, i32 }
%struct.inode = type { i32 }

@MAX_UIO_MAPS = common dso_local global i64 0, align 8
@DMEM_MAP_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uio_info*, %struct.inode*)* @uio_dmem_genirq_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uio_dmem_genirq_release(%struct.uio_info* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.uio_info*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.uio_dmem_genirq_platdata*, align 8
  %6 = alloca %struct.uio_mem*, align 8
  %7 = alloca i32, align 4
  store %struct.uio_info* %0, %struct.uio_info** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %8 = load %struct.uio_info*, %struct.uio_info** %3, align 8
  %9 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %8, i32 0, i32 0
  %10 = load %struct.uio_dmem_genirq_platdata*, %struct.uio_dmem_genirq_platdata** %9, align 8
  store %struct.uio_dmem_genirq_platdata* %10, %struct.uio_dmem_genirq_platdata** %5, align 8
  %11 = load %struct.uio_dmem_genirq_platdata*, %struct.uio_dmem_genirq_platdata** %5, align 8
  %12 = getelementptr inbounds %struct.uio_dmem_genirq_platdata, %struct.uio_dmem_genirq_platdata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.uio_dmem_genirq_platdata*, %struct.uio_dmem_genirq_platdata** %5, align 8
  %15 = getelementptr inbounds %struct.uio_dmem_genirq_platdata, %struct.uio_dmem_genirq_platdata* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @pm_runtime_put_sync(i32* %17)
  %19 = load %struct.uio_dmem_genirq_platdata*, %struct.uio_dmem_genirq_platdata** %5, align 8
  %20 = getelementptr inbounds %struct.uio_dmem_genirq_platdata, %struct.uio_dmem_genirq_platdata* %19, i32 0, i32 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.uio_mem*, %struct.uio_mem** %22, align 8
  %24 = load %struct.uio_dmem_genirq_platdata*, %struct.uio_dmem_genirq_platdata** %5, align 8
  %25 = getelementptr inbounds %struct.uio_dmem_genirq_platdata, %struct.uio_dmem_genirq_platdata* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %23, i64 %27
  store %struct.uio_mem* %28, %struct.uio_mem** %6, align 8
  %29 = load %struct.uio_dmem_genirq_platdata*, %struct.uio_dmem_genirq_platdata** %5, align 8
  %30 = getelementptr inbounds %struct.uio_dmem_genirq_platdata, %struct.uio_dmem_genirq_platdata* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.uio_dmem_genirq_platdata*, %struct.uio_dmem_genirq_platdata** %5, align 8
  %33 = getelementptr inbounds %struct.uio_dmem_genirq_platdata, %struct.uio_dmem_genirq_platdata* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %87, %2
  %37 = load %struct.uio_dmem_genirq_platdata*, %struct.uio_dmem_genirq_platdata** %5, align 8
  %38 = getelementptr inbounds %struct.uio_dmem_genirq_platdata, %struct.uio_dmem_genirq_platdata* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = load %struct.uio_mem*, %struct.uio_mem** %6, align 8
  %43 = load %struct.uio_dmem_genirq_platdata*, %struct.uio_dmem_genirq_platdata** %5, align 8
  %44 = getelementptr inbounds %struct.uio_dmem_genirq_platdata, %struct.uio_dmem_genirq_platdata* %43, i32 0, i32 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.uio_mem*, %struct.uio_mem** %46, align 8
  %48 = load i64, i64* @MAX_UIO_MAPS, align 8
  %49 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %47, i64 %48
  %50 = icmp ult %struct.uio_mem* %42, %49
  br label %51

51:                                               ; preds = %41, %36
  %52 = phi i1 [ false, %36 ], [ %50, %41 ]
  br i1 %52, label %53, label %95

53:                                               ; preds = %51
  %54 = load %struct.uio_mem*, %struct.uio_mem** %6, align 8
  %55 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %95

59:                                               ; preds = %53
  %60 = load %struct.uio_dmem_genirq_platdata*, %struct.uio_dmem_genirq_platdata** %5, align 8
  %61 = getelementptr inbounds %struct.uio_dmem_genirq_platdata, %struct.uio_dmem_genirq_platdata* %60, i32 0, i32 2
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %59
  %69 = load %struct.uio_dmem_genirq_platdata*, %struct.uio_dmem_genirq_platdata** %5, align 8
  %70 = getelementptr inbounds %struct.uio_dmem_genirq_platdata, %struct.uio_dmem_genirq_platdata* %69, i32 0, i32 3
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.uio_mem*, %struct.uio_mem** %6, align 8
  %74 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.uio_dmem_genirq_platdata*, %struct.uio_dmem_genirq_platdata** %5, align 8
  %77 = getelementptr inbounds %struct.uio_dmem_genirq_platdata, %struct.uio_dmem_genirq_platdata* %76, i32 0, i32 2
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.uio_mem*, %struct.uio_mem** %6, align 8
  %84 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dma_free_coherent(i32* %72, i32 %75, i64 %82, i32 %85)
  br label %87

87:                                               ; preds = %68, %59
  %88 = load i32, i32* @DMEM_MAP_ERROR, align 4
  %89 = load %struct.uio_mem*, %struct.uio_mem** %6, align 8
  %90 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  %93 = load %struct.uio_mem*, %struct.uio_mem** %6, align 8
  %94 = getelementptr inbounds %struct.uio_mem, %struct.uio_mem* %93, i32 1
  store %struct.uio_mem* %94, %struct.uio_mem** %6, align 8
  br label %36

95:                                               ; preds = %58, %51
  %96 = load %struct.uio_dmem_genirq_platdata*, %struct.uio_dmem_genirq_platdata** %5, align 8
  %97 = getelementptr inbounds %struct.uio_dmem_genirq_platdata, %struct.uio_dmem_genirq_platdata* %96, i32 0, i32 1
  %98 = call i32 @mutex_unlock(i32* %97)
  ret i32 0
}

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
