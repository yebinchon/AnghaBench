; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_initmem_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_initmem_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.esas2r_mem_desc = type { i32, i32*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*, %struct.esas2r_mem_desc*)* @esas2r_initmem_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_initmem_free(%struct.esas2r_adapter* %0, %struct.esas2r_mem_desc* %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca %struct.esas2r_mem_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store %struct.esas2r_mem_desc* %1, %struct.esas2r_mem_desc** %4, align 8
  %6 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %4, align 8
  %7 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %53

11:                                               ; preds = %2
  %12 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %4, align 8
  %13 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %11
  %17 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %4, align 8
  %18 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %4, align 8
  %21 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  %24 = ptrtoint i32* %19 to i64
  %25 = ptrtoint i32* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 4
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %5, align 4
  %29 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %4, align 8
  %34 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %4, align 8
  %37 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %4, align 8
  %40 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sub nsw i32 %41, %42
  %44 = call i32 @dma_free_coherent(i32* %32, i64 %35, i64 %38, i32 %43)
  br label %50

45:                                               ; preds = %11
  %46 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %4, align 8
  %47 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @kfree(i64 %48)
  br label %50

50:                                               ; preds = %45, %16
  %51 = load %struct.esas2r_mem_desc*, %struct.esas2r_mem_desc** %4, align 8
  %52 = getelementptr inbounds %struct.esas2r_mem_desc, %struct.esas2r_mem_desc* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %50, %10
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i64, i64, i32) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
