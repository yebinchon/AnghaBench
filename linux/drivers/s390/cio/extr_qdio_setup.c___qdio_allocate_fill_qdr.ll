; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_setup.c___qdio_allocate_fill_qdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_setup.c___qdio_allocate_fill_qdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_irq = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.qdio_q = type { %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { i32* }

@PAGE_DEFAULT_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_irq*, %struct.qdio_q**, i32, i32)* @__qdio_allocate_fill_qdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__qdio_allocate_fill_qdr(%struct.qdio_irq* %0, %struct.qdio_q** %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qdio_irq*, align 8
  %6 = alloca %struct.qdio_q**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qdio_irq* %0, %struct.qdio_irq** %5, align 8
  store %struct.qdio_q** %1, %struct.qdio_q*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.qdio_q**, %struct.qdio_q*** %6, align 8
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.qdio_q*, %struct.qdio_q** %9, i64 %11
  %13 = load %struct.qdio_q*, %struct.qdio_q** %12, align 8
  %14 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %17 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i64 %15, i64* %26, align 8
  %27 = load %struct.qdio_q**, %struct.qdio_q*** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.qdio_q*, %struct.qdio_q** %27, i64 %29
  %31 = load %struct.qdio_q*, %struct.qdio_q** %30, align 8
  %32 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %35 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i64 %33, i64* %44, align 8
  %45 = load %struct.qdio_q**, %struct.qdio_q*** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.qdio_q*, %struct.qdio_q** %45, i64 %47
  %49 = load %struct.qdio_q*, %struct.qdio_q** %48, align 8
  %50 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = ptrtoint i32* %53 to i64
  %55 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %56 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  store i64 %54, i64* %65, align 8
  %66 = load i32, i32* @PAGE_DEFAULT_KEY, align 4
  %67 = ashr i32 %66, 4
  %68 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %69 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  store i32 %67, i32* %78, align 8
  %79 = load i32, i32* @PAGE_DEFAULT_KEY, align 4
  %80 = ashr i32 %79, 4
  %81 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %82 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 4
  store i32 %80, i32* %91, align 4
  %92 = load i32, i32* @PAGE_DEFAULT_KEY, align 4
  %93 = ashr i32 %92, 4
  %94 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %95 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 5
  store i32 %93, i32* %104, align 8
  %105 = load i32, i32* @PAGE_DEFAULT_KEY, align 4
  %106 = ashr i32 %105, 4
  %107 = load %struct.qdio_irq*, %struct.qdio_irq** %5, align 8
  %108 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 6
  store i32 %106, i32* %117, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
