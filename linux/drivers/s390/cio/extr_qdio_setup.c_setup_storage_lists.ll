; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_setup.c_setup_storage_lists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_setup.c_setup_storage_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i64*, %struct.sl*, %struct.TYPE_5__, %struct.TYPE_4__*, i64 }
%struct.sl = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.qdio_irq = type { %struct.qdio_q**, %struct.qdio_q** }
%struct.qdio_buffer = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_q*, %struct.qdio_irq*, %struct.qdio_buffer**, i32)* @setup_storage_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_storage_lists(%struct.qdio_q* %0, %struct.qdio_irq* %1, %struct.qdio_buffer** %2, i32 %3) #0 {
  %5 = alloca %struct.qdio_q*, align 8
  %6 = alloca %struct.qdio_irq*, align 8
  %7 = alloca %struct.qdio_buffer**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qdio_q*, align 8
  %10 = alloca i32, align 4
  store %struct.qdio_q* %0, %struct.qdio_q** %5, align 8
  store %struct.qdio_irq* %1, %struct.qdio_irq** %6, align 8
  store %struct.qdio_buffer** %2, %struct.qdio_buffer*** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = call i32 @DBF_HEX(%struct.qdio_q** %5, i32 8)
  %12 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %13 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %12, i32 0, i32 3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = bitcast %struct.TYPE_4__* %14 to i8*
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = sdiv i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  %20 = bitcast i8* %19 to %struct.sl*
  %21 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %22 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %21, i32 0, i32 1
  store %struct.sl* %20, %struct.sl** %22, align 8
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %38, %4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load %struct.qdio_buffer**, %struct.qdio_buffer*** %7, align 8
  %29 = getelementptr inbounds %struct.qdio_buffer*, %struct.qdio_buffer** %28, i32 1
  store %struct.qdio_buffer** %29, %struct.qdio_buffer*** %7, align 8
  %30 = load %struct.qdio_buffer*, %struct.qdio_buffer** %28, align 8
  %31 = ptrtoint %struct.qdio_buffer* %30 to i64
  %32 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %33 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  store i64 %31, i64* %37, align 8
  br label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %23

41:                                               ; preds = %23
  %42 = load i32, i32* %8, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %77

44:                                               ; preds = %41
  %45 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %46 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %51 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %50, i32 0, i32 1
  %52 = load %struct.qdio_q**, %struct.qdio_q*** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.qdio_q*, %struct.qdio_q** %52, i64 %55
  %57 = load %struct.qdio_q*, %struct.qdio_q** %56, align 8
  br label %67

58:                                               ; preds = %44
  %59 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %60 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %59, i32 0, i32 0
  %61 = load %struct.qdio_q**, %struct.qdio_q*** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.qdio_q*, %struct.qdio_q** %61, i64 %64
  %66 = load %struct.qdio_q*, %struct.qdio_q** %65, align 8
  br label %67

67:                                               ; preds = %58, %49
  %68 = phi %struct.qdio_q* [ %57, %49 ], [ %66, %58 ]
  store %struct.qdio_q* %68, %struct.qdio_q** %9, align 8
  %69 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %70 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %69, i32 0, i32 3
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = ptrtoint %struct.TYPE_4__* %71 to i64
  %73 = load %struct.qdio_q*, %struct.qdio_q** %9, align 8
  %74 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %73, i32 0, i32 3
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i64 %72, i64* %76, align 8
  br label %77

77:                                               ; preds = %67, %41
  %78 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %79 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %78, i32 0, i32 1
  %80 = load %struct.sl*, %struct.sl** %79, align 8
  %81 = ptrtoint %struct.sl* %80 to i64
  %82 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %83 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %82, i32 0, i32 3
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i64 %81, i64* %85, align 8
  %86 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %87 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = ptrtoint i32* %90 to i64
  %92 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %93 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %92, i32 0, i32 3
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  store i64 %91, i64* %95, align 8
  store i32 0, i32* %10, align 4
  br label %96

96:                                               ; preds = %117, %77
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %120

100:                                              ; preds = %96
  %101 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %102 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %109 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %108, i32 0, i32 1
  %110 = load %struct.sl*, %struct.sl** %109, align 8
  %111 = getelementptr inbounds %struct.sl, %struct.sl* %110, i32 0, i32 0
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  store i64 %107, i64* %116, align 8
  br label %117

117:                                              ; preds = %100
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %10, align 4
  br label %96

120:                                              ; preds = %96
  ret void
}

declare dso_local i32 @DBF_HEX(%struct.qdio_q**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
